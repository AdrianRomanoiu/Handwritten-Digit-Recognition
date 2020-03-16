def read_image(i):
    path = "Images/TestSetTxt/" + str(i) + ".txt"
    img = list()

    f = open(path, 'r')
    for i in range(28):
        line = f.readline()
        bits = line.split(" ")
        for j in range(28):
            img.append(int(bits[j]))

    f.close()

    return img
