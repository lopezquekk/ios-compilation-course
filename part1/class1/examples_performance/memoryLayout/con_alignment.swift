struct UserInfo {
    var score: Double       // 8 bytes
    var id: Int32           // 4 bytes
    var isActive: Bool      // 1 byte
}

print(MemoryLayout<UserInfo>.size)