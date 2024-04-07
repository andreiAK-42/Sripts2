#!/bin/bash

if [ -z "$1" ]; then
  echo "Укажите путь к каталогу в качестве аргумента"
  exit 1
fi

if [ ! -d "$1" ]; then
  echo "Указанный каталог не существует"
  exit 1
fi

if [ "$2" == "files" ]; then
  ls -p "$1" | grep -v / 
elif [ "$2" == "directories" ]; then
  ls -p "$1" | grep / | sed 's/\/$//'
else
  echo "Выберите что вы хотите получить (files или directories)"
  exit 1
fi