// 계산기 Lv4.
/*
 1. 클래스의 상속
 2. 클래스의 단일 책임 원칙
 */

// 연산자의 종류가 한정적(4개) 이기 때문에, 열거형으로 Operators 타입 생성
enum Operators {
    case add
    case substract
    case multiplys
    case divide
}

// 계산을 위한 기본 클래스 생성
class Calculator {
    func operate(_ num1: Double, _ num2: Double) -> Double {
        return 0.0 // 자식 클래스(각 연산 클래스)에서 오버라이드를 할 것이기 때문에 바로 리턴
    }
}

// 더하기 연산
class Add: Calculator {
    override func operate(_ num1: Double, _ num2: Double) -> Double {
        return num1 + num2
    }
}

// 빼기 연산
class Substract: Calculator {
    override func operate(_ num1: Double, _ num2: Double) -> Double {
        return num1 - num2
    }
}

// 곱하기 연산
class Multiply: Calculator {
    override func operate(_ num1: Double, _ num2: Double) -> Double {
        return num1 * num2
    }
}

// 나누기 연산
class Divide: Calculator {
    override func operate(_ num1: Double, _ num2: Double) -> Double {
        guard num2 != 0 else {
            print("0으로는 나눌 수 없습니다")
            return 0.0 // 0으로는 나눌 수 없기 때문에 가드문을 통해 예외처리
        }
        return num1 / num2
    }
}

//  연산을 수행하는 클래스
class AbstractOperation {
    func abstractOperation(_ operators: Operators, _ num1: Double, _ num2: Double) -> Double {
        let calculator: Calculator // 이 변수는 Calculator 클래스 또는 이를 상속받은 클래스의 인스턴스를 참조할 수 있다.
        
        // 연산자에 따라 알맞은 연산을 참조
        switch operators {
        case .add :
            calculator = Add()
        case .substract :
            calculator = Substract()
        case .multiplys :
            calculator = Multiply()
        case .divide :
            calculator = Divide()
        }
        return calculator.operate(num1, num2) // 연산 진행
    }
}

let perform = AbstractOperation() // 연산을 위한 객체 생성

print("AddResult: \(perform.abstractOperation(.add, 85, 64))")
print("SubstractResult: \(perform.abstractOperation(.substract, 85, 64))")
print("MultiplyResult: \(perform.abstractOperation(.multiplys, 85, 64))")
print("DivideResult: \(perform.abstractOperation(.divide, 85, 64))")
