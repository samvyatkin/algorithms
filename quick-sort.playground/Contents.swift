import Foundation

// MARK: - Implementation

func sort<Item>(array: [Item]) -> [Item] where Item: Comparable {
    guard array.count > 1 else {
        return array
    }
    
    let pivot: Item = array[array.count / 2]
    let less: [Item] = array.filter { $0 < pivot }
    let equal: [Item] = array.filter { $0 == pivot }
    let greater: [Item] = array.filter { $0 > pivot }
    
    return sort(array: less) + equal + sort(array: greater)
}

// MARK: - Input

let input: [Int] = [1, 2, 4, 3, 5, 7, 10, 8, 9]

// MARK: - Output

let output: [Int] = sort(array: input)
