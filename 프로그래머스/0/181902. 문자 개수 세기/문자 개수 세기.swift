import Foundation

func solution(_ my_string:String) -> [Int] {
    var result = [Int](repeating: 0, count :52)
    for i in Array(my_string) {
        let scalarValue = Unicode.Scalar(String(i))!
        
        if i.isUppercase {
            result[Int(exactly: scalarValue.value)! - 65] += 1
        } else {
            result[Int(exactly: scalarValue.value)! - 71] += 1
        }
    }
    return result
}