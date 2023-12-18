import Foundation

func solution(_ start:Int, _ end_num:Int) -> [Int] {
    return Array(stride(from: start, to: end_num - 1, by: -1))
}