import Foundation

func solution(_ myString:String) -> [String] {
    // return myString.components(separatedBy: "x").filter { $0 != "" }.sorted()
    return myString.split(separator: "x").map { String($0) }.sorted()
}