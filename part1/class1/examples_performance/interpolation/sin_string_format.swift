// archivo: sin_string_format.swift

import Foundation

let start = CFAbsoluteTimeGetCurrent()

var output = ""
for i in 0..<10_000 {
    output += "Valor: \(i)\n"
}

let end = CFAbsoluteTimeGetCurrent()
print("Longitud final: \(output.count)")
print("Tiempo con interpolación: \(end - start) segundos")
