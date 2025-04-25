swiftc -O sin_unowned.swift -o sin_unowned
swiftc -O con_unowned.swift -o con_unowned

size sin_unowned
size con_unowned

time sin_unowned
time con_unowned

./sin_unowned
./con_unowned