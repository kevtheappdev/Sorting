//
//  InsertionSort.swift
//  
//
//  Created by Kevin Turner on 5/15/20.
//

import Foundation


func insertionSort<T: Comparable>(_ arr: inout [T]) {
    var key: T
    var j: Int
    for i in 1..<arr.count {
        key = arr[i]
        j = i - 1
        
        while j >= 0 && arr[j] > key { // shift elements forward as long as key is greater than any previous element
            arr[j+1] = arr[j]
            j -= 1
        }
        arr[j + 1] = key // insert key
    }
}
