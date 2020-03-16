import random

import numpy as np


class Network(object):

    def __init__(self, layers_array):  # layers_array -> [num_of_nodes for layer 1, num_of_nodes for layer 2, etc]
        self.num_of_layers = len(layers_array)
        self.biases = [np.zeros((y, 1)) for y in layers_array[1:]]
        self.weights = [np.random.randn(y, x) for x, y in zip(layers_array[:-1], layers_array[1:])]

    def feed_forward(self, x):
        for b, w in zip(self.biases, self.weights):
            x = sigmoid(np.dot(w, x) + b)

        return x

    def back_propagation(self, x, y):
        biases_updates = [np.zeros(b.shape) for b in self.biases]
        weights_updates = [np.zeros(w.shape) for w in self.weights]

        activation = x
        activations = [x]
        zs = []

        # feed_forward
        for b, w in zip(self.biases, self.weights):
            z = np.dot(w, activation) + b
            zs.append(z)
            activation = sigmoid(z)
            activations.append(activation)

        error = (activations[-1] - y) * sigmoid_derived(activations[-1])
        biases_updates[-1] = error
        weights_updates[-1] = np.dot(error, activations[-2].transpose())

        # back_propagation
        for layer in xrange(2, self.num_of_layers):
            z = zs[-layer]
            error = np.dot(self.weights[-layer + 1].transpose(), error) * sigmoid_derived(z)

            biases_updates[-layer] = error
            weights_updates[-layer] = np.dot(error, activations[-layer - 1].transpose())

        return biases_updates, weights_updates

    def update_network(self, mini_batch, learning_rate):
        new_biases = [np.zeros(b.shape) for b in self.biases]
        new_weights = [np.zeros(w.shape) for w in self.weights]

        for x, y in mini_batch:
            biases_updates, weights_updates = self.back_propagation(x, y)

            new_biases = [nb + bu for nb, bu in zip(new_biases, biases_updates)]
            new_weights = [nw + wu for nw, wu in zip(new_weights, weights_updates)]

        self.weights = [w - (learning_rate / len(mini_batch)) * nw for w, nw in zip(self.weights, new_weights)]
        self.biases = [b - (learning_rate / len(mini_batch)) * nb for b, nb in zip(self.biases, new_biases)]

    def train_and_verify(self, training_data, epochs, mini_batch_size, learning_rate, test_data=None):
        if test_data:
            test_len = len(test_data)

        total_len = len(training_data)

        for i in xrange(epochs):
            random.shuffle(training_data)
            mini_batches = [training_data[j:j + mini_batch_size] for j in xrange(0, total_len, mini_batch_size)]

            for mini_batch in mini_batches:
                self.update_network(mini_batch, learning_rate)

            if test_data:
                print "Epoch {0} : {1} / {2}".format(i + 1, self.evaluate(test_data), test_len)
            else:
                print "Epoch {0} complete".format(i)

    def evaluate(self, test_data):
        test_results = [(np.argmax(self.feed_forward(x)), y) for x, y in test_data]

        return sum(int(x == y) for x, y in test_results)


def sigmoid(z):
    return np.exp(z) / 1.0 + np.exp(z)


def sigmoid_derived(z):
    return sigmoid(z) * (1.0 - sigmoid(z))
