
func getRandomNumber() -> some Equatable {
    Int.random(in: 1...6)
}

func getRandomBool() -> some Equatable {
    Bool.random()
}

let rand_1 = getRandomNumber()
let rand_2 = getRandomNumber()

if( rand_1 == rand_2) {
    print("\(rand_1) and \(rand_2) ARE the same!")
} else {
    print("\(rand_1) and \(rand_2) are NOT the same!")
}

let rand_3 = getRandomBool()
let rand_4 = getRandomBool()

if( rand_3 == rand_4) {
    print("\(rand_3) and \(rand_4) ARE the same!")
} else {
    print("\(rand_3) and \(rand_4) are NOT the same!")
}

// The following does not compile:
//
//  It generates the error message:
//      Cannot convert value of type 'some Equatable' (result of 'getRandomBool()') to expected argument type 'some Equatable' (result of 'getRandomNumber()')
//  It shows the the compiler can see that rand_1 is an Int and rand_3 is a bool, which can't be compared to each other
//
// if( rand_1 == rand_3) print("I compared the incomparable!")
//
