import Foundation

@inlinable @inline(__always)
func fastDouble(_ x: Int) -> Int {
    return x * 2
}

let start = CFAbsoluteTimeGetCurrent()

var sum = 0
for i in 0..<100_000_000 {
    sum += fastDouble(i)
}

let end = CFAbsoluteTimeGetCurrent()
print("Suma: \(sum)")
print("Tiempo con inlining: \(end - start) segundos")