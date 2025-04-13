# PriceTrack

PriceTrack - это сервис для отслеживания цен на товары в различных интернет-магазинах. Приложение позволяет добавлять товары, отслеживать изменения цен и получать уведомления о снижении цен.

## Возможности

- 🌙 Темная и светлая темы
- 📊 Графики изменения цен (по часам, дням, неделям, месяцам и годам)
- 🔔 Уведомления о снижении цен
- 📱 Адаптивный дизайн
- 🛍️ Поддержка различных магазинов (Ozon, Wildberries, AliExpress)
- 💾 Сохранение истории цен
- 📧 Email-уведомления
- 🔄 Автоматическое обновление цен

## Технологии

### Frontend
- React
- TypeScript
- Styled Components
- React Query
- Chart.js
- Framer Motion
- React Router
- React Toastify

### Backend
- Node.js
- Express
- TypeScript
- TypeORM
- PostgreSQL
- Puppeteer

## Установка

### Требования
- Node.js 18+
- PostgreSQL 12+

### Настройка базы данных
1. Установите PostgreSQL
2. Создайте базу данных:
```sql
CREATE DATABASE pricetrack;
```

### Установка зависимостей
```bash
# Установка зависимостей backend
cd backend
npm install

# Установка зависимостей frontend
cd frontend
npm install
```

### Настройка окружения
1. Скопируйте `.env.example` в `.env` в директории backend
2. Настройте переменные окружения в `.env`

## Запуск

### Development
```bash
# Запуск backend
cd backend
npm run dev

# Запуск frontend
cd frontend
npm run start
```

### Production
```bash
# Сборка и запуск backend
cd backend
npm run build
npm start

# Сборка и запуск frontend
cd frontend
npm run build
npm run preview
```

### Настройка автоматического обновления цен
PriceTrack поддерживает автоматическое обновление цен товаров через регулярные интервалы времени:

```bash
# Настройка автоматического обновления цен (через cron)
cd backend
./setup-cron.sh
```

Подробная информация о настройке и использовании этой функции доступна в файле `backend/PRICE_UPDATE_README.md`.

## Контакты

- Telegram: [@felixdwe](https://t.me/felixdwe)
- Email: fluffythelegacy@gmail.com
- Телефон: +7 (993) 950-37-22

## Лицензия

MIT

## Расширенный парсер цен на основе Python

Для более надежного парсинга цен с различных маркетплейсов был разработан Python-парсер, использующий Playwright для рендеринга страниц с JavaScript.

### Установка Python-парсера

Для использования Python-парсера необходимо:

1. Установить Python 3.7 или выше
2. Запустить скрипт установки:

```bash
cd backend
npm run setup:parser
```

Скрипт установит все необходимые зависимости Python и настроит браузер Playwright.

### Как работает парсер

Парсер автоматически распознает маркетплейс по URL и использует специфичные для каждого маркетплейса селекторы для извлечения данных о товаре.

Поддерживаемые маркетплейсы:
- Ozon
- Wildberries
- AliExpress
- Другие сайты (используется универсальный алгоритм парсинга)

Если Python-парсер по каким-то причинам не сработает, система автоматически вернется к использованию JavaScript-парсера. 