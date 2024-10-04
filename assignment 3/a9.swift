import Foundation

func add(_ a: Double, _ b: Double) -> Double {
    return a + b
}

func subtract(_ a: Double, _ b: Double) -> Double {
    return a - b
}

func multiply(_ a: Double, _ b: Double) -> Double {
    return a * b
}

func divide(_ a: Double, _ b: Double) -> Double? {
    return b != 0 ? a / b : nil
}

while true {
    print("Enter the first number: ", terminator: "")
    guard let firstInput = readLine(), let firstNumber = Double(firstInput) else {
        print("Invalid input. Please enter a valid number.")
        continue
    }

    print("Enter the second number: ", terminator: "")
    guard let secondInput = readLine(), let secondNumber = Double(secondInput) else {
        print("Invalid input. Please enter a valid number.")
        continue
    }

    print("Choose an operation (+, -, *, /): ", terminator: "")
    guard let operation = readLine() else {
        print("Invalid operation.")
        continue
    }

    var result: Double?
    
    switch operation {
    case "+":
        result = add(firstNumber, secondNumber)
    case "-":
        result = subtract(firstNumber, secondNumber)
    case "*":
        result = multiply(firstNumber, secondNumber)
    case "/":
        result = divide(firstNumber, secondNumber)
        if result == nil {
            print("Error: Division by zero is not allowed.")
            continue
        }
    default:
        print("Invalid operation.")
        continue
    }

    if let result = result {
        print("Result: \(result)")
    }

    print("Do you want to perform another calculation? (yes/no): ", terminator: "")
    if let response = readLine(), response.lowercased() != "yes" {
        break
    }
}
