# Домашняя работа: Настройка сети на Linux.

## Цель:
получить базовые навыки настройки сети в Linux.

### Описание:
Настроить сеть на Linux. Статический IP, DHCP, роутер в кач-ве DNS, Google NS в кач-ве DNS

- назначить IP адрес для интерфейса с помощью команды ip
- назначить адрес dns сервера
- добавить маршрут по умолчанию
- насписать файл конфигурации сети с настроенными ранее параметрами

#Notes:

Тестирование настроек
```
sudo netplan try
```

Применить настройки

```
sudo netplan apply
```

Создать настройку

```
sudo netplan generate
```

Расположение конфига:

```
/etc/netplan/
```
