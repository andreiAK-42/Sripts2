#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Использование: $0 <directory>"
    exit 1
fi

if [ ! -d "$1" ]; then
    echo "Ошибка: Директория $1 не найдена."
    exit 1
fi

echo "Что вывести в список? (files/directories)"
read choice

if [ "$choice" == "files" ]; then
    echo "Файлы в $1:"
    ls -p "$1" | grep -v / 
elif [ "$choice" == "directories" ]; then
    echo "Директории в $1:"
    ls -p "$1" | grep / 
else
    echo "Неверное значение. Используйте 'files' или 'directories'."
    exit 1
fi