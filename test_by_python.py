import math

def calculate(x, precision=0.0005):
    current_result = 1.0
    current_value = 1.0
    k = 1

    while True:
        current_value *= x
        current_result += current_value
        if abs(current_value) < precision and abs(current_value)/(1-x) < precision:
            break
    return current_result

x = float(input("Значение x: "))
if x <= -1 or x >= 1:
    print("error")
else:
    precision = 0.0005
    result = calculate(x, precision)
    print(f"1/(1 - {x}) ≈ {result}")
