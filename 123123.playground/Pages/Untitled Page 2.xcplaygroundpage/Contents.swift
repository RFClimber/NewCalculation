//: [Previous](@previous)
// 계산기 만들기 LV_1
class Calculater {
    var value: Double = 0.0
    var num1: Double = 0.0
    var num2: Double = 0.0
    
    func add(_ num1: Double, _ num2: Double) -> Double {
        value = num1 + num2
        print("\(num1) + \(num2) = \(value)입니다.")
        return value
    }
    func minus(_ num1: Double, _ num2: Double) -> Double {
        value = num1 - num2
        print("\(num1) - \(num2) = \(value)입니다.")
        return value
    }
    func times(_ num1: Double, _ num2: Double) -> Double {
        value = num1 * num2
        print("\(num1) * \(num2) = \(value)입니다.")
        return value
    }
    func divide(_ num1: Double, _ num2: Double) -> Double {
        value = num1 / num2
        print("\(num1) / \(num2) = \(value)입니다.")
        return value
    }
}

let calculator = Calculater()

calculator.add(5, 2)
calculator.minus(5, 2)
calculator.times(5, 2)
calculator.divide(5, 2)



//: [Next](@next)
