//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let allowedEntry = false

if !allowedEntry {

    print("Acess Denied")
}

let enteredDorCode = true
let passRetinaScan = false
let iAmTomCruse = false

if enteredDorCode && passRetinaScan || iAmTomCruse{

    print("Welcome")
} else {
    print("Getout away")
}

let hasDoorKey = true
let knowsOverridePassword = false

if hasDoorKey || knowsOverridePassword {
    print("Welcome")
    
} else {
    print("get out")
}

