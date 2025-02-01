# Используем официальный образ Maven для сборки приложения
FROM maven:3.8.4-openjdk-17 AS builder

# Копируем исходный код в контейнер
WORKDIR /app
COPY . .

# Собираем приложение
RUN mvn clean package -DskipTests

# Используем образ OpenJDK для запуска приложения
FROM openjdk:17-slim

# Копируем собранный JAR из предыдущего этапа
COPY --from=builder /app/target/*.jar app.jar

# Указываем точку входа для запуска приложения
ENTRYPOINT ["java", "-jar", "/app.jar"]