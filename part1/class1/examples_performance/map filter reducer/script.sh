swiftc -O mapfilterReducer.swift -o sin_for
swiftc -O withFor.swift -o con_for

size sin_for
size con_for

./sin_for
./con_for

time ./sin_for
time ./con_for