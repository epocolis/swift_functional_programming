//
//  main.swift
//  HackSwiftFunctionalProgramming
//
//  Created by Leotis buchanan on 2021-06-11.
//

import Foundation


struct Classroom {
    let scores:[Double]
    var normalize = false
    var credits  = 10


    mutating func chargeForCalculatingGrades(normalize:Bool = false) -> [String] {

        if chargeUser() {
            return calculateGrades(normalize: normalize)
        } else {
            return []
        }
    }

    mutating func chargeUser() -> Bool {
        guard credits >= 0 else {return false}
        credits -= 1
        return true
    }


    func calculateGrades(normalize:Bool = false) -> [String] {
        var result = [String]()

        if normalize {

            let highest = scores.max() ?? 100
            for score in scores {
                if score > highest - 5 {

                } else if score > highest - 15 {
                    result.append("B")
                } else if score > highest - 25 {
                    result.append("C")
                } else {
                    result.append("Fail")
                }
            }
        } else {
            for score in scores {
                if score > 95 {
                    result.append("A")
                } else if score > 80 {
                    result.append("B")
                } else if score > 70 {
                    result.append("C")
                } else {
                    result.append("Fail")
                }
            }
        }

        return result

    }

}

let classroom = Classroom(scores : [75,85,65,40])
print(classroom.calculateGrades(normalize: true))
