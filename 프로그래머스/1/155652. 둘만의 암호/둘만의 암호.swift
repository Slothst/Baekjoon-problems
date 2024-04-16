import Foundation

func solution(_ s:String, _ skip:String, _ index:Int) -> String {
    let alphabets = "abcdefghijklmnopqrstuvwxyz".map { $0 }.filter { !skip.contains($0) }

    return String(s.map {
        guard let idx = alphabets.firstIndex(of: $0) else { return $0 }
        let letter = alphabets[(idx + index) % alphabets.count]
        return letter
    })

}