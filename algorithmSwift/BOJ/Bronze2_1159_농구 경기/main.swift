//
//  main.swift
//  algorithmSwift
//
//  Created by 배현진 on 6/24/24.
//

import Foundation

let playerNum = Int(readLine()!)!
var firstName = [String]()
var nameCount = [String: Int]()

for _ in 1 ... playerNum {
    firstName.append(String(readLine()!.first!))
}

for i in firstName {
    if nameCount.keys.contains(i) {
        nameCount[i]! += 1
    } else {
        nameCount[i] = 1
    }
}
let result = nameCount.filter { $0.value >= 5 }.keys.sorted().joined()

print(result == "" ? "PREDAJA" : result)
