import Foundation

func solution(_ k:Int, _ score:[Int]) -> [Int] {
    var hallOfFame: [Int] = []
    var result: [Int] = []

    for i in score {

        if hallOfFame.count < k {
            hallOfFame.append(i)
            hallOfFame = hallOfFame.sorted(by: >)
        } else {
            if hallOfFame.last! < i {
                hallOfFame.removeLast()
                hallOfFame.append(i)
                hallOfFame = hallOfFame.sorted(by: >)
            }
        }

        result.append(hallOfFame.last!)
    }
    return result
}