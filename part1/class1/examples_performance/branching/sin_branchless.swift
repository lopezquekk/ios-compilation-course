// archivo: sin_branchless.swift

import Foundation

let start = CFAbsoluteTimeGetCurrent()
var sum = 0

for i in 0..<100_000_000 {
    if i % 2 == 0 {
        sum += i
    }
}

let end = CFAbsoluteTimeGetCurrent()
print("Suma pares: \(sum)")
print("Tiempo con if: \(end - start) segundos")
