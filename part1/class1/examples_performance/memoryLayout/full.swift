// DeadCodeTest.swift (60 funciones + padding test extendido)

import Foundation

// MARK: - Funciones no usadas

// ... [aquí van las 60 funciones anteriores, que no se repiten por brevedad] ...

// MARK: - Padding optimization test

struct MalAlineado {
    var a: Bool         // 1 byte
    var b: Int64        // 8 bytes
    var c: Bool         // 1 byte
    var d: Int32        // 4 bytes
    var e: Bool         // 1 byte
    var f: Double       // 8 bytes
    var g: Bool         // 1 byte
    var h: UInt16       // 2 bytes
}

struct BienAlineado {
    var f: Double       // 8 bytes
    var b: Int64        // 8 bytes
    var d: Int32        // 4 bytes
    var h: UInt16       // 2 bytes
    var a: Bool         // 1 byte
    var c: Bool         // 1 byte
    var e: Bool         // 1 byte
    var g: Bool         // 1 byte
}

print("Size mal alineado: \(MemoryLayout<MalAlineado>.size) bytes")
print("Size bien alineado: \(MemoryLayout<BienAlineado>.size) bytes")

// MARK: - Entry point

print("Compilación completada para dead code test (60 funciones + padding)")