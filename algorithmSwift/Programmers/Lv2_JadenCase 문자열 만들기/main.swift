//
//  main.swift
//  algorithmSwift
//
//  Created by 배현진 on 6/29/24.
//

import Foundation

let s = "3people unFollowed me"

func solution(_ s:String) -> String {
    var result = ""
    var count = 0
    
    for i in s{
        if i != " "{
            if count == 0{
                result += String(i).uppercased()
            }else{
                result += String(i).lowercased()
            }
            count += 1
        }else{
            result += " "
            count = 0
        }
    }
    return result
}

print(solution(s))
