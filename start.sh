#!/bin/sh

# Aguardar até que o serviço MySQL esteja pronto
while ! ncat -z db 3306; do
    echo "Aguardando o MySQL estar disponível..."
    sleep 1
done

python manage.py runserver 0.0.0.0:8000
