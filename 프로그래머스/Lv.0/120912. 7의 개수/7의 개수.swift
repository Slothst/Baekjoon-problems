import Foundation

func solution(_ array:[Int]) -> Int {
    return array.map { String($0).filter { String($0) == String(7) }.count }.reduce(0, +)
}