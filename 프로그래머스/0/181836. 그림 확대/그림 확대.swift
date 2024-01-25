import Foundation

func solution(_ picture:[String], _ k:Int) -> [String] {
    var result = [String]()
    for i in 0..<picture.count {
        var sum = ""
        picture[i].map { String($0) }.forEach { str in
            (1...k).forEach { _ in
                sum += str
            }
        }
        (1...k).forEach { _ in
            result.append(sum)
        }
    }
    return result
}