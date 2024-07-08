//
//  main.swift
//  algorithmSwift
//
//  Created by 배현진 on 7/8/24.
//

import Foundation


func solution(_ s:String) -> Int{
    var stack = [Character]()
    
    for char in s {
        if let before = stack.last {
            if before == char {
                stack.removeLast()
                continue
            }
        }
        stack.append(char)
    }
    
    return stack.isEmpty ? 1 : 0
}
