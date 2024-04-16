import Foundation

func solution(_ s:String) -> Int {
    var result = 1
    var xCount = 1
    var count = 0

    var arr = s.map { String($0) }
    var x = String(s.first!)

    for i in 1..<arr.count {
        if xCount == count {
            result += 1
            x = arr[i]
            xCount = 1
            count = 0
            continue
        }

        if x == arr[i] {
            xCount += 1
        } else {
            count += 1
        }
    }
    
    return result
}