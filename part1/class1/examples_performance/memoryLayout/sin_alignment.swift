// archivo: sin_alignment.swift

struct UserInfo {
    var isActive: Bool      // 1 byte
    var score: Double       // 8 bytes
    var id: Int32           // 4 bytes
}

print(MemoryLayout<UserInfo>.size)