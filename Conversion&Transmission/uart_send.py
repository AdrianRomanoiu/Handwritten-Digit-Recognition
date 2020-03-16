import struct
import serial


class UARTSend:
    def __init__(self, baud_rate):
        self.ser = serial.Serial()
        self.ser.baudrate = baud_rate
        self.ser.port = 'COM30'

    def __set__(self, instance, value):
        self.port = value

    def send(self, img_list):
        for i in range(0, 98):
            bits = []
            number = 0
            byte_array = bytearray()

            for j in range(0, 8):
                bits.append(img_list.pop(0))

            for j in range(7, -1, -1):
                number = (number << 1) + bits[j]

            byte_array.append(struct.pack("B", int(number)))
            self.ser.open()
            self.ser.write(byte_array)
            self.ser.close()
