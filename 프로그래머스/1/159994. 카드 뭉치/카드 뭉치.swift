import Foundation

func solution(_ cards1:[String], _ cards2:[String], _ goal:[String]) -> String {
    var cards1 = cards1
    var cards2 = cards2
    for i in 0..<goal.count {
        if cards1.first ?? "" == goal[i] {
            cards1.removeFirst()
        } else if cards2.first ?? "" == goal[i] {
            cards2.removeFirst()
        } else {
            return "No"
        }
    }
    return "Yes"
}