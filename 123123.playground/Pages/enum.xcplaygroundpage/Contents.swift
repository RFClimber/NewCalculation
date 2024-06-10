//: [Previous](@previous)
class Calculater {
    var result: Double = 0
    
    enum Operators: String {
        case plus = "+"
        case minus = "-"
        case times = "*"
        case divide = "/"
        case remainder = "%"
    }
    
    func calculration(_ operators: Operators, _ num1: Double, _ num2: Double) -> Double {
        
        
        switch operators {
        case .plus :
            result = num1 + num2
            print("\(num1) + \(num2) = \(result)")
            return result
        case .minus :
            result = num1 - num2
            print("\(num1) - \(num2) = \(result)")
            return result
        case .times :
            result = num1 * num2
            print("\(num1) * \(num2) = \(result)")
            return result
        case .divide :
            result = num1 / num2
            print("\(num1) / \(num2) = \(result)")
            return result
        case .remainder :
            result = Double(Int(num1) % Int(num2))
            print("\(num1) % \(num2) = \(result)")
            return result
        }
    }
}

let calculator = Calculater()

calculator.calculration(.plus, 453, 87)
calculator.calculration(.minus, 453, 87)
calculator.calculration(.times, 453, 87)
calculator.calculration(.divide, 453, 87)
calculator.calculration(.remainder, 453, 87)
//: [Next](@next)
