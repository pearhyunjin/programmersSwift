//
//  main.swift
//  algorithmSwift
//
//  Created by 배현진 on 6/7/24.
//

import Foundation

var s: String = "1 2 3 4"

@discardableResult
func solution(_ s:String) -> String {
    let splitString = s.split(separator: " ")

    var store: [Int] = []

    splitString.map { element in
        store.append(Int(element)!)
    }

    let result = String(store.min()!) + " " + String(store.max()!)

    return result
}

print(solution(s))
