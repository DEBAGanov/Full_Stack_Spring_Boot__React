Запуск приложения

Запустить Docker
Скачать образ Postgres postgres:latest

Запустить в терминале:
"docker run --name postgres -e POSTGRES_PASSWORD=password -e POSTGRES_USER=postgres -e POSTGRES_DB=postgres -p 127.0.0.1:5432:5432 -d postgres:latest"
