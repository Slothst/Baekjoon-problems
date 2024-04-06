func solution(_ arr:[Int], _ divisor:Int) -> [Int] {
    var arr = arr.filter { $0 % divisor == 0 }
    return arr.count != 0 ? arr.sorted() : [-1]
}