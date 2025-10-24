#!/bin/bash
# Скрипт підраховує кількість файлів заданого типу

if [ $# -ne 2 ]; then
  echo "Використання: $0 <шлях_до_директорії> <розширення>"
  exit 1
fi

DIR=$1
EXT=$2

if [ ! -d "$DIR" ]; then
  echo "Помилка: директорія $DIR не існує!"
  exit 1
fi

COUNT=$(find "$DIR" -type f -name "*.$EXT" | wc -l)
echo "Directory $DIR has $COUNT files with extension .$EXT."
