swiftc -O noInline.swift -o sin_inline
swiftc -O inline.swift -o con_inline

size sin_inline
size con_inline

./sin_inline
./con_inline

time ./sin_inline
time ./con_inline