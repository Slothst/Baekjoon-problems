import Foundation

func solution(_ my_string:String, _ m:Int, _ c:Int) -> String {
    return String(stride(from: 0 + (c - 1), to: my_string.count, by: m).map { Array(my_string)[$0...$0] }.joined())
}