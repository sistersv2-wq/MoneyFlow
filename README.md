# MoneyFlow: публикация (≈15 минут, бесплатно)
Регистрация, вход, выход и облачная база работают через Supabase. Хостинг файлов даёт постоянную ссылку.

## 1. База данных и вход (Supabase)
1. Создайте проект на supabase.com.
2. SQL Editor → вставьте содержимое `setup.sql` → Run.
3. Project Settings → API: скопируйте Project URL и anon public key в `config.js`.
4. (По желанию) Authentication → Providers → Email: отключите «Confirm email», если не нужно подтверждение почты.
5. Authentication → URL Configuration: в Site URL вставьте ссылку из шага 2 ниже.

## 2. Хостинг (постоянная ссылка)
Любой вариант: загрузите всю папку как есть.
- Netlify: app.netlify.com/drop, перетащите папку → получите `https://имя.netlify.app`.
- Vercel или GitHub Pages: подойдёт так же, сборка не нужна.
Нужен HTTPS, он включён по умолчанию.

## 3. Установка на телефон
- iPhone: Safari → «Поделиться» → «На экран Домой».
- Android: Chrome → меню → «Установить приложение».

Один аккаунт на любом устройстве показывает одни и те же данные. В `anon key` нет секретов: доступ к данным закрыт правилами в `setup.sql`.
