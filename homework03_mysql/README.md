# Домашняя работа: "Настройка репликации MySQL и скрипт бэкапа"

## Цель:
создать репликацию базы данных master-slave для последующей работы с бекапами.

## Описание:

- установить mysql на двух серверах
- прверить доступность порта mysql с одного сервера на другой
- создать пользователя для репликации на сервере master
- настроить реплику slave
- написать скрипт бекапа баз с реплики

### Notes:
Установка mysql-server на двух машинах:
```
sudo apt install mysql-server-8.0 -y 
```

Скрипт безопасности mysql (опционально):
```
mysql_secure_installation
```

Вход в msql от root:
```
sudo mysql 
```
Рестарт сервиса mysql:
```
service mysql restart
```

Запуск скрипта на реплике
```
bash backup_repl.sh
```
