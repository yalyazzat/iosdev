import Foundation

func isPalindrome(_ text: String) -> Bool {
    let cleanedText = text.lowercased()
        .replacingOccurrences(of: "[^a-zA-Z0-9]", with: "", options: .regularExpression)
    
    let reversedText = String(cleanedText.reversed())
    
    return cleanedText == reversedText
}


let testString = "A man, a plan, a canal, Panama!"
if isPalindrome(testString) {
    print("'\(testString)' is a palindrome.")
} else {
    print("'\(testString)' is not a palindrome.")
}
