import Foundation

func solution(_ keyinput:[String], _ board:[Int]) -> [Int] {
    var result = [0, 0]
    var limit = [board[0] / 2, board[1] / 2]
    keyinput.forEach { 
        switch $0 {
            case "left":
                if result[0] <= limit[0] * -1 {
                    break
                }
                result[0] -= 1
            case "right":
                if result[0] >= limit[0] {
                    break
                }
                result[0] += 1
            case "up":
                if result[1] >= limit[1] {
                    break
                }
                result[1] += 1
            default:
                if result[1] <= limit[1] * -1 {
                    break
                }
                result[1] -= 1
        }
    }
    return result
}