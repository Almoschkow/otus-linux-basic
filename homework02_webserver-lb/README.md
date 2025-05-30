# Домашнее задание "Конфигурирование web-сервера (apache, nginx, балансировка nginx)"

## Описание задания:
Настроить веб-сервер с балансировкой. FrontEnd — nginx, BackEnd — apache.

## Цели:
Создать базовый скелет web-сервера с балансировкой нагрузки.

Необходимо:
- установить nginx и apache
- настроить работу apache на порты отличные от порта 80
- настройть работу nginx на порт 80
- настроить upstrean в nginx для BackEnd apache
- настроить перенаправление обращения nginx на upstream.


### Предварительные действия:
Установить пакеты nginx и apache
```
sudo apt-get install nginx apache2 -y
```

### Проверка успешной балансировки
curl localhost:80 | grep 'Apache2 Default Page:'

> При многократной отправке Curl, результатом должен быть ответ "Apache2 Default Page:*" (Где * - один из трех портов для балансировки: 8081, 8082, 8083)

### Notes:
Папка Cheats - папка с подсказками по настройке.

Перезагрузка сервисов:
```
service nginx reload
service apache2 reload
```
