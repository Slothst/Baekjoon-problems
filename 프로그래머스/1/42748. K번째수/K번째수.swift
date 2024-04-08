import Foundation

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    return commands.map {
        array[($0[0] - 1)...($0[1] - 1)].sorted(by: <)[($0[2] - 1)]
    }
}