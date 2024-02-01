import Foundation

func solution(_ code:String) -> String {
    var mode = 0
    var result = ""
    var arr = Array(code)
    for i in 0..<arr.count {
        if mode == 0 {
            if arr[i] != "1" && i % 2 == 0 {
                result += String(arr[i])
            } else if arr[i] == "1" {
                mode = 1
            }
        } else {
            if arr[i] != "1" && i % 2 == 1 {
                result += String(arr[i])
            } else if arr[i] == "1" {
                mode = 0
            }
        }
    }
    return result == "" ? "EMPTY" : result
}