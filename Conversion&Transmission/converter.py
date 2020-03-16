import cv2 as cv
import numpy as np
import math
from scipy.ndimage import center_of_mass

images = np.zeros((1, 784))


def get_best_shift(img):
    cy, cx = center_of_mass(img)

    row, col = img.shape
    shift_x = np.round(col / 2.0 - cx).astype(int)
    shift_y = np.round(row / 2.0 - cy).astype(int)

    return shift_x, shift_y


def shift(img, sx, sy):
    row, col = img.shape
    matrix = np.float32([[1, 0, sx], [0, 1, sy]])
    shifted = cv.warpAffine(img, matrix, (col, row))

    return shifted


def convert_image(i):
    gray = cv.imread('./Images/Own/' + str(i) + '.png', cv.IMREAD_GRAYSCALE)
    gray = cv.resize(255 - gray, (28, 28))
    (thresh, gray) = cv.threshold(gray, 128, 255, cv.THRESH_BINARY | cv.THRESH_OTSU)

    flatten = gray.flatten() / 255.0

    while np.sum(gray[0]) == 0:
        gray = gray[1:]

    while np.sum(gray[:, 0]) == 0:
        gray = np.delete(gray, 0, 1)

    while np.sum(gray[-1]) == 0:
        gray = gray[:-1]

    while np.sum(gray[:, -1]) == 0:
        gray = np.delete(gray, -1, 1)

    rows, cols = gray.shape

    if rows > cols:
        factor = 20.0 / rows
        rows = 20
        cols = int(round(cols * factor))
        gray = cv.resize(gray, (cols, rows))
    else:
        factor = 20.0 / cols
        cols = 20
        rows = int(round(rows * factor))
        gray = cv.resize(gray, (cols, rows))

    cols_padding = (int(math.ceil((28 - cols) / 2.0))), (int(math.floor((28 - cols) / 2.0)))
    rows_padding = (int(math.ceil((28 - rows) / 2.0))), (int(math.floor((28 - rows) / 2.0)))
    gray = np.lib.pad(gray, (rows_padding, cols_padding), 'constant')
    shift_x, shift_y = get_best_shift(gray)
    shifted = shift(gray, shift_x, shift_y)
    gray = shifted

    cv.imwrite('./Images/Own/Converted/' + str(i) + '.png', gray)

    gray_list = gray.flatten().tolist()
    to_ret = [int(bool(x)) for x in gray_list]

    return to_ret
