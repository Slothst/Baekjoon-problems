import Foundation

func solution(_ strArr:[String]) -> Int {
    return Dictionary(grouping: strArr) { $0.count }.map { $0.value.count }.max()!
}