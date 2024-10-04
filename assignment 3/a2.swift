func isPrime(_ n: Int) -> Bool {
    if n < 2 {
        return false
    }
    for i in 2..<n {
        if n % i == 0 {
            return false
        }
    }
    return true
}

for n in 1...100 {
    if isPrime(n) {
        print(n)
    }
}
