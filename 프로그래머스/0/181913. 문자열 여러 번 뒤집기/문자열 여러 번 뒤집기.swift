import Foundation

func solution(_ my_string:String, _ queries:[[Int]]) -> String {
    var arr = Array(my_string)

    for query in queries {
        arr[query[0]...query[1]] = ArraySlice(arr[query[0]...query[1]].reversed())
    }
    return String(arr)
}