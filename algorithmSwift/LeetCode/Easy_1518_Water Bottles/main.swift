//
//  main.swift
//  algorithmSwift
//
//  Created by 배현진 on 6/23/24.
//

import Foundation

/* 결과 출력
let numBottles = 9
let numExchange = 3

print(numWaterBottles(9, 3))
 */

func numWaterBottles(_ numBottles: Int, _ numExchange: Int) -> Int {
    var result = numBottles
    var bottles = numBottles

    while (bottles / numExchange) > 0 {
        var remain = bottles / numExchange
        var new = bottles % numExchange
        result += remain
        bottles = remain + new
    }

    return result
}
