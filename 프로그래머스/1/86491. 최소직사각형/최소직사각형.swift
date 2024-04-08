import Foundation

func solution(_ sizes:[[Int]]) -> Int {
    var w = 0
    var h = 0
    for size in sizes {
        w = max(w, max(size[0], size[1]))
        h = max(h, min(size[0], size[1]))
    }
    
    return w * h
}