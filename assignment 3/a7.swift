import Foundation

func calculateGrades(students: [String: Int]) {
    var totalScore = 0
    var highestScore = Int.min
    var lowestScore = Int.max
    
    for score in students.values {
        totalScore += score
        if score > highestScore {
            highestScore = score
        }
        if score < lowestScore {
            lowestScore = score
        }
    }
    
    let averageScore = Double(totalScore) / Double(students.count)
    
    print("\nAverage Score: \(averageScore)")
    print("Highest Score: \(highestScore)")
    print("Lowest Score: \(lowestScore)\n")
    
    for (student, score) in students {
        let status = score >= Int(averageScore) ? "above" : "below"
        print("\(student): \(score) - \(status) average")
    }
}

var studentScores: [String: Int] = [:]

while true {
    print("Enter student name (or type 'done' to finish): ", terminator: "")
    if let name = readLine(), name.lowercased() != "done" {
        print("Enter score for \(name): ", terminator: "")
        if let scoreInput = readLine(), let score = Int(scoreInput) {
            studentScores[name] = score
        } else {
            print("Invalid score. Please enter a valid integer.")
        }
    } else {
        break
    }
}

calculateGrades(students: studentScores)
