//
//  File.swift
//  
//
//  Created by Kevin Turner on 5/15/20.
//

import Foundation

func selectionSort<T: Comparable>(_ arr: inout [T]) {
    
    // outer loop moves boundary of sorted arry
    for i in 0..<arr.count - 1 {
        var min_idx = i; // index of minimum element in unsorted array
        for j in (i+1)..<arr.count {
            if arr[j] < arr[min_idx] {
                min_idx = j
            }
        }
        
        // swap the min element with the first element
        let temp = arr[min_idx]
        arr[min_idx] = arr[i]
        arr[i] = temp
    }
    
}
