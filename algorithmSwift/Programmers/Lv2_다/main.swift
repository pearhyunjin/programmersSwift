//
//  main.swift
//  algorithmSwift
//
//  Created by 배현진 on 6/30/24.
//

import Foundation

func solution(_ n:Int) -> Int
{
    var binary = String(n, radix: 2)
    let count = binary.filter{ $0 == "1" }.count
    var n = n + 1
    
    while true {
        binary = String(n, radix: 2)
        if binary.filter({ $0 == "1" }).count == count {
            break
        }
        n += 1
    }
    return n
}
