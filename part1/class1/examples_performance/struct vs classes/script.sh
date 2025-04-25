swiftc -O classes.swift -o sin_struct
swiftc -O structs.swift -o con_struct

size sin_struct
size con_struct

echo "\nClasses"
time ./sin_struct
echo "\nStructs"
time ./con_struct

#real: el tiempo total de reloj que transcurrió desde que comenzó hasta que terminó.
#user: el tiempo que el CPU pasó ejecutando el código del programa.
#sys: el tiempo que el sistema operativo gastó haciendo cosas.