import Foundation

let s = "()()"
let ss = ")()()"

func solution(_ s:String) -> Bool
{
    var stack = ""
    
    for i in s{
        if(i == "("){
            stack.append("(")
        }else{
            if(stack.isEmpty){
                return false
            }else{
                _ = stack.popLast()
            }
        }
    }
    
    return stack.isEmpty ? true : false
}

print(solution(s))
print(solution(ss))
