import sys
from test_on_board import TestOnBoard
# run"python3 -m serial.tools.list_ports" to get port
# test1 batch test
test = TestOnBoard(serial_port=sys.argv[1])
test.batch_test(30)

"""
# test2 single test
test = test_on_board(serial_port='/dev/ttyUSB1')
test.single_test()
"""
