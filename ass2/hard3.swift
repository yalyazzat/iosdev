var grades = [
    "Alice": [85, 92, 78],
    "Bob": [90, 88, 76],
    "Charlie": [78, 85, 89]
]

grades["Bob"]?.updateValue(88, forKey: 1)
grades["Bob"]?.append(76)


let bobSecondGrade = grades["Bob"]?[1] ?? 0
print(bobSecondGrade)
