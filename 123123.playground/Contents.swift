class Calculator {
    //속성
    var num1: Double
    var num2: Double
    
    init(num1: Double, num2: Double) {
        self.num1 = num1
        self.num2 = num2
    }
    
    // 메서드 + - * /
    func plus() -> Double {
        let result: Double = num1 + num2
        print("\(num1) + \(num2) = \(result) ")
        return result
    }
    func minus() -> Double {
        let result: Double = num1 - num2
        print("\(num1) - \(num2) = \(result) ")
        return result
    }
    func times() -> Double {
        let result: Double = num1 * num2
        print("\(num1) * \(num2) = \(result) ")
        return result
    }
    func divide() -> Double {
        let result: Double = num1 / num2
        print("\(num1) / \(num2) = \(result) ")
        return result
    }
}

let 계산기1 = Calculator(num1: 31, num2: 24)
계산기1.num1 = 72

계산기1.plus()
계산기1.minus()
계산기1.times()
계산기1.divide()
