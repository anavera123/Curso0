#!/bin/bash

for fichero in $1/*
do
if [ -f "$fichero" ];
then
echo "$fichero -> esto es un fichero"
else
echo "$fichero -> esto es un directorio"
fi

done
