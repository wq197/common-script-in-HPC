#! /usr/bin/env bash
#change kpoints
for i in {11..21};do sed -i "4s/15 15 1/$i $i 1/g" $i/KPOINTS ;done 
