func solution(_ s:String, _ n:Int) -> String {
    var result = ""
    for str in Array(s) {
        if str.isLowercase {
            result += String(UnicodeScalar((Int(UnicodeScalar(String(str))!.value) - Int(UnicodeScalar("a").value) + n) % 26 + Int(UnicodeScalar("a").value))!)
        } else if str.isUppercase {
            result += String(UnicodeScalar((Int(UnicodeScalar(String(str))!.value) - Int(UnicodeScalar("A").value) + n) % 26 + Int(UnicodeScalar("A").value))!)
        } else {
            result += String(str)
        }
    }
    return result
}