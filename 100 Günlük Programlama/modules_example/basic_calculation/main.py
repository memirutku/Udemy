from sympy.strategies.core import switch

import calculatorPackage as calc

input = input("1. Toplama işlemi yapmak istiyorsan 1'e tıklayın \n2. Çıkarma işlemi yapmak istiyorsan 2'e tıklayın \n3. Çarpma işlemi yapmak istiyorsan 3'e tıklayın\n4. Bölme işlemi yapmak istiyorsan 4'e tıklayın" )

def islem(input):
    match input:
        case "1":
            return calc.add(1,2)
        case "2":
            return calc.minus(2,3)
        case "3":
            return calc.multiply(3,4)
        case "4":
            return calc.divide(3,6)