import Foundation

func solution(_ num_list:[Int], _ n:Int) -> [Int] {
    var N = n - 1
    return Array(num_list[N...])
}