import Foundation

func solution(_ d:[Int], _ budget:Int) -> Int {
    var budget = budget
    
    return d.sorted(by: <).filter {
        budget -= $0
        return budget >= 0
    }.count
}