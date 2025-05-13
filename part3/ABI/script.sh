swiftc -emit-library demo.swift -o libDemo.dylib
swiftc -emit-library -enable-library-evolution demo.swift -o libDemoABI.dylib


nm -gU libDemo.dylib
nm -gU libDemoABI.dylib 