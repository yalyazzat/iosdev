func fibonacci(_ n: Int) -> [Int] {
    guard n > 0 else { return [] }
    
    var sequence: [Int] = []
    
    for i in 0..<n {
        if i == 0 {
            sequence.append(0)
        } else if i == 1 {
            sequence.append(1)
        } else {
            let nextNumber = sequence[i - 1] + sequence[i - 2]
            sequence.append(nextNumber)
        }
    }
    
    return sequence
}

// Example usage
let n = 10
let fibonacciSequence = fibonacci(n)
print("The first \(n) numbers of the Fibonacci sequence: \(fibonacciSequence)")
