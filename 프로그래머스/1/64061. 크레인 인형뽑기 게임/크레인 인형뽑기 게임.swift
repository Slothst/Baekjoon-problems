import Foundation

func solution(_ board:[[Int]], _ moves:[Int]) -> Int {
    var verBoard: [[Int]] = []
    var stack = [Int]()
    var result = 0

    for i in 0..<board.count {
        var arr = [Int]()
        for j in 0..<board.count {
            arr.append(board[j][i])
        }
        verBoard.append(arr)
    }

    for move in moves {
        var first = verBoard[move - 1].filter ({ $0 != 0 }).first ?? 0
        if first != 0 {
            verBoard[move - 1][verBoard[move - 1].firstIndex(of: first)!] = 0
            stack.append(first)
        } else {
            continue
        }

        if stack.count >= 2 {
            var suffix = Array(stack.suffix(2))
            if suffix[0] == suffix[1] {
                result += 2
                stack.removeLast(2)
            }
        }
    }

    return result
}