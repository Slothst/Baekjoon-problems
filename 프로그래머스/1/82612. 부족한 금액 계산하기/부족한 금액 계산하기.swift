import Foundation

func solution(_ price:Int, _ money:Int, _ count:Int) -> Int64 {
    if price == 0 || money == 0 || count == 0 {
        return 0
    }
    var result = (1...count).map { $0 * price }.reduce(0, +) - money
    return result > 0 ? Int64(result) : 0
}