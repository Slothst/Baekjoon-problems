import Foundation

func solution(_ numlist:[Int], _ n:Int) -> [Int] {
    numlist.map { abs(n - $0) }.enumerated().sorted {
        if $0.element == $1.element {
            return numlist[$0.offset] > numlist[$1.offset]
        } else {
            return $0.element < $1.element
        }
    }.map { numlist[$0.offset] }
}