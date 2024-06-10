//: [Previous](@previous)

class Calculator {
    func calculate(_ operators: String, _ num1: Double, _ num2: Double) -> Double {
        switch operators {
        case "+" :
            return AddOperation().operate(num1, num2)
        case "-" :
            return SubtractOperation().operate(num1, num2)
        case "*" :
            return MultiplyOperation().operate(num1, num2)
        case "/" :
            guard num2 != 0 else {
                print("0으로 나눌 수 없습니다")
                return 0.0
            }
            return DivideOperation().operate(num1, num2)
        default :
            print("연산이 불가능한 연산자입니다")
            return 0.0
        }
    }
}

class AddOperation: Calculator {
    func operate(_ num1: Double, _ num2: Double) -> Double {
        return num1 + num2
    }
}

class SubtractOperation: Calculator {
    func operate(_ num1: Double, _ num2: Double) -> Double {
        return num1 - num2
    }
}

class MultiplyOperation: Calculator {
    func operate(_ num1: Double, _ num2: Double) -> Double {
        return num1 * num2
    }
}

class DivideOperation: Calculator {
    func operate(_ num1: Double, _ num2: Double) -> Double {
        return num1 / num2
    }
}


let calculator = Calculator()
let add = calculator.calculate("+", 545, 89)
let substract = calculator.calculate("-", 545, 89)
let multiply = calculator.calculate("*", 545, 89)
let divide = calculator.calculate("/", 545, 89)
let divide2 = calculator.calculate("/", 545, 0)
let wrong = calculator.calculate("12", 545, 89)

print("더하기 연산 값은 \(add)입니다")
print("뺴기 연산 값은 \(substract)입니다")
print("곱하기 연산 값은 \(multiply)입니다")
print("나누기 연산 값은 \(divide)입니다")


//: [Next](@next)


