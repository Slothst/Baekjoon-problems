import Foundation

func solution(_ my_strings:[String], _ parts:[[Int]]) -> String {
    return parts.enumerated().map { String(my_strings[$0.offset].map { $0 }[$0.element[0]...$0.element[1]]) }.joined()
}