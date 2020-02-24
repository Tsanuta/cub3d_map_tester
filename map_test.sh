#!/bin/bash
x=0
while [ $x -le 71 ]
do
    ./Cub3D map$x.cub
    pgrep -x Cub3D >/dev/null && echo "\033[31mMap$x.cub Process found\033[0m" || echo "\033[92mMap$x.cub OK\033[0m"
    x=$(( $x + 1 ))
done
x=0
./Cub3D mapdontexist.cub
pgrep -x Cub3D >/dev/null && echo "\033[31mArgs$x Process found\033[0m" || echo "\033[92mArgs$x OK\033[0m"
x=$(( $x + 1 ))
./Cub3D .cub
pgrep -x Cub3D >/dev/null && echo "\033[31mArgs$x Process found\033[0m" || echo "\033[92mArgs$x OK\033[0m"
x=$(( $x + 1 ))
./Cub3D .cub --save
pgrep -x Cub3D >/dev/null && echo "\033[31mArgs$x Process found\033[0m" || echo "\033[92mArgs$x OK\033[0m"
x=$(( $x + 1 ))
./Cub3D mapdontexist.cub --save
pgrep -x Cub3D >/dev/null && echo "\033[31mArgs$x Process found\033[0m" || echo "\033[92mArgs$x OK\033[0m"
x=$(( $x + 1 ))
./Cub3D -save
pgrep -x Cub3D >/dev/null && echo "\033[31mArgs$x Process found\033[0m" || echo "\033[92mArgs$x OK\033[0m"
x=$(( $x + 1 ))
./Cub3D "" --save
pgrep -x Cub3D >/dev/null && echo "\033[31mArgs$x Process found\033[0m" || echo "\033[92mArgs$x OK\033[0m"
x=$(( $x + 1 ))
./Cub3D map0.cub -save
pgrep -x Cub3D >/dev/null && echo "\033[31mArgs$x Process found\033[0m" || echo "\033[92mArgs$x OK\033[0m"
x=$(( $x + 1 ))
./Cub3D map0.cub -
pgrep -x Cub3D >/dev/null && echo "\033[31mArgs$x Process found\033[0m" || echo "\033[92mArgs$x OK\033[0m"
x=$(( $x + 1 ))
./Cub3D map0.cub e
pgrep -x Cub3D >/dev/null && echo "\033[31mArgs$x Process found\033[0m" || echo "\033[92mArgs$x OK\033[0m"
x=$(( $x + 1 ))
./Cub3D map0.pub
pgrep -x Cub3D >/dev/null && echo "\033[31mArgs$x Process found\033[0m" || echo "\033[92mArgs$x OK\033[0m"
x=$(( $x + 1 ))
./Cub3D
pgrep -x Cub3D >/dev/null && echo "\033[31mArgs$x Process found\033[0m" || echo "\033[92mArgs$x OK\033[0m"
x=$(( $x + 1 ))
./Cub3D ""
pgrep -x Cub3D >/dev/null && echo "\033[31mArgs$x Process found\033[0m" || echo "\033[92mArgs$x OK\033[0m"
x=$(( $x + 1 ))
./Cub3D "" ""
pgrep -x Cub3D >/dev/null && echo "\033[31mArgs$x Process found\033[0m" || echo "\033[92mArgs$x OK\033[0m"
x=$(( $x + 1 ))
./Cub3D "" "" ""
pgrep -x Cub3D >/dev/null && echo "\033[31mArgs$x Process found\033[0m" || echo "\033[92mArgs$x OK\033[0m"
x=$(( $x + 1 ))
./Cub3D "" "" "" ""
pgrep -x Cub3D >/dev/null && echo "\033[31mArgs$x Process found\033[0m" || echo "\033[92mArgs$x OK\033[0m"
x=$(( $x + 1 ))
./Cub3D "" "" "" "" ""
pgrep -x Cub3D >/dev/null && echo "\033[31mArgs$x Process found\033[0m" || echo "\033[92mArgs$x OK\033[0m"
x=$(( $x + 1 ))
./Cub3D map0.cub "" "" ""
pgrep -x Cub3D >/dev/null && echo "\033[31mArgs$x Process found\033[0m" || echo "\033[92mArgs$x OK\033[0m"
x=$(( $x + 1 ))
./Cub3D map0.cub --save "" "" ""
pgrep -x Cub3D >/dev/null && echo "\033[31mArgs$x Process found\033[0m" || echo "\033[92mArgs$x OK\033[0m"
x=$(( $x + 1 ))
