#!/bin/bash
echo "" > allerror.txt
x=0
while [ $x -le 71 ]
do
    ./Cub3D map$x.cub > value.test
    cat value.test >> allerror.txt
    if grep -q "Error" value.test; then
        echo "\033[92mMap$x.cub OK\033[0m"
        echo "\033[92mMap$x.cub OK\033[0m\n" >> allerror.txt
    else
        echo "\033[31mMap$x.cub Process found\033[0m"
        echo "\033[31mMap$x.cub Process found\033[0m\n" >> allerror.txt
    fi
    x=$(( $x + 1 ))
done
x=0
./Cub3D mapdontexist.cub > value.test       #0
cat value.test >> allerror.txt
if grep -q "Error" value.test; then
    echo "\033[92mArgs$x OK\033[0m"
    echo "\033[92mArgs$x OK\n\033[0m" >> allerror.txt
else
    echo "\033[31mArgs$x Process found\033[0m"
    echo "\033[31mArgs$x Process found\n\033[0m" >> allerror.txt
fi
x=$(( $x + 1 ))
./Cub3D .cub > value.test                   #1
cat value.test >> allerror.txt
if grep -q "Error" value.test; then
    echo "\033[92mArgs$x OK\033[0m"
    echo "\033[92mArgs$x OK\n\033[0m" >> allerror.txt
else
    echo "\033[31mArgs$x Process found\033[0m"
    echo "\033[31mArgs$x Process found\n\033[0m" >> allerror.txt
fi
x=$(( $x + 1 ))
./Cub3D .cub --save > value.test            #2
cat value.test >> allerror.txt
if grep -q "Error" value.test; then
    echo "\033[92mArgs$x OK\033[0m"
    echo "\033[92mArgs$x OK\n\033[0m" >> allerror.txt
else
    echo "\033[31mArgs$x Process found\033[0m"
    echo "\033[31mArgs$x Process found\n\033[0m" >> allerror.txt
fi
x=$(( $x + 1 ))
./Cub3D Argsdontexist.cub --save > value.test #3
cat value.test >> allerror.txt
if grep -q "Error" value.test; then
    echo "\033[92mArgs$x OK\033[0m"
    echo "\033[92mArgs$x OK\n\033[0m" >> allerror.txt
else
    echo "\033[31mArgs$x Process found\033[0m"
    echo "\033[31mArgs$x Process found\n\033[0m" >> allerror.txt
fi
x=$(( $x + 1 ))
./Cub3D -save > value.test                  #4
cat value.test >> allerror.txt
if grep -q "Error" value.test; then
    echo "\033[92mArgs$x OK\033[0m"
    echo "\033[92mArgs$x OK\n\033[0m" >> allerror.txt
else
    echo "\033[31mArgs$x Process found\033[0m"
    echo "\033[31mArgs$x Process found\n\033[0m" >> allerror.txt
fi
x=$(( $x + 1 ))
./Cub3D "" --save > value.test              #5
cat value.test >> allerror.txt
if grep -q "Error" value.test; then
    echo "\033[92mArgs$x OK\033[0m"
    echo "\033[92mArgs$x OK\n\033[0m" >> allerror.txt
else
    echo "\033[31mArgs$x Process found\033[0m"
    echo "\033[31mArgs$x Process found\n\033[0m" >> allerror.txt
fi
x=$(( $x + 1 ))
./Cub3D "" --savee > value.test             #6
cat value.test >> allerror.txt
if grep -q "Error" value.test; then
    echo "\033[92mArgs$x OK\033[0m"
    echo "\033[92mArgs$x OK\n\033[0m" >> allerror.txt
else
    echo "\033[31mArgs$x Process found\033[0m"
    echo "\033[31mArgs$x Process found\n\033[0m" >> allerror.txt
fi
x=$(( $x + 1 ))
./Cub3D "" ---save > value.test              #7
cat value.test >> allerror.txt
if grep -q "Error" value.test; then
    echo "\033[92mArgs$x OK\033[0m"
    echo "\033[92mArgs$x OK\n\033[0m" >> allerror.txt
else
    echo "\033[31mArgs$x Process found\033[0m"
    echo "\033[31mArgs$x Process found\n\033[0m" >> allerror.txt
fi
x=$(( $x + 1 ))
./Cub3D map0.cub -save > value.test          #8
cat value.test >> allerror.txt
if grep -q "Error" value.test; then
    echo "\033[92mArgs$x OK\033[0m"
    echo "\033[92mArgs$x OK\n\033[0m" >> allerror.txt
else
    echo "\033[31mArgs$x Process found\033[0m"
    echo "\033[31mArgs$x Process found\n\033[0m" >> allerror.txt
fi
x=$(( $x + 1 ))
./Cub3D map0.cub - > value.test              #9
cat value.test >> allerror.txt
if grep -q "Error" value.test; then
    echo "\033[92mArgs$x OK\033[0m"
    echo "\033[92mArgs$x OK\n\033[0m" >> allerror.txt
else
    echo "\033[31mArgs$x Process found\033[0m"
    echo "\033[31mArgs$x Process found\n\033[0m" >> allerror.txt
fi
x=$(( $x + 1 ))
./Cub3D map0.cub e > value.test              #10
cat value.test >> allerror.txt
if grep -q "Error" value.test; then
    echo "\033[92mArgs$x OK\033[0m"
    echo "\033[92mArgs$x OK\n\033[0m" >> allerror.txt
else
    echo "\033[31mArgs$x Process found\033[0m"
    echo "\033[31mArgs$x Process found\n\033[0m" >> allerror.txt
fi
x=$(( $x + 1 ))
./Cub3D map0.pub > value.test                #11
cat value.test >> allerror.txt
if grep -q "Error" value.test; then
    echo "\033[92mArgs$x OK\033[0m"
    echo "\033[92mArgs$x OK\n\033[0m" >> allerror.txt
else
    echo "\033[31mArgs$x Process found\033[0m"
    echo "\033[31mArgs$x Process found\n\033[0m" >> allerror.txt
fi
x=$(( $x + 1 ))
./Cub3D > value.test                         #12
cat value.test >> allerror.txt
if grep -q "Error" value.test; then
    echo "\033[92mArgs$x OK\033[0m"
    echo "\033[92mArgs$x OK\n\033[0m" >> allerror.txt
else
    echo "\033[31mArgs$x Process found\033[0m"
    echo "\033[31mArgs$x Process found\n\033[0m" >> allerror.txt
fi
x=$(( $x + 1 ))
./Cub3D "" > value.test                      #13
cat value.test >> allerror.txt
if grep -q "Error" value.test; then
    echo "\033[92mArgs$x OK\033[0m"
    echo "\033[92mArgs$x OK\n\033[0m" >> allerror.txt
else
    echo "\033[31mArgs$x Process found\033[0m"
    echo "\033[31mArgs$x Process found\n\033[0m" >> allerror.txt
fi
x=$(( $x + 1 ))
./Cub3D "" "" > value.test                   #14
cat value.test >> allerror.txt
if grep -q "Error" value.test; then
    echo "\033[92mArgs$x OK\033[0m"
    echo "\033[92mArgs$x OK\n\033[0m" >> allerror.txt
else
    echo "\033[31mArgs$x Process found\033[0m"
    echo "\033[31mArgs$x Process found\n\033[0m" >> allerror.txt
fi
x=$(( $x + 1 ))
./Cub3D "" "" "" > value.test                #15
cat value.test >> allerror.txt
if grep -q "Error" value.test; then
    echo "\033[92mArgs$x OK\033[0m"
    echo "\033[92mArgs$x OK\n\033[0m" >> allerror.txt
else
    echo "\033[31mArgs$x Process found\033[0m"
    echo "\033[31mArgs$x Process found\n\033[0m" >> allerror.txt
fi
x=$(( $x + 1 ))
./Cub3D "" "" "" "" > value.test             #16
cat value.test >> allerror.txt
if grep -q "Error" value.test; then
    echo "\033[92mArgs$x OK\033[0m"
    echo "\033[92mArgs$x OK\n\033[0m" >> allerror.txt
else
    echo "\033[31mArgs$x Process found\033[0m"
    echo "\033[31mArgs$x Process found\n\033[0m" >> allerror.txt
fi
x=$(( $x + 1 ))
./Cub3D "" "" "" "" "" > value.test          #17
cat value.test >> allerror.txt
if grep -q "Error" value.test; then
    echo "\033[92mArgs$x OK\033[0m"
    echo "\033[92mArgs$x OK\n\033[0m" >> allerror.txt
else
    echo "\033[31mArgs$x Process found\033[0m"
    echo "\033[31mArgs$x Process found\n\033[0m" >> allerror.txt
fi
x=$(( $x + 1 ))
./Cub3D map0.cub "" "" "" > value.test       #18
cat value.test >> allerror.txt
if grep -q "Error" value.test; then
    echo "\033[92mArgs$x OK\033[0m"
    echo "\033[92mArgs$x OK\n\033[0m" >> allerror.txt
else
    echo "\033[31mArgs$x Process found\033[0m"
    echo "\033[31mArgs$x Process found\n\033[0m" >> allerror.txt
fi
x=$(( $x + 1 ))
./Cub3D map0.cub --save "" "" "" > value.test #19
cat value.test >> allerror.txt
if grep -q "Error" value.test; then
    echo "\033[92mArgs$x OK\033[0m"
    echo "\033[92mArgs$x OK\n\033[0m" >> allerror.txt
else
    echo "\033[31mArgs$x Process found\033[0m"
    echo "\033[31mArgs$x Process found\n\033[0m" >> allerror.txt
fi
x=$(( $x + 1 ))

x=0
while [ $x -le 6 ]
do
    ./Cub3D validmap$x.cub > value.test
    cat value.test >> allerror.txt
    if grep -q "Error" value.test; then
        echo "\033[31mValid Map$x.cub No error return expected\n\033[0m" >> allerror.txt
        echo "\033[31mValid Map$x.cub No error returne expected\033[0m"
    else
        echo "\033[92mValid Map$x.cub OK\n\033[0m" >> allerror.txt
        echo "\033[92mValid Map$x.cub OK\033[0m"
    fi
    x=$(( $x + 1 ))
done