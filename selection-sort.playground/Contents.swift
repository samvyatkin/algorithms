import Foundation

// MARK: - Implementation

func sort<Item>(array: inout [Item]) -> [Item] where Item: Comparable {
    var newArray: [Item] = []
    
    for _ in 0 ..< array.count {
        let smallestIndex: Int = findSmallestIndex(in: array)
        newArray.append(array.remove(at: smallestIndex))
    }
    
    return newArray
}

func findSmallestIndex<Item>(in array: [Item]) -> Int where Item: Comparable {
    guard !array.isEmpty else {
        return NSNotFound
    }
    
    var smallestIndex: Int = 0
    var smallestValue: Item = array[smallestIndex]
    
    for index in 1 ..< array.count {
        guard array[index] < smallestValue else {
            continue
        }
        
        smallestIndex = index
        smallestValue = array[smallestIndex]
    }
    
    return smallestIndex
}

// MARK: - Input

var input: [Int] = [1, 2, 4, 3, 5, 7, 10, 8, 9]

// MARK: - Output

let output: [Int] = sort(array: &input)
