#!/bin/bash
x=0
while [ $x -le 71 ]
do
    ./Cub3D map$x.cub > value.test
    if grep -q "Error" value.test; then
        echo "\033[92mMap$x.cub OK\033[0m"
    else
        echo "\033[31mMap$x.cub Process found\033[0m"
    fi
    x=$(( $x + 1 ))
done
x=0
./Cub3D mapdontexist.cub > value.test       #0
if grep -q "Error" value.test; then
    echo "\033[92mArgs$x OK\033[0m"
else
    echo "\033[31mArgs$x Process found\033[0m"
fi
x=$(( $x + 1 ))
./Cub3D .cub > value.test                   #1
if grep -q "Error" value.test; then
    echo "\033[92mArgs$x OK\033[0m"
else
    echo "\033[31mArgs$x Process found\033[0m"
fi
x=$(( $x + 1 ))
./Cub3D .cub --save > value.test            #2
if grep -q "Error" value.test; then
    echo "\033[92mArgs$x OK\033[0m"
else
    echo "\033[31mArgs$x Process found\033[0m"
fi
x=$(( $x + 1 ))
./Cub3D Argsdontexist.cub --save > value.test #3
if grep -q "Error" value.test; then
    echo "\033[92mArgs$x OK\033[0m"
else
    echo "\033[31mArgs$x Process found\033[0m"
fi
x=$(( $x + 1 ))
./Cub3D -save > value.test                  #4
if grep -q "Error" value.test; then
    echo "\033[92mArgs$x OK\033[0m"
else
    echo "\033[31mArgs$x Process found\033[0m"
fi
x=$(( $x + 1 ))
./Cub3D "" --save > value.test              #5
if grep -q "Error" value.test; then
    echo "\033[92mArgs$x OK\033[0m"
else
    echo "\033[31mArgs$x Process found\033[0m"
fi
x=$(( $x + 1 ))
./Cub3D "" --savee > value.test             #6
if grep -q "Error" value.test; then
    echo "\033[92mArgs$x OK\033[0m"
else
    echo "\033[31mArgs$x Process found\033[0m"
fi
x=$(( $x + 1 ))
./Cub3D "" ---save > value.test              #7
if grep -q "Error" value.test; then
    echo "\033[92mArgs$x OK\033[0m"
else
    echo "\033[31mArgs$x Process found\033[0m"
fi
x=$(( $x + 1 ))
./Cub3D map0.cub -save > value.test          #8
if grep -q "Error" value.test; then
    echo "\033[92mArgs$x OK\033[0m"
else
    echo "\033[31mArgs$x Process found\033[0m"
fi
x=$(( $x + 1 ))
./Cub3D map0.cub - > value.test              #9
if grep -q "Error" value.test; then
    echo "\033[92mArgs$x OK\033[0m"
else
    echo "\033[31mArgs$x Process found\033[0m"
fi
x=$(( $x + 1 ))
./Cub3D map0.cub e > value.test              #10
if grep -q "Error" value.test; then
    echo "\033[92mArgs$x OK\033[0m"
else
    echo "\033[31mArgs$x Process found\033[0m"
fi
x=$(( $x + 1 ))
./Cub3D map0.pub > value.test                #11
if grep -q "Error" value.test; then
    echo "\033[92mArgs$x OK\033[0m"
else
    echo "\033[31mArgs$x Process found\033[0m"
fi
x=$(( $x + 1 ))
./Cub3D > value.test                         #12
if grep -q "Error" value.test; then
    echo "\033[92mArgs$x OK\033[0m"
else
    echo "\033[31mArgs$x Process found\033[0m"
fi
x=$(( $x + 1 ))
./Cub3D "" > value.test                      #13
if grep -q "Error" value.test; then
    echo "\033[92mArgs$x OK\033[0m"
else
    echo "\033[31mArgs$x Process found\033[0m"
fi
x=$(( $x + 1 ))
./Cub3D "" "" > value.test                   #14
if grep -q "Error" value.test; then
    echo "\033[92mArgs$x OK\033[0m"
else
    echo "\033[31mArgs$x Process found\033[0m"
fi
x=$(( $x + 1 ))
./Cub3D "" "" "" > value.test                #15
if grep -q "Error" value.test; then
    echo "\033[92mArgs$x OK\033[0m"
else
    echo "\033[31mArgs$x Process found\033[0m"
fi
x=$(( $x + 1 ))
./Cub3D "" "" "" "" > value.test             #16
if grep -q "Error" value.test; then
    echo "\033[92mArgs$x OK\033[0m"
else
    echo "\033[31mArgs$x Process found\033[0m"
fi
x=$(( $x + 1 ))
./Cub3D "" "" "" "" "" > value.test          #17
if grep -q "Error" value.test; then
    echo "\033[92mArgs$x OK\033[0m"
else
    echo "\033[31mArgs$x Process found\033[0m"
fi
x=$(( $x + 1 ))
./Cub3D map0.cub "" "" "" > value.test       #18
if grep -q "Error" value.test; then
    echo "\033[92mArgs$x OK\033[0m"
else
    echo "\033[31mArgs$x Process found\033[0m"
fi
x=$(( $x + 1 ))
./Cub3D map0.cub --save "" "" "" > value.test #19
if grep -q "Error" value.test; then
    echo "\033[92mArgs$x OK\033[0m"
else
    echo "\033[31mArgs$x.cub Process found\033[0m"
fi
x=$(( $x + 1 ))

x=0
while [ $x -le 6 ]
do
    ./Cub3D validmap$x.cub > value.test
    if grep -q "Error" value.test; then
        echo "\033[31mValid Map$x.cub Valid map not accepted\033[0m"
    else
        echo "\033[92mValid Map$x.cub OK\033[0m"
    fi
    x=$(( $x + 1 ))
done