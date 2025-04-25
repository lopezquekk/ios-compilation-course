import Counter
import Foundation

let str = "camilo lopez lopez"
let cStr = (str as NSString).utf8String!

let result = count_repeated_letters(cStr)
print("Repetidas (importando el header): \(result)")