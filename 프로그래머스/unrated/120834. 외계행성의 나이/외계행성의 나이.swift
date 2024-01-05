import Foundation

func solution(_ age:Int) -> String {
    var answer = [String]()
    var alpha = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j"]
    String(age).map { answer.append(alpha[Int(String($0))!]) }
    
    return answer.joined()
}