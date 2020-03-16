from uart_send import UARTSend
from img_from_txt import read_image as ri
import converter as cv


if __name__ == "__main__":
    img = []
    sender = UARTSend(9600)

    while True:
        command = raw_input("/> ")
        command_parameters = command.split(" ")
        command_name = command_parameters[0]

        if command_name == "exit":
            break
        elif command_name == "send":
            if command_parameters[1] == '-o':
                img = cv.convert_image(int(command_parameters[2]))
                sender.send(img)
            else:
                img = ri(int(command_parameters[1]))
                sender.send(img)
        elif command_name == "port":
            sender.port = str(command_parameters[1])
        else:
            print "Invalid command"
