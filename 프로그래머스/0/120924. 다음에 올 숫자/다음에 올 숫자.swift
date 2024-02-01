import Foundation

func solution(_ common:[Int]) -> Int {
    var common = common
    if common[2] - common[1] == common[1] - common[0] {
        return common[common.count - 1] + (common[2] - common[1])
    }
    return common[common.count - 1] * (common[2] / common[1])
}