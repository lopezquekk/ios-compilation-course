swiftc -O withFrozen.swift -o sin_frozen
swiftc -O withoutFrozen.swift -o con_frozen


size sin_frozen
size con_frozen


time ./sin_frozen
time ./con_frozen