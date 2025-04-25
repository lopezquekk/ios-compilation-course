swiftc functionStripping.swift -o sin_strip
swiftc -O -whole-module-optimization -Xlinker -dead_strip functionStripping.swift -o con_strip

size sin_strip
size con_strip

# con esto puede ser aun menor strip -S -x con_strip

nm sin_strip | grep unusedFunction
nm con_strip | grep unusedFunction


# -O y -whole-module-optimization (-wmo) para permitir análisis global.
# -dead_strip en el linker para eliminar símbolos no usados.
# strip en el binario final para eliminar metadata y debug info innecesaria.


# Build Settings > Other Linker Flags: -dead_strip
# Build Settings > Strip Style: All Symbols
# Build Settings > Deployment Postprocessing: YES