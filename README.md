# Handwritten-Digit-Recognition

Firstly, implemented the model of a convolutional neural network in Python (without using specific libraries such as Tensorflow) able to 
train and recognize handwritten digits described in images provided by the MNIST dataset. Secondly, designed and implemented the schema and the 
VHDL code for making the neural network described above to work on a Nexys4 DDR development board. 

Implemented a pyhton program capable to send desired images to the development board using UART methodology and another python program wich
takes images from the real world and tries to bring them as close as possible to the images from MNIST dataset such that the circuit on the
development board will clasify thme corectly.
