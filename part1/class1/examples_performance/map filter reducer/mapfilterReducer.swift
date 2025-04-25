import Foundation

let start = CFAbsoluteTimeGetCurrent()

let result = (0..<10_000_000)
    .map { $0 * 2 }
    .reduce(0, +)

let end = CFAbsoluteTimeGetCurrent()

print("Resultado: \(result)")
print("Tiempo con map/reduce: \(end - start) segundos")