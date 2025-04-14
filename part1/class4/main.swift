import Foundation

@_silgen_name("count_repeated_letters_c")
func countRepeatedLettersC(_ input: UnsafePointer<CChar>) -> Int32

@_silgen_name("count_repeated_letters_objc")
func countRepeatedLettersObjC(_ input: UnsafePointer<CChar>) -> Int32

let texto = "camilo lopez lopez"
let cstr = (texto as NSString).utf8String!

let c = countRepeatedLettersC(cstr)
let objc = countRepeatedLettersObjC(cstr)

print("Letras repetidas en C: \(c)")
print("Letras repetidas en Objective-C: \(objc)")