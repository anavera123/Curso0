#!/bin/bash

for i  in $(seq 2 $#)
do
directorio=${!i}
if [ -d $directorio ]; then 
echo "El directorio '$directorio' ya existe."
else 
mkdir $directorio
fi

for fichero in $1/*
do
if [ -f $fichero ]; then
echo copiando $fichero a $directorio
cp $fichero  $directorio/
fi
done

done
