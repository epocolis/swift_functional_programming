//////
//////  main.swift
//////  HackSwiftFunctionalProgramming
//////
//////  Created by Leotis buchanan on 2021-06-11.
////// Functions as first class types
//////
////
//import Foundation
////
////func meanAverage(_ numbers: [Double]) -> Double {
////    guard numbers.isEmpty == false else {return 0}
////
////    var total = 0.0
////    for number in numbers {
////        total += number
////
////    }
////
////    return total/Double(numbers.count)
////}
////
////let numbers:[Double] = [1,2,3,4,5]
////let mean1 = meanAverage(numbers)
////print(mean1)
////let copiedFunction:([Double]) -> Double = meanAverage
////let mean2 = copiedFunction(numbers)
////print(mean2)
////
////struct Classroom {
////    let teacher:String
////    let averageColors: ([Double]) -> Double
////}
////
//////you can pass in a predefine function
////let archer = Classroom(teacher:"Mr Archer", averageColors: meanAverage)
////
////// or you can pass in a inline closure, like this
////
////let figgis = Classroom(teacher: "Mr Figgis") {
////    numbers in
////    guard numbers.isEmpty == false else {return 0}
////
////    var total = 0.0
////    for number in numbers {
////        total += number
////
////    }
////
////    return total/Double(numbers.count)
////
////}
////
//////you can also set a struct member variable to
//////a function belonging to another struct like this
////
////struct User {
////    let name = "Taylor Swift"
////
////    func printGreeting(){
////        print("Hi, I'm \(name)!")
////    }
////}
////
////struct Employee {
////    //greet team takes a function
////    //that accepts no parameters and
////    //returns voids
////
////    let greetTeam: () -> Void
////}
////
////let taylor = User()
//////here is where we assign greetTeam to
//////taylor.printGreeting function
////let cheryl = Employee(greetTeam: taylor.printGreeting)
////
////cheryl.greetTeam()
////
////
////
////
////
//
////let not = (!)
////
////var loggedIn = false
////
////if not(loggedIn){
////    print("You are anonymous")
////}
////
////let add : (String,String) -> String = (+)
////print(add("1","5"))
////
////let names = ["Bobby", "Jonatho", "Antoni", "Karamo", "Tan"]
////// the greater > is a function, this can also be a custom design
//////free function, or it can be a closure
//////names.sorted{$0 > $1}
//let sortedNames = names.sorted(by: >)
////print(sortedNames)


let albums = ["Folklore", "Lover", "1989"]
let result1 = albums.allSatisfy{$0.contains("o")}
print(result1)

let message = "Taylor Swift's most popular albums include Folklore, Lover and 1989."
let result2 = message.contains("Lover")
print(result2)

let result3 = albums.allSatisfy(message.contains)
print(result3)

//closures are shared between the same function call
//so the code below all use the same copy counter

var counter = 0

let increment = {
    counter += 1
    print("Call count: \(counter)")
}

let copy = increment

increment()
increment()
copy()
increment()
