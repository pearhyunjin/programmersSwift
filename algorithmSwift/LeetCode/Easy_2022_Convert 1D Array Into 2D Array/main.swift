//
//  main.swift
//  algorithmSwift
//
//  Created by 배현진 on 6/23/24.
//

import Foundation

/* 입출력
 let original = [1,2,3,4]
 let m = 2
 let n = 2
 print(construct2DArray(original, m, n))
 */

func construct2DArray(_ original: [Int], _ m: Int, _ n: Int) -> [[Int]] {
    var result: [[Int]] = []
    var resultCol: [Int] = []

    // if original.count != m * n {
    //     return []
    // }
    guard original.count == m * n else { return [] }

    for i in 0 ... m-1 {
        for j in 0 ... n-1 {
            resultCol.append(original[j + (i * n)])
        }
        result.append(resultCol)
        resultCol = []
    }

    return result
}
