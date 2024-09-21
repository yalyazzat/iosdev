
var firstName: String = "Lyazzat"
var lastName: String = "Amanbayeva"
var age: Int = 20
let birthYear: Int = 2004
var birthMonth: String = "March"
var birthDay: Int = 4
var isStudent: Bool = true
var height: Double = 1.66

let currentYear: Int = 2024
age = currentYear - birthYear


var hobby: String = "reading books"
var numberOfHobbies: Int = 3
var favoriteNumber: Int = 7
var isHobbyCreative: Bool = true


var lifeStory: String = "My name is \(firstName) \(lastName). I am \(age) years old, born on \(birthDay) \(birthMonth) \(birthYear). I am currently a student. My height is \(height) meters. I enjoy \(hobby), which is a creative hobby: \(isHobbyCreative). I have \(numberOfHobbies) hobbies in total, and my favorite number is \(favoriteNumber)."


var futureGoals: String = "🌟 In the future, I want to become a successful software developer!"
lifeStory += " \(futureGoals)"


print(lifeStory)
