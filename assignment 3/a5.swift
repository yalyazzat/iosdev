import Foundation

func countWordFrequencies(from sentence: String) -> [String: Int] {
    let cleanedSentence = sentence.lowercased()
        .replacingOccurrences(of: "[^a-zA-Z0-9\\s]", with: "", options: .regularExpression)
    
    let words = cleanedSentence.split(separator: " ")
    
    var frequencyDict: [String: Int] = [:]
    
    for word in words {
        let wordString = String(word)
        frequencyDict[wordString, default: 0] += 1
    }
    
    return frequencyDict
}

print("Enter a sentence: ", terminator: "")
if let input = readLine() {
    let wordFrequencies = countWordFrequencies(from: input)
    
    print("Word Frequencies:")
    for (word, count) in wordFrequencies {
        print("\(word): \(count)")
    }
} else {
    print("Invalid input.")
}
