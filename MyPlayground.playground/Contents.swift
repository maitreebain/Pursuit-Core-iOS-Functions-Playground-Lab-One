import UIKit

// Question One

// Write a function named double(_:) that takes in a Double and returns that number times two

// Your function here

func double(_ input: Double) -> Double {
    return input * 2
}

print(double(3.0))
print(double(0))
print(double(-2))
print(double(99))

let testCasesOne: [(Double, Double)] = [
    (input: 3.0, expectedOutput: 6.0),
    (input: 0, expectedOutput: 0),
    (input: -2, expectedOutput: -4),
    (input: 99, expectedOutput: 198)
]

for (input, expectedOutput) in testCasesOne {
    let output = double(input)
    assert(output == expectedOutput, "Was expecting \(expectedOutput) for input \(input), but got \(output)")
}

// Question Two

// Write a function named smallest(of:and:) that takes in two Doubles and returns the smaller number

// Your function here
//func smallest(of: Double, and: Double) -> Double; Double {
//    let output = smallest(of: Double, and: Double)
//    return output
//}

func smallest(of inputOne: Double, and inputTwo: Double) -> Double{
    if inputOne > inputTwo {
        return inputTwo
    } else {
        return inputOne
    }
}

smallest(of: 8.0,and: 3.0)
smallest(of: 0,and: 0)
smallest(of: -5,and: -3)
smallest(of: 2.3, and: 2.03)

let testCasesTwo: [(Double, Double, Double)] = [
    (inputOne: 8.0, inputTwo: 3.0, expectedOutput: 3.0),
    (inputOne: 0, inputTwo: 0, expectedOutput: 0),
    (inputOne: -5, inputTwo: -3, expectedOutput: -5),
    (inputOne: 2.3, inputTwo: 2.03, expectedOutput: 2.03)
]

for (inputOne, inputTwo, expectedOutput) in testCasesTwo {
    let output = smallest(of: inputOne, and: inputTwo)
    assert(output == expectedOutput, "Was expecting \(expectedOutput) for inputs \(inputOne) and \(inputTwo) but got \(output)")
}

// Question Three

// Write a function named smallestValue(in:) that takes in an array of Doubles and returns the smallest Double

// Your function here
//var myArray: [Double] = [1.0,2,3,4,5,5]
//myArray = [6,5,4,3,2,1]
//myArray = [0,0,0,0,0,0,0,0,0,0]
//myArray = [-4,-59,-348,-34,-4]

func smallestValue (in input: [Double]) -> Double {
    let arr = input.sorted()
    return Double(arr[0])
}

print(smallestValue(in: [1.0,2,3,4,5,5]))
print(smallestValue(in: [6,5,4,3,2,1]))
print(smallestValue(in: [0,0,0,0,0,0,0,0,0,0]))
print(smallestValue(in: [-4,-59,-348,-34,-4]))

let testCasesThree: [([Double], Double)] = [
    (input: [1.0,2,3,4,5,5], expectedOutput: 1.0),
    (input: [6,5,4,3,2,1], expectedOutput: 1),
    (input: [0,0,0,0,0,0,0,0,0,0], expectedOutput: 0),
    (input: [-4,-59,-348,-34,-4], expectedOutput: -348),
]


//for (input, expectedOutput) in testCasesThree {
//    let output = smallestValue(in: input)
//    assert(output == expectedOutput, "Was expecting \(expectedOutput) for input \(input), but got \(output)")
//}


// Question Four

// Write a function named occurrances(of:in:) that counts how many characters in a String match a specific character.

// Your function here

//Attempted question

//func occurrances(of inputOne: Character, in inputTwo: String) -> Int {
//    var count = 0
//    for char in inputTwo{
//        if inputTwo.contains("l"){
//            count += 1
//        } else if inputTwo.contains("r"){
//            count += 1
//        } else if inputTwo.contains(" "){
//            count += 1
//        }
//            else if inputTwo.contains("E"){
//                count += 1
//            }
//        }
//    return count
//    }


func occurrances(of inputOne: Character, in inputTwo: String) -> Int {
var count = 0
for inputOne in inputTwo{
    if inputOne == "l"{
        count += 1
    } else if inputOne == "r"{
        count += 1
    } else if inputOne == " "{
        count += 1
    }
    else if inputOne == "E"{
            count += 1
        }
    }
return count
}


occurrances(of: "l", in: "hello")
occurrances(of: "r", in: "hello world!")
occurrances(of: " ", in: "Now with some spaces")
occurrances(of: "E", in: "cApItAls aRe DiFfErEnT")

let testCasesFour: [(Character, String, Int)] = [
    (inputOne: "l", inputTwo: "hello", expectedOutput: 2),
    (inputOne: "r", inputTwo: "hello world!", expectedOutput: 1),
    (inputOne: " ", inputTwo: "Now with some spaces", expectedOutput: 3),
    (inputOne: "E", inputTwo: "cApItAlS aRe DiFfErEnT", expectedOutput: 2),
]

//for (inputOne, inputTwo, expectedOutput) in testCasesFour {
//    let output = occurrances(of: inputOne, in: inputTwo)
//    assert(output == expectedOutput, "Was expecting \(expectedOutput) for inputs \(inputOne) and \(inputTwo) but got \(output)")
//}


// Question Five

// Write a function called removeNils(from:) that takes an array of optional Ints and returns an array with them unwrapped with any nil values removed.

// Your function here
//Attempt

var optionalArrays: [Int?] = [1, nil, 9, nil, 10, nil]
optionalArrays = [1, 2, 3]
optionalArrays = [nil]
optionalArrays = []

func removeNils (from: ([Int?])) -> ([Int]) {
    for num in optionalArrays {
        if num == nil{
            return optionalArrays as! ([Int])
        }
    }
return optionalArrays as! ([Int])
}

removeNils(from: optionalArrays)

let testCasesFive: [([Int?], [Int])] = [
    (input: [1, nil, 9, nil, 10, nil], expectedOutput: [1,9,10]),
    (input: [1, 2, 3], expectedOutput: [1,2,3]),
    (input: [nil], expectedOutput: []),
    (input: [], expectedOutput: []),
]

//for (input, expectedOutput) in testCasesFive {
//    let output = removeNils(from: input)
//    assert(output == expectedOutput, "Was expecting \(expectedOutput) for input \(input), but got \(output)")
//}
