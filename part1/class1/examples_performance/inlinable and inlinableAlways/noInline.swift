import Foundation

@usableFromInline
func slowDouble(_ x: Int) -> Int {
    return x * 2
}

let start = CFAbsoluteTimeGetCurrent()

var sum = 0
for i in 0..<100_000_000 {
    sum += slowDouble(i)
}

let end = CFAbsoluteTimeGetCurrent()
print("Suma: \(sum)")
print("Tiempo sin inlining: \(end - start) segundos")