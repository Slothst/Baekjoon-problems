import Foundation

func solution(_ date1:[Int], _ date2:[Int]) -> Int {
    return date1[0] < date2[0] || (date1[0] <= date2[0] && date1[1] < date2[1]) || (date1[0] <= date2[0] && date1[1] <= date2[1] && date1[2] < date2[2]) ? 1 : 0
}