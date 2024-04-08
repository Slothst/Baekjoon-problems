import Foundation

func solution(_ d:[Int], _ budget:Int) -> Int {
    var budget = budget
    var count = 0
    for i in d.sorted(by: <) {
        if budget >= i {
            budget -= i
            count += 1
        }
        if budget <= 0 {
            break
        }
    }
    return count
}