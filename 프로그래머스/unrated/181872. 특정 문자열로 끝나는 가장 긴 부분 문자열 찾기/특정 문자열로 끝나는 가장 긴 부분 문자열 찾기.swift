import Foundation

func solution(_ myString:String, _ pat:String) -> String {
    return String(myString[myString.startIndex...myString.lastIndex(of: pat.last!)!])
}