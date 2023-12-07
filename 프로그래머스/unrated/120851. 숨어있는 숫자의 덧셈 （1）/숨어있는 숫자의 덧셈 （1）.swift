import Foundation

func solution(_ my_string:String) -> Int {
    return my_string.filter { $0.isNumber }.map{ String($0) }.map{ Int($0)! }.reduce(0){ $0 + $1 }
}