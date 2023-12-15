import Foundation

func solution(_ todo_list:[String], _ finished:[Bool]) -> [String] {
    finished.enumerated().filter { $0.element == false }.map { todo_list[$0.offset] }
}