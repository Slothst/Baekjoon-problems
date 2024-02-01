import Foundation

func solution(_ quiz:[String]) -> [String] {
    var result = [String]()

    quiz.forEach {
        var answer = 0
        var arr = $0.split(separator: " ").map { String($0) }
        if arr[1] == "+" {
            answer = Int(arr[0])! + Int(arr[2])!
            result.append(answer == Int(arr[4])! ? "O" : "X")
        } else {
            answer = Int(arr[0])! - Int(arr[2])!
            result.append(answer == Int(arr[4])! ? "O" : "X")
        }
    }
    return result
}