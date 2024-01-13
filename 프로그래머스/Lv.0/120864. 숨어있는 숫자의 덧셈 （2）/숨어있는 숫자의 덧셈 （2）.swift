import Foundation

func solution(_ my_string:String) -> Int {    
    var result = 0
    var str = ""

    for s in my_string {
        if s.isNumber {
            str += String(s)
        } else {
            result += Int(str) ?? 0
            str = ""
        }
    }
    result += Int(str) ?? 0
    return result
}