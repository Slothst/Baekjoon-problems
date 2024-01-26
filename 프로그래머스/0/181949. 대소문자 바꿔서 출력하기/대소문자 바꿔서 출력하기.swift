import Foundation

let s1 = readLine()!

print(Array(s1).map { $0.isUppercase ? $0.lowercased() : $0.uppercased() }.joined())
