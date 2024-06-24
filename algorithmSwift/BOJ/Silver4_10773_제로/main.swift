//
//  main.swift
//  algorithmSwift
//
//  Created by 배현진 on 6/24/24.
//

import Foundation

let K = Int(readLine()!)!
var stack: [Int] = []

for _ in 0 ..< K {
    let n = Int(readLine()!)!
    if n == 0 {
        stack.removeLast()
    } else {
        stack.append(n)
    }
}

print(stack.reduce(0, +))
