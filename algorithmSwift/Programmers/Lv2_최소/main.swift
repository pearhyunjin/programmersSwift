import Foundation

let A = [1, 4, 2]
let B = [5, 4, 4]

func solution(_ A:[Int], _ B:[Int]) -> Int
{
    var ans = 0

    var ansA = A
    var ansB = B
    ansA.sort(by: { $0 < $1 })
    ansB.sort(by: { $0 > $1 })
    
    for idx in 0 ..< A.count {
        ans += (ansA[idx] * ansB[idx])
    }

    return ans
}

print(solution(A, B))
