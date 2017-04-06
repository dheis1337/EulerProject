x = [1, 2]
y = [2]

while x[len(x) - 1] < 4000000:
    x.append((x[len(x) - 1] + x[len(x) - 2]))
    if (x[len(x) - 1] % 2 == 0):
        y.append(x[len(x) - 1])


sum(y)