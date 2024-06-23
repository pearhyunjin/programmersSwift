//
//  main.swift
//  algorithmSwift
//
//  Created by 배현진 on 6/23/24.
//

import Foundation

let nums: [Int] = [13,25,83,77]

func separateDigits(_ nums: [Int]) -> [Int] {
    var result: [Int] = []

    for i in 0 ..< nums.count {
        var n = nums[i]
        var temp = [Int]()

        while (n != 0) {
            temp.append(n % 10)
            n /= 10
        }
        temp.reverse()
        result += temp
    }
    return result
}

print(separateDigits(nums))
