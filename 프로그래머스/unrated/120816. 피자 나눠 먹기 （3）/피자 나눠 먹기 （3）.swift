import Foundation

func solution(_ slice:Int, _ n:Int) -> Int {
    var count = 0
    var i = n
    while i > 0 {
        count += 1
        i -= slice
    }
    return count
}