import Foundation

// MARK: - Constants

typealias Value = Int
typealias Input = [Value]

// MARK: - Implementation

func search(in input: Input, target: Value) -> Int {
    var lower: Int = 0
    var upper: Int = input.count - 1
    
    while lower <= upper {
        let middleIndex: Int = (lower + upper) / 2
        let middleValue: Int = input[middleIndex]
               
        if target == middleValue {
            return middleIndex
        } else if target < middleValue {
            upper -= 1
        } else {
            lower += 1
        }
    }
    
    return NSNotFound
}

// MARK: - Input

let input: Input = [1, 2, 4, 3, 5, 7, 10, 8, 9]
let target: Value = 5

// MARK: - Output

let index: Int = search(in: input.sorted(by: <), target: target)
