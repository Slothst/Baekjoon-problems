import Foundation

func solution(_ s:String) -> String {
    var dic = Dictionary(grouping: s) { $0 }.sorted {
        $0.key < $1.key
    }.filter {
        $0.value.count == 1
    }
    return String(dic.map { $0.key })
}