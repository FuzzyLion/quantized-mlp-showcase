import serial
from matplotlib import pyplot as plt
import numpy
import os
import random
import re

class TestOnBoard:
    """
    A class to conduct image recognition tests on a device connected via a serial port.

    Attributes:
        ser (serial.Serial): Serial port object for communication.
        test_directory_path (str): Path to the directory containing test data.
        serial_port (str): Designation of the serial port to use for communication.
        baudrate (int): Baud rate for serial communication.
    """

    def __init__(self, test_directory_path='testdata', serial_port='/dev/ttyUSB0', baudrate=19200):
        """
        Initializes the test_on_board object with test data directory, serial port, and baud rate.

        Parameters:
            test_directory_path (str): Directory containing test data. Defaults to 'test_data'.
            serial_port (str): Serial port for communication. Defaults to '/dev/ttyUSB0'.
            baudrate (int): Baud rate for serial communication. Defaults to 230415.
        """
        self.ser = None
        self.test_directory_path = test_directory_path
        self.serial_port = serial_port
        self.baudrate = baudrate

    # Setter methods
    def set_test_directory_path(self, test_directory_path):
        """Sets the directory containing test data."""
        self.test_directory_path = test_directory_path

    def set_serial_port(self, serial_port):
        """Sets the serial port for communication."""
        self.serial_port = serial_port

    def set_baudrate(self, baudrate):
        """Sets the baud rate for serial communication."""
        self.baudrate = baudrate

    def open_serial_port(self):
        """Opens the serial port with the current settings."""
        self.ser = serial.Serial(self.serial_port, self.baudrate, timeout=0.5)
        print("Serial port opened: ", self.ser)

    def close_serial_port(self):
        """Closes the serial port."""
        self.ser.close()

    def open_random_file(self, num_files):
        """
        Selects a specified number of random files from the test directory.

        Parameters:
            num_files (int): Number of files to select.

        Returns:
            list: Paths to the selected files.
        """
        files = [f for f in os.listdir(self.test_directory_path) if os.path.isfile(os.path.join(self.test_directory_path, f))]
        random.shuffle(files)
        return [os.path.join(self.test_directory_path, f) for f in files][:num_files]

    def read_file_line_by_line(self, file_path):
        """
        Reads a file and converts each line from binary to integer.

        Parameters:
            file_path (str): Path to the file to be read.

        Returns:
            tuple: (byte_data, in_data) where byte_data is a list of bytes to send over serial,
                   and in_data is a list of integers representing the file's contents.
        """
        with open(file_path, 'r') as file:
            byte_data, in_data = [], []
            for line in file:
                byte_value = int(line.strip(), 2)
                in_data.append(byte_value)
                byte_data.append(byte_value.to_bytes(1, byteorder='big'))
            return byte_data, in_data

    def send_one_image(self, byte_data):
        """
        Sends one image's data byte by byte over the serial port.

        Parameters:
            byte_data (list): Byte data to send over the serial port.
        """
        for byte in byte_data:
            try:
                self.ser.write(byte)
            except Exception as e:
                print("Failed to send byte:", e)


    def single_test(self):
        """
        Conducts a single image recognition test by sending one image to the connected device
        and displaying the predicted result alongside the input image.

        This method automatically selects a random image from the test directory, sends its data
        over the serial port, receives the prediction, and displays both the input image and the
        prediction result.
        """
        file_path = self.open_random_file(1)[0]  # Get a single random file path
        byte_data, in_data = self.read_file_line_by_line(file_path)  # Read file data
        image = numpy.array(in_data).reshape((28, 28))  # Convert data to an image format

        plt.imshow(image, cmap='Greys')  # Display the image
        plt.suptitle("Input Image")
        plt.show()

        self.open_serial_port()  # Establish communication
        self.send_one_image(byte_data)  # Send the image data over serial

        receive_data = self.ser.readline()  # Receive prediction from the device
        receive = int.from_bytes(receive_data, byteorder='big')  # Decode the prediction
        print("Result:", receive)
        self.close_serial_port()  # Close the communication port

    def batch_test(self, num):
        """
        Conducts a batch test by sending multiple images to the connected device and calculating
        the accuracy based on the received predictions.

        Parameters:
            num (int): Number of images to test. The method will randomly select this many images
                       from the test directory.

        This method iterates over the selected images, sends each to the device, and compares the
        received prediction with the expected result extracted from the file name. It calculates
        and displays the accuracy of predictions after testing all selected images.
        """
        files = self.open_random_file(num)  # Select random files for testing
        self.open_serial_port()  # Open serial communication
        true_count = 0  # Initialize the count of correct predictions

        for k, file in enumerate(files):
            byte_data, in_data = self.read_file_line_by_line(file)  # Process file data
            print(f"test_{k}")

            self.send_one_image(byte_data)  # Send the image data
            receive_data = self.ser.readline()  # Receive the prediction
            receive = int.from_bytes(receive_data, byteorder='big')  # Decode the prediction

            # Extract the expected result from the file name using regular expressions
            target = re.search(r'target_(\d+)', file)
            target = int(target.group(1))

            # Compare the received prediction with the expected result
            if receive == target:
                true_count += 1  # Increment correct prediction count

            # Display the test result and current accuracy
            print("Result:", receive, "Target:", target, "Accuracy:", true_count / (k + 1))

        # Display the final accuracy after all tests
        print("Final accuracy:", true_count / len(files))
        self.close_serial_port()  # Close serial communication
