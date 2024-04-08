import Foundation

func solution(_ s:String) -> Int {
    var s = s
    let list: [String] = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
    
    for i in 0..<list.count {
        s = s.replacingOccurrences(of: list[i], with: String(i))
    }
    
    return Int(s)!
}