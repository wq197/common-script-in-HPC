#!/usr/bin/env bash
#change lattice
for i in 0.95 0.96 0.97 0.98 0.99 1.01 1.02 1.03 1.04 1.05;do cp -r 1.00 $i;sed -i "2s/1.0/$i/g" $i/POSCAR;done
