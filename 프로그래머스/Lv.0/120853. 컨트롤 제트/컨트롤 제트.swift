import Foundation

func solution(_ s:String) -> Int {
    var arr = s.components(separatedBy: .whitespaces)
    var i = 0
    while i < arr.count {
        if arr[i] == "Z" {
            arr.remove(at: i)
            arr.remove(at: i - 1)
            i = 0
            continue
        }
        i += 1
    }
    return arr.map { Int($0)! }.reduce(0, +) 
}