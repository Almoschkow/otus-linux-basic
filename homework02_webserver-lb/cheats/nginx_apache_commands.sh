# Установка Nginx
apt install nginx

# Установка Apache
apt install apache2

# Запуск Nginx
systemctl start nginx

# Проверка статуса
systemctl status nginx

# Запуск Apache
systemctl start apache2

# Автозапуск Apache
systemctl enable apache2

# Проверка статуса
systemctl status apache2

# Проверка портов
ss -ntlp

# проверка загрузки url
curl localhost:8081 | grep 8081

# Apache config httpd.conf

Listen 8080;

# Apache default page
/etc/apache2/conf.d/welcome.conf

# Aapche default DocumentRoot

/var/www/html

# Nginx conf
Убираем блок server { }
