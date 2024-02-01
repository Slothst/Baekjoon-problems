import Foundation

func solution(_ arr:[Int], _ query:[Int]) -> [Int] {
    var arr = arr
    query.enumerated().forEach {
        if $0.offset % 2 == 0 {
            arr = Array(arr.prefix($0.element + 1))
        } else {
            arr = Array(arr.suffix(arr.count - $0.element))
        }
    }
    return arr
}