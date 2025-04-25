// archivo: con_concreto.swift

import Foundation

struct IntDoubler {
    func double(_ value: Int) -> Int {
        return value * 2
    }
}

let start = CFAbsoluteTimeGetCurrent()
let doubler = IntDoubler()
var result = 0

for i in 0..<100_000_000 {
    result += doubler.double(i)
}

let end = CFAbsoluteTimeGetCurrent()
print("Resultado: \(result)")
print("Tiempo con tipo concreto: \(end - start) segundos")
