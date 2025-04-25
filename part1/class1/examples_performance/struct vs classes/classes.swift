import Foundation

class Point {
    var x: Int
    var y: Int
    init(x: Int, y: Int) {
        self.x = x
        self.y = y
    }
}

var points: [Point] = []
let start = CFAbsoluteTimeGetCurrent()

for i in 0..<10_000_000 {
    points.append(Point(x: i, y: i))
}

let end = CFAbsoluteTimeGetCurrent()
print("Tiempo con class: \(end - start) segundos")
