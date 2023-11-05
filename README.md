• Прозорский Михаил Алексеевич

• БПИ224

• 11 вариант

• Разработать программу, вычисляющую с помощью степенного ряда с точностью не хуже 0,05% значение функции 1/(1-x) для заданного параметра x.

• Тестовая программа находится в папке "test", а основная в папке "main"

• Для решения использовал http://mathprofi.ru/razlozhenie_funkcij_v_stepennye_ryady.html и ![](image.png)

• Из разложения функции 1/(1+x) я вывел разложение для 1/(1-x):

![](telegram-cloud-photo-size-2-5350327875905115534-y.jpg)

• Далее, так как мой ряд знакопостоянный, мне потребовалось найти условия прекращения цикла в зависимости от точности:

![](telegram-cloud-photo-size-2-5350327875905115536-y.jpg)

• Второе условие - если полученная сумма меньше точности

• Алгоритм:

1. Инициализируем переменные: текущий результат current_result и текущий член ряда current_value устанавливаются в 1.
2. Далее, мы используем цикл, который выполняется до тех пор, пока текущий член ряда current_value не станет меньше заданной точности precision и не выполнится описанное выше второе условие.
3. На каждом шаге цикла мы увеличиваем переменную current_value, домножая её на x. После чего увеличиваем на неё значение переменной current_result.
4. После завершения цикла, у нас есть приближенное значение функции 1/(1-x) с заданной точностью.

• Результат тестовой программы:

![](2.png)

![](3.png)

• Результат тестов основной программы:

![](4.png)

![](5.png)

![](6.png)

![](8.png)

![](7.png)

![](9.png)

• Тесты аналогичной программы на языке Python (находится в файле "test_by_python.py")

![](1.png)

![](10.png)
