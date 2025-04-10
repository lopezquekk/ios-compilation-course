# Swift & Objective-C Compilation and Analysis Commands

This README provides an explanation of various commands used for compiling, analyzing, and comparing Swift and Objective-C source code. Each command is listed with a description of its purpose and parameters.

---

## Compilation and Execution

### `swiftc howdy.swift -o howdy`
Compiles the Swift source file `howdy.swift` into an executable named `howdy`.
- `swiftc`: The Swift compiler.
- `-o howdy`: Specifies the name of the output binary file.

### `./howdy`
Executes the compiled Swift binary `howdy`.

### `clang hey.m -o hey_objc`
Compiles the Objective-C source file `hey.m` into an executable named `hey_objc`.
- `clang`: The C/Objective-C compiler.
- `-o hey_objc`: Specifies the name of the output binary file.

### `./hey_objc`
Executes the compiled Objective-C binary `hey_objc`.

---

## Binary Comparison and Symbol Inspection

### `diff howdy hey_objc`
Compares the binary content of `howdy` and `hey_objc` line by line.
- `diff`: Command-line tool to compare files.

### `nm howdy`
Displays the symbol table of the compiled Swift binary `howdy`.
- `nm`: Lists symbols in object files and binaries.

### `nm hey_objc`
Displays the symbol table of the compiled Objective-C binary `hey_objc`.

---

## Shared Library Inspection

### `otool -L howdy`
Lists the dynamic libraries linked to the Swift binary `howdy`.
- `otool`: MacOS tool for inspecting object files.
- `-L`: Prints the names of shared libraries used.

### `otool -L hey_objc`
Lists the dynamic libraries linked to the Objective-C binary `hey_objc`.

---

## Abstract Syntax Tree (AST) Dump

### `swiftc -dump-ast howdyFunction.swift`
Generates and prints the abstract syntax tree (AST) for the Swift source file `howdyFunction.swift`.
- `-dump-ast`: Tells the compiler to output the AST instead of compiling the code.

### `clang -Xclang -ast-dump -fsyntax-only heyFunctionObjc.m`
Generates and prints the AST for the Objective-C source file `heyFunctionObjc.m`.
- `-Xclang`: Sends options directly to the Clang frontend.
- `-ast-dump`: Dumps the AST.
- `-fsyntax-only`: Checks for syntax correctness without generating output files.

---

## LLVM Intermediate Representation (IR)

### `swiftc -emit-ir howdyFunction.swift`
Generates the LLVM IR (Intermediate Representation) from the Swift source file.
- `-emit-ir`: Emits LLVM IR instead of compiling to binary.

### `clang -S -emit-llvm heyFunctionObjc.m`
Generates LLVM IR from the Objective-C source file and writes it to an assembly file.
- `-S`: Emits assembly code instead of an object file.
- `-emit-llvm`: Emits LLVM IR instead of machine code.

### `clang -S -emit-llvm -framework Foundation heyFunctionObjc.m -o heyFunctionObjc.ll`
Same as above, but explicitly links the `Foundation` framework and saves output to `heyFunctionObjc.ll`.
- `-framework Foundation`: Links against the Foundation framework.

### `clang -S -emit-llvm -framework Foundation heyFunctionObjc.m -o -`
Same as above, but outputs the result to standard output.
- `-o -`: Writes output to stdout.

---

## Syntax Checking

### `clang -fsyntax-only heyFunctionObjc.m`
Checks the syntax of the Objective-C file without compiling it.
- `-fsyntax-only`: Performs syntax validation only.
