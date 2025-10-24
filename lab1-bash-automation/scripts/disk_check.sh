#!/bin/bash
# Скрипт перевіряє використання дискового простору

THRESHOLD=10

echo "Перевірка використання дискового простору..."
df -h | awk 'NR>1 {print $5, $6}' | while read output; do
  usep=$(echo $output | awk '{print $1}' | tr -d '%')
  partition=$(echo $output | awk '{print $2}')
  if [ $usep -ge $((100 - THRESHOLD)) ]; then
    echo "УВАГА: На розділі $partition залишилося менше $THRESHOLD% вільного місця!"
  fi
done

