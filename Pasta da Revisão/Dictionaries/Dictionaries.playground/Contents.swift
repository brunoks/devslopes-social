//: Playground - noun: a place where people can play


var str = "Hello, playground"

var namesOfIntegers = [Int: String]()
namesOfIntegers[3] = "three"
namesOfIntegers[44] = "forty four"

var someInts = [Int: String]()
someInts[44] = "Bruno Lindo"
print("someInts is of type [Int] with \(someInts.count) items.")


var airpot: [String: String] = ["YYZ": "Toronto Pearson", "LAX": "Los Angeles International"]

print("The airports dictionarieshas: \(airpot.count) items")

if airpot.isEmpty {
    print("The airport is empty!!!")
} else {
    print("The airport is not empty. Hes have a \(airpot.count) items")
}

airpot["LHR"] = "London"
airpot["LHR"] = "HeathRow"
airpot["DEV"] = "Devslopes International"


for (airportCode, airportName) in airpot {
    print("\(airportCode): \(airportName)")
}

for key in airpot.keys {
    print("Key: \(key)")
}

for val in airpot.values {
    print("Value: \(val)")
}

var abilities: [String: Int]
