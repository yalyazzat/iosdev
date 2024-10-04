import Foundation


func hasUniqueCharacters(_ text: String) -> Bool {
    var characterSet: Set<Character> = []
    
    for character in text {
        if characterSet.contains(character) {
            return false
        }
        characterSet.insert(character)
    }
    
    return true
}


let testString1 = "Hello"
let testString2 = "World"
let testString3 = "Swift"

print("Does '\(testString1)' have all unique characters? \(hasUniqueCharacters(testString1))")
print("Does '\(testString2)' have all unique characters? \(hasUniqueCharacters(testString2))")
print("Does '\(testString3)' have all unique characters? \(hasUniqueCharacters(testString3))")
