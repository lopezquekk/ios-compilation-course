swiftc -O sin_string_format.swift -o sin_string_format
swiftc -O con_string_format.swift -o con_string_format
swiftc -O con_stream.swift -o con_stream

size sin_string_format
size con_string_format
size con_stream

./sin_string_format
./con_string_format
./con_stream