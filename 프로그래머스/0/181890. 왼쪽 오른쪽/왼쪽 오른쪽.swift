import Foundation

func solution(_ str_list:[String]) -> [String] {
    var str_list = str_list
    var result = [String]()
    for i in str_list {
        if i == "l" {
            return result
        } else if i == "r" {
            str_list.removeFirst()
            return str_list
        } else {
            result.append(i)
            str_list.removeFirst()
        }
    }
    return []
}