//
//  main.swift
//  algorithmSwift
//
//  Created by 배현진 on 6/22/24.
//

import Foundation

//var matrix: [[Int]] = [[1,2,3],[4,5,6],[7,8,9]]
var matrix: [[Int]] = [[1,2,3,4],[5,6,7,8],[9,10,11,12]]

var result: [Int] = []
var xStart: Int = 0
var yStart: Int = 0
var xEnd: Int = 0
var yEnd: Int = 0

func spiralOrder(_ matrix: [[Int]]) -> [Int] {
    let n = matrix.count
    let m = matrix[0].count

    xEnd = m - 1
    yEnd = n - 1

    while xStart <= xEnd && yStart <= yEnd {
        yStart = xPlusMove(matrix)

        if xStart <= xEnd && yStart <= yEnd {
            xEnd = yPlusMove(matrix)
        }

        if xStart <= xEnd && yStart <= yEnd {
            yEnd = xMinusMove(matrix)
        }

        if xStart <= xEnd && yStart <= yEnd {
            xStart = yMinusMove(matrix)
        }
    }
    return result
}

func xPlusMove(_ matrix: [[Int]]) -> Int {
    for i in xStart ... xEnd {
        result.append(matrix[yStart][i])
    }
    yStart += 1
    return yStart
}

func yPlusMove(_ matrix: [[Int]]) -> Int {
    for i in yStart ... yEnd {
        result.append(matrix[i][xEnd])
    }
    xEnd -= 1
    return xEnd
}

func xMinusMove(_ matrix: [[Int]]) -> Int {
    for i in (xStart ... xEnd).reversed() {
        result.append(matrix[yEnd][i])
    }
    yEnd -= 1
    return yEnd
}

func yMinusMove(_ matrix: [[Int]]) -> Int {
    for i in (yStart ... yEnd).reversed() {
        result.append(matrix[i][xStart])
    }
    xStart += 1
    return xStart
}

print(spiralOrder(matrix))
