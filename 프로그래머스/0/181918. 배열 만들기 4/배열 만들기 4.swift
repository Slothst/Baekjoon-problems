import Foundation

func solution(_ arr:[Int]) -> [Int] {
    var stk = [Int]()
    var i = 0
    while i < arr.count {
        if stk.isEmpty {
            stk.append(arr[i])
            i += 1
            continue
        }
        if let last = stk.last {
            if last < arr[i] {
                stk.append(arr[i])
                i += 1
            } else {
                stk.removeLast()
            }
        }
    }
    return stk
}