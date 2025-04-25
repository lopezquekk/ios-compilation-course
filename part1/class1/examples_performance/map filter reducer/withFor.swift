import Foundation

let start = CFAbsoluteTimeGetCurrent()

var result = 0
for i in 0..<10_000_000 {
    result += i * 2
}

let end = CFAbsoluteTimeGetCurrent()

print("Resultado: \(result)")
print("Tiempo con for-in: \(end - start) segundos")