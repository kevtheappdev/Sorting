//
//  File.swift
//  
//
//  Created by Kevin Turner on 4/28/20.
//

import Foundation


func mergeSort<T: Comparable>(_ arr: inout [T]) {
    mergeSortHelp(&arr, l: 0, r: arr.count - 1)
}

private func mergeSortHelp<T: Comparable>(_ arr: inout [T], l: Int, r: Int)  {
    if r > l {
        let m = (l + r) / 2
        mergeSortHelp(&arr, l: l, r: m)
        mergeSortHelp(&arr, l: m + 1, r: r)
        merge(&arr, l: l, m: m, r: r)
    }
}


func merge<T: Comparable>(_ arr: inout [T], l: Int, m: Int, r: Int) {
    let left = Array(arr[l...m])
    let right = Array(arr[m+1...r])
    
    var lIndex = 0
    var rIndex = 0
    var k = l
    while lIndex < left.count && rIndex < right.count {
        if left[lIndex] < right[rIndex] {
            arr[k] = left[lIndex]
            lIndex += 1
        } else {
            arr[k] = right[rIndex]
            rIndex += 1
        }
        k += 1
    }
    
    while lIndex < left.count {
        arr[k] = left[lIndex]
        lIndex += 1
        k += 1
    }
    
    while rIndex < right.count {
        arr[k] = right[rIndex]
        rIndex += 1
        k += 1
    }
    
}
