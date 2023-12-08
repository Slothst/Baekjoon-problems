import Foundation

func solution(_ my_string:String, _ is_suffix:String) -> Int {
    var n = is_suffix.count > my_string.count ? my_string.count : is_suffix.count
    return String(my_string.map { $0 }.suffix(from: my_string.count - n)) == is_suffix ? 1 : 0
}