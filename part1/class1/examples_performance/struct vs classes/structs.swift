import Foundation

struct Point {
    var x: Int
    var y: Int
}

var points: [Point] = []
let start = CFAbsoluteTimeGetCurrent()

for i in 0..<10_000_000 {
    points.append(Point(x: i, y: i))
}

let end = CFAbsoluteTimeGetCurrent()
print("Tiempo con struct: \(end - start) segundos")