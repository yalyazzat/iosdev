import Foundation

func convertFromCelsius(_ celsius: Double) {
    let fahrenheit = (celsius * 9/5) + 32
    let kelvin = celsius + 273.15
    print("Temperature in Fahrenheit: \(fahrenheit)°F")
    print("Temperature in Kelvin: \(kelvin)K")
}

func convertFromFahrenheit(_ fahrenheit: Double) {
    let celsius = (fahrenheit - 32) * 5/9
    let kelvin = celsius + 273.15
    print("Temperature in Celsius: \(celsius)°C")
    print("Temperature in Kelvin: \(kelvin)K")
}

func convertFromKelvin(_ kelvin: Double) {
    let celsius = kelvin - 273.15
    let fahrenheit = (celsius * 9/5) + 32
    print("Temperature in Celsius: \(celsius)°C")
    print("Temperature in Fahrenheit: \(fahrenheit)°F")
}

print("Enter temperature value: ", terminator: "")
if let tempInput = readLine(), let temperature = Double(tempInput) {
    print("Enter the unit of the temperature (C for Celsius, F for Fahrenheit, K for Kelvin): ", terminator: "")
    if let unit = readLine() {
        switch unit.uppercased() {
        case "C":
            convertFromCelsius(temperature)
        case "F":
            convertFromFahrenheit(temperature)
        case "K":
            convertFromKelvin(temperature)
        default:
            print("Invalid unit entered.")
        }
    } else {
        print("Invalid input.")
    }
} else {
    print("Invalid temperature value entered.")
}
