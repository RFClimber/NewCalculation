//: [Previous](@previous)
class Calculator {
    var result: Double = 0
    
    func calculration(_ operators: String, _ num1: Double, _ num2: Double) -> Double {
        
        
        switch operators {
        case "+" :
            result = num1 + num2
            print("\(num1) + \(num2) = \(result)")
            return result
        case "-" :
            result = num1 - num2
            print("\(num1) - \(num2) = \(result)")
            return result
        case "*" :
            result = num1 * num2
            print("\(num1) * \(num2) = \(result)")
            return result
        case "/" :
            guard num2 != 0 else {
                print("0으로 나눌 수 없습니다")
                return 0.0
            }
            result = num1 / num2
            print("\(num1) / \(num2) = \(result)")
            return result
        case "%" :
            guard num2 != 0 else {
                print("0으로 나눌 수 없습니다")
                return 0.0
            }
            result = Double(Int(num1) % Int(num2))
            print("\(num1) % \(num2) = \(result)")
            return result
        default :
            print("연산이 불가능한 연산자입니다")
            return 0.0
        }
    }
}

let calculator = Calculator()

calculator.calculration("+", 453, 87)
calculator.calculration("-", 453, 87)
calculator.calculration("*", 453, 87)
calculator.calculration("/", 453, 87)
calculator.calculration("%", 453, 87)
calculator.calculration("/", 453, 0)
calculator.calculration("%", 453, 0)
calculator.calculration("=-", 453, 546)
//: [Next](@next)
