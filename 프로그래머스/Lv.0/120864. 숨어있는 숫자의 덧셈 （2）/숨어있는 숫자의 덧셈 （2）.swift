import Foundation

func solution(_ my_string:String) -> Int {    
    var arr = Array(my_string)
    var result = [String]()
    var str = ""

    for i in arr {
        if i.isNumber {
            str += String(i)
        }
        if !i.isNumber && str != "" {
            result.append(str)
            str = ""
        } 
    }
    
    if let str = Int(str) {
        result.append(String(str))
    }

    return result.map { Int($0)! }.reduce(0, +) 
}