import Foundation

func solution(_ my_string:String) -> String {
    var answer = my_string
    if answer.contains("a") {
        answer = answer.replacingOccurrences(of: "a", with: "")
    }
    if answer.contains("e") {
        answer = answer.replacingOccurrences(of: "e", with: "")    
    }
    if answer.contains("i") {
        answer = answer.replacingOccurrences(of: "i", with: "")
    }
    if answer.contains("o") {
        answer = answer.replacingOccurrences(of: "o", with: "")    
    }
    if answer.contains("u") {
        answer = answer.replacingOccurrences(of: "u", with: "")    
    }
    
    return answer
}