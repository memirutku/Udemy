from sympy.strategies.core import switch

import calculatorPackage as calc

input = input("1. Toplama işlemi yapmak istiyorsan 1'e tıklayın \n2. Çıkarma işlemi yapmak istiyorsan 2'e tıklayın \n3. Çarpma işlemi yapmak istiyorsan 3'e tıklayın\n4. Bölme işlemi yapmak istiyorsan 4'e tıklayın" )


match ():

    case input = "1":
        calc.add(1)
    case input = "2":
        calc.minus(2)
    case input = "3":
        calc.multiply(3)
    case input = "4":
        calc.divide(3)