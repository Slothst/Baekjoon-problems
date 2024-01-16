import Foundation

func solution(_ s:String) -> Int {
    // var arr = s.components(separatedBy: .whitespaces)
    // var i = 0
    // while i < arr.count {
    //     if arr[i] == "Z" {
    //         arr.remove(at: i)
    //         arr.remove(at: i - 1)
    //         i = 0
    //         continue
    //     }
    //     i += 1
    // }
    // return arr.map { Int($0)! }.reduce(0, +) 
    var stack = [Int]()
    
    for w in s.components(separatedBy: .whitespaces) {
        if w == "Z" {
            stack.popLast()
        } else {
            stack.append(Int(w)!)
        }
    }
    return stack.reduce(0, +)
}