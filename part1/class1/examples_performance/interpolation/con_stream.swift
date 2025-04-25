// archivo: con_stream.swift

import Foundation

struct FastStream: TextOutputStream {
    var content = ""

    mutating func write(_ string: String) {
        content += string
    }
}

let start = CFAbsoluteTimeGetCurrent()

var stream = FastStream()
for i in 0..<10_000_000 {
    print("Valor: \(i)", to: &stream)
}

let end = CFAbsoluteTimeGetCurrent()
print("Longitud final: \(stream.content.count)")
print("Tiempo con stream: \(end - start) segundos")
