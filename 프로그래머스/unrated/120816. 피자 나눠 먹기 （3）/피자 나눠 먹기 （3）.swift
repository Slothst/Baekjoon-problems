import Foundation

func solution(_ slice:Int, _ n:Int) -> Int {
    // return n % slice == 0 ? n / slice : n / slice + 1
    return n / slice + (n % slice > 0 ? 1 : 0)
}