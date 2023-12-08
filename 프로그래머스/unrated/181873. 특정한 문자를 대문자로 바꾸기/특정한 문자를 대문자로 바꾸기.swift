import Foundation

func solution(_ my_string:String, _ alp:String) -> String {
    return String(my_string.map { String($0) == alp ? Character($0.uppercased()) : $0 })
}