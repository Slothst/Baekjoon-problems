import Foundation

func solution(_ order:[String]) -> Int {
//     var menu = ["americano" : 4500, "iceamericano" : 4500, "americanoice" : 4500, "hotamericano" : 4500, "americanohot" : 4500, "cafelatte" : 5000, "icecafelatte" : 5000, "cafelatteice" : 5000, "hotcafelatte" : 5000, "cafelattehot" : 5000, "anything" : 4500]

//     var sum = 0

//     for pro in order {
//         sum += menu[pro] ?? 0
//     }
//     return sum
    return order.map { $0.contains("cafelatte") ? 5000 : 4500}.reduce(0, +)
}