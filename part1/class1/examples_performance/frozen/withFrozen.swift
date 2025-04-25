import Foundation

@frozen
public struct Point {
    public var x: Int
    public var y: Int

    public init(x: Int, y: Int) {
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
print("Tiempo con @frozen: \(end - start) segundos")