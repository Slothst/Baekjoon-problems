import Foundation

func solution(_ strlist:[String]) -> [Int] {
    var answer = [Int]()
    for i in 0 ..< strlist.count {
        answer.append(strlist[i].count)
    }
    return answer
}