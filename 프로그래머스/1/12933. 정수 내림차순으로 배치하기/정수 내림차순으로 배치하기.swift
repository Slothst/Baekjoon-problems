func solution(_ n:Int64) -> Int64 {
    return String(n).sorted(by: >).map { Int64(String($0))! }.reduce(0, { $0 * 10 + $1 })
}