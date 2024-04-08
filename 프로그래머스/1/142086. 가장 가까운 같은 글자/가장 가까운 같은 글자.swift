import Foundation

func solution(_ s:String) -> [Int] {
    var sArr = Array(s)
    var arr: [String] = []
    var result: [Int] = []

    for i in 0..<sArr.count {
        if arr.lastIndex(of: String(sArr[i])) == nil {
            result.append(-1)
        } else {
            result.append(i - arr.lastIndex(of: String(sArr[i]))!)
        }
        arr.append(String(sArr[i]))
    }
    return result
}