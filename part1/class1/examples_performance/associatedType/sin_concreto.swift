// archivo: sin_concreto.swift

import Foundation

protocol Doublable {
    associatedtype T
    func double(_ value: T) -> T
}

struct IntDoubler: Doublable {
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
print("Tiempo con protocolo genérico: \(end - start) segundos")
