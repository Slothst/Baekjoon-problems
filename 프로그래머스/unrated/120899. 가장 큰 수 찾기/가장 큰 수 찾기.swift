import Foundation

func solution(_ array:[Int]) -> [Int] {
    return Array(arrayLiteral: array.max() ?? 0, array.firstIndex(of: array.max() ?? 0) ?? 0)
}