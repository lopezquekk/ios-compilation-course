// archivo: con_string_format.swift

import Foundation

let start = CFAbsoluteTimeGetCurrent()

var output = ""
for i in 0..<10_000_000 {
    output += String(format: "Valor: %d\n", i)
}

let end = CFAbsoluteTimeGetCurrent()
print("Longitud final: \(output.count)")
print("Tiempo con String(format:): \(end - start) segundos")
