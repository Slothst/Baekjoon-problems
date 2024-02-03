func solution(_ s:String) -> Int {
    var s = s
    if s.prefix(1) == "-" {
        return Int(s.suffix(s.count - 1))! * -1
    }
    return Int(s.suffix(s.count))!
}