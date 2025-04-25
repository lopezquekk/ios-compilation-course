// archivo: con_branchless.swift

import Foundation

let start = CFAbsoluteTimeGetCurrent()
var sum = 0

for i in 0..<100_000_000 {
    // (i % 2 == 0) es igual a: (i & 1 == 0)
    let mask = ~(i & 1) // 0xFFFFFFFE si par, 0xFFFFFFFF si impar
    sum += i & mask     // solo suma si es par
}

let end = CFAbsoluteTimeGetCurrent()
print("Suma pares (branchless): \(sum)")
print("Tiempo sin if: \(end - start) segundos")
