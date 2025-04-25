import Foundation

class Counter {
    var value = 0

    func startCounting() {
        DispatchQueue.global().async { [unowned self] in
            for _ in 0..<10_000_000 {
                self.value += 1
            }
            print("Final: \(self.value)")
        }
    }
}

let start = CFAbsoluteTimeGetCurrent()
let counter = Counter()
counter.startCounting()

sleep(2) // Esperamos a que termine el async
let end = CFAbsoluteTimeGetCurrent()
print("Tiempo con unowned: \(end - start) segundos")