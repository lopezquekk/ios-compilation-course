import Foundation

// MARK: - Funciones no usadas

func fibonacci(_ n: Int) -> Int {
    if n <= 1 { return n }
    return fibonacci(n-1) + fibonacci(n-2)
}

func factorial(_ n: Int) -> Int {
    return (1...max(1, n)).reduce(1, *)
}

func reverseString(_ s: String) -> String {
    return String(s.reversed())
}

func isPrime(_ n: Int) -> Bool {
    guard n > 1 else { return false }
    for i in 2..<n { if n % i == 0 { return false } }
    return true
}

func sumArray(_ arr: [Int]) -> Int {
    return arr.reduce(0, +)
}

func doubleElements(_ arr: [Int]) -> [Int] {
    return arr.map { $0 * 2 }
}

func uppercase(_ s: String) -> String {
    return s.uppercased()
}

func squareRoot(_ x: Double) -> Double {
    return sqrt(x)
}

func concat(_ a: String, _ b: String) -> String {
    return a + b
}

func dateString() -> String {
    return ISO8601DateFormatter().string(from: Date())
}

func randomNumbers(count: Int) -> [Int] {
    return (0..<count).map { _ in Int.random(in: 0...100) }
}

func repeatString(_ s: String, times: Int) -> String {
    return String(repeating: s, count: times)
}

func evenNumbers(in arr: [Int]) -> [Int] {
    return arr.filter { $0 % 2 == 0 }
}

func capitalizeWords(_ s: String) -> String {
    return s.capitalized
}

func median(of arr: [Double]) -> Double {
    let sorted = arr.sorted()
    let mid = sorted.count / 2
    return sorted.count % 2 == 0 ? (sorted[mid] + sorted[mid-1]) / 2 : sorted[mid]
}

func frequencyMap(_ arr: [String]) -> [String: Int] {
    var dict: [String: Int] = [:]
    for item in arr { dict[item, default: 0] += 1 }
    return dict
}

func isPalindrome(_ s: String) -> Bool {
    let cleaned = s.lowercased().filter { $0.isLetter }
    return cleaned == String(cleaned.reversed())
}

func incrementAll(_ arr: inout [Int]) {
    for i in 0..<arr.count { arr[i] += 1 }
}

func longestWord(_ words: [String]) -> String? {
    return words.max(by: { $0.count < $1.count })
}

func flatten(_ arr: [[Int]]) -> [Int] {
    return arr.flatMap { $0 }
}

func minMax(_ arr: [Int]) -> (Int, Int)? {
    guard let min = arr.min(), let max = arr.max() else { return nil }
    return (min, max)
}

func charCount(_ s: String) -> [Character: Int] {
    var dict: [Character: Int] = [:]
    for c in s { dict[c, default: 0] += 1 }
    return dict
}

func gcd(_ a: Int, _ b: Int) -> Int {
    var a = a, b = b
    while b != 0 { (a, b) = (b, a % b) }
    return a
}

func lcm(_ a: Int, _ b: Int) -> Int {
    return a * b / gcd(a, b)
}

func filterVowels(_ s: String) -> String {
    return s.filter { "aeiouAEIOU".contains($0) }
}

func firstUniqueChar(_ s: String) -> Character? {
    let freq = charCount(s)
    return s.first { freq[$0] == 1 }
}

func allZeroes(_ arr: [Int]) -> Bool {
    return arr.allSatisfy { $0 == 0 }
}

func multiplyMatrix(_ a: [[Int]], _ b: [[Int]]) -> [[Int]] {
    guard !a.isEmpty && !b.isEmpty else { return [] }
    let rows = a.count
    let cols = b[0].count
    let shared = b.count
    var result = Array(repeating: Array(repeating: 0, count: cols), count: rows)
    for i in 0..<rows {
        for j in 0..<cols {
            for k in 0..<shared {
                result[i][j] += a[i][k] * b[k][j]
            }
        }
    }
    return result
}

func uniqueSorted(_ arr: [Int]) -> [Int] {
    return Array(Set(arr)).sorted()
}

func rotateArray(_ arr: [Int], by k: Int) -> [Int] {
    let n = arr.count
    let k = k % n
    return Array(arr[k...] + arr[..<k])
}

func hexString(_ n: Int) -> String {
    return String(format: "%02X", n)
}

func zipArrays<T, U>(_ a: [T], _ b: [U]) -> [(T, U)] {
    return Array(zip(a, b))
}

func average(_ arr: [Double]) -> Double {
    return arr.reduce(0, +) / Double(arr.count)
}

func safeDivide(_ a: Double, _ b: Double) -> Double? {
    return b == 0 ? nil : a / b
}

func removeDuplicates<T: Hashable>(_ arr: [T]) -> [T] {
    return Array(Set(arr))
}

func countOccurrences<T: Hashable>(_ arr: [T], of value: T) -> Int {
    return arr.filter { $0 == value }.count
}

func repeatEach<T>(_ arr: [T], times: Int) -> [T] {
    return arr.flatMap { Array(repeating: $0, count: times) }
}

func flattenOnce<T>(_ arr: [[T]]) -> [T] {
    return arr.flatMap { $0 }
}

func dropFirst<T>(_ arr: [T]) -> [T] {
    return Array(arr.dropFirst())
}

func isSorted(_ arr: [Int]) -> Bool {
    return arr == arr.sorted()
}

func binarySearch(_ arr: [Int], value: Int) -> Bool {
    var left = 0, right = arr.count - 1
    while left <= right {
        let mid = (left + right) / 2
        if arr[mid] == value { return true }
        else if arr[mid] < value { left = mid + 1 }
        else { right = mid - 1 }
    }
    return false
}

func secondsToHMS(_ seconds: Int) -> String {
    let h = seconds / 3600
    let m = (seconds % 3600) / 60
    let s = seconds % 60
    return String(format: "%02d:%02d:%02d", h, m, s)
}

func countWords(_ s: String) -> Int {
    return s.split(separator: " ").count
}

func isUppercase(_ s: String) -> Bool {
    return s == s.uppercased()
}

func isLowercase(_ s: String) -> Bool {
    return s == s.lowercased()
}

func kebabToCamel(_ s: String) -> String {
    let parts = s.split(separator: "-")
    return parts.first! + parts.dropFirst().map { $0.capitalized }.joined()
}

func removeWhitespace(_ s: String) -> String {
    return s.filter { !$0.isWhitespace }
}

func safeSubscript<T>(_ arr: [T], index: Int) -> T? {
    return index >= 0 && index < arr.count ? arr[index] : nil
}

// MARK: - Entry point

print("Compilación completada para dead code test (60 funciones)")


func unusedFunction() {
    print("Nunca llamada")
}

func usedFunction() {
    print("Hola mundo")
}

usedFunction()