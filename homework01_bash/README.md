# Домашняя работа: "Bash. Основы"

## Цель
Написать скрипт, который очищает папку от временных файлов

## Описание домашней работы:

Необходимо написать скрипт, который очищает указанную папку от временных файлов.

- Первым параметром получает директорию.
- Проверяет, что указанная директория существует. Если нет – пишет ошибку и завершается с кодом 2.
- Удаляет все файлы *.bak, *.backup, *.tmp. Для каждого типа выводит сообщение об удалении или об отсутствии таких файлов.

Запуск скрипта:
```
bash tmp_cleaner.sh
```

> testfile.backup, testfile.bak, testfile.tmp - тестовые файлы. После выполнения скрипта, файлы должны отсутствовать.
