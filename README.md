# BlackLoyal Landing Page

Лендинг для геймифицированной системы лояльности компьютерных клубов на Nuxt 3 + Tailwind CSS с автоматическим деплоем через GitHub Actions.

## Содержание

- [Технологический стек](#технологический-стек)
- [Архитектура](#архитектура)
- [Локальная разработка](#локальная-разработка)
- [Переменные окружения](#переменные-окружения)
- [Настройка SSH](#настройка-ssh)
- [Настройка GitHub Secrets](#настройка-github-secrets)
- [Деплой](#деплой)
- [Мониторинг](#мониторинг)
- [Устранение неполадок](#устранение-неполадок)
- [Полезные команды](#полезные-команды)

---

## Технологический стек

- **Frontend**: Nuxt 3 + Vue 3 + TypeScript
- **Styling**: Tailwind CSS
- **Package Manager**: Yarn 3
- **Контейнеризация**: Docker + Docker Compose
- **Reverse Proxy**: Traefik (автоматический SSL через Let's Encrypt)
- **Инфраструктура**: Terraform (Timeweb Cloud)
- **CI/CD**: GitHub Actions
- **Аналитика**: Yandex Metrica
- **Уведомления**: Telegram Bot API

---

## Архитектура

Проект использует разделение ответственности:

- **Terraform** - управление инфраструктурой (DNS, firewall, настройка сервера)
- **GitHub Actions** - CI/CD (тесты, сборка Docker образов, деплой)
- **Docker** - изоляция окружения приложения
- **Traefik** - reverse proxy с автоматическим SSL

### Структура

```
blackloyal_lp/
├── .github/workflows/
│   ├── infrastructure.yml      # Управление инфраструктурой
│   ├── application.yml         # CI/CD приложения
│   └── monitoring.yml          # Мониторинг и обслуживание
├── terraform/
│   ├── main.tf
│   ├── variables.tf
│   ├── providers.tf
│   └── modules/timeweb/
│       ├── server/
│       ├── dns/
│       └── security/
├── frontend/
│   ├── components/
│   ├── pages/
│   ├── server/api/
│   ├── Dockerfile
│   ├── docker-compose.prod.yml
│   ├── traefik/
│   └── backup.sh
└── README.md                   # Эта документация
```

---

## Локальная разработка

### Требования

- Node.js 18+
- Yarn 3+
- Docker (опционально)

### Установка

```bash
# Клонировать репозиторий
git clone <repository-url>
cd blackloyal_lp/frontend

# Создать конфигурацию
cp .env.example .env.development

# Установить зависимости
yarn install

# Запустить dev сервер
yarn dev

# Или через Docker
docker-compose -f docker-compose.dev.yml up
```

### Доступные команды

```bash
yarn dev          # Dev сервер (http://localhost:3000)
yarn build        # Сборка для продакшена
yarn preview      # Предпросмотр prod сборки
yarn lint         # Линтинг
yarn lint:fix     # Автоисправление
yarn typecheck    # Проверка типов TypeScript
```

---

## Переменные окружения

### Локальная разработка (.env.development)

```bash
NUXT_PUBLIC_SITE_URL=http://localhost:3000
TELEGRAM_BOT_TOKEN=your_bot_token
TELEGRAM_CHAT_ID=your_chat_id
NUXT_PUBLIC_ANALYTICS_ID=your_metrica_id
```

### Продакшен (.env.production)

Создается автоматически GitHub Actions из секретов. 

Если нужно создать вручную на сервере:

```bash
NUXT_PUBLIC_SITE_URL=https://your-domain.ru
DOMAIN=your-domain.ru
TELEGRAM_BOT_TOKEN=production_bot_token
TELEGRAM_CHAT_ID=production_chat_id
ACME_EMAIL=admin@your-domain.ru
TRAEFIK_AUTH=admin:$$apr1$$xyz...
NUXT_PUBLIC_ANALYTICS_ID=metrica_counter_id
NUXT_PUBLIC_TELEGRAM_BOT_USERNAME=bot_username
NODE_ENV=production
PORT=3000
HOSTNAME=0.0.0.0
```

### Как получить значения

**TELEGRAM_BOT_TOKEN**:
```bash
# Создайте бота через @BotFather в Telegram
# Команда: /newbot
# Скопируйте токен
```

**TELEGRAM_CHAT_ID**:
```bash
# Добавьте бота в группу/канал (сделайте администратором)
# Отправьте сообщение
# Откройте: https://api.telegram.org/bot<TOKEN>/getUpdates
# Найдите "chat":{"id": в ответе
```

**TRAEFIK_AUTH**:
```bash
apt-get install apache2-utils
htpasswd -nb admin your_password
# Замените $ на $$ в выводе
```

**NUXT_PUBLIC_ANALYTICS_ID**:
Создайте счетчик на metrica.yandex.ru

---

## Настройка SSH

### Создание ключей

```bash
# Создать новую пару
ssh-keygen -t rsa -b 4096 -C "deployment-key"

# Публичный ключ (для GitHub Secrets: SSH_PUBLIC_KEY)
cat ~/.ssh/id_rsa.pub

# Приватный ключ (для GitHub Secrets: SSH_PRIVATE_KEY)
cat ~/.ssh/id_rsa
```

### Проверка ключей

```bash
# Проверка формата
ssh-keygen -l -f ~/.ssh/id_rsa.pub
ssh-keygen -l -f ~/.ssh/id_rsa
```

---

## Настройка GitHub Secrets

Settings → Secrets and variables → Actions → New repository secret

### Обязательные секреты

| Имя | Описание | Как получить |
|-----|----------|--------------|
| `TWC_TOKEN` | API токен Timeweb Cloud | timeweb.cloud/my/api-keys |
| `SERVER_ID` | ID сервера в Timeweb | timeweb.cloud/my/servers (ID в колонке или URL) |
| `SSH_PUBLIC_KEY` | SSH публичный ключ | `cat ~/.ssh/id_rsa.pub` |
| `SSH_PRIVATE_KEY` | SSH приватный ключ | `cat ~/.ssh/id_rsa` (полностью с заголовками) |
| `TELEGRAM_BOT_TOKEN` | Токен Telegram бота | @BotFather в Telegram |
| `TELEGRAM_CHAT_ID` | ID чата для уведомлений | См. [Переменные окружения](#переменные-окружения) |
| `NUXT_PUBLIC_ANALYTICS_ID` | Yandex Metrica ID | metrica.yandex.ru |
| `NUXT_PUBLIC_SITE_URL` | URL сайта | `https://your-domain.ru` |
| `DOMAIN` | Домен без протокола | `your-domain.ru` |
| `ACME_EMAIL` | Email для Let's Encrypt | `admin@your-domain.ru` |
| `TRAEFIK_AUTH` | Basic auth для Traefik | `htpasswd -nb admin password` ($ → $$) |
| `NUXT_PUBLIC_TELEGRAM_BOT_USERNAME` | Username бота (опционально) | Без @ |

### Получение SERVER_ID через API

```bash
curl -H "Authorization: Bearer YOUR_TWC_TOKEN" \
     https://api.timeweb.cloud/api/v1/servers
```

---

## Деплой

### Предварительные требования

1. Домен зарегистрирован в Timeweb Cloud
2. VPS сервер создан в Timeweb (Ubuntu 22.04, минимум 2GB RAM)
3. GitHub Secrets настроены
4. SSH ключи созданы

### Деплой через GitHub Actions (рекомендуется)

Все переменные берутся из GitHub Secrets, файл `terraform.tfvars` не нужен.

### Локальный запуск Terraform (опционально)

Только если хотите запускать Terraform локально:

```bash
cd terraform
cp terraform.tfvars.example terraform.tfvars
```

Заполните `terraform.tfvars`:

```hcl
twc_token = "your_api_token"
domain = "your-domain.ru"
server_id = "your_server_id"
ssh_key_name = "blackloyal-key"
ssh_public_key = "ssh-rsa AAAAB3..."
ssh_private_key = "-----BEGIN OPENSSH PRIVATE KEY-----\n...\n-----END OPENSSH PRIVATE KEY-----"
project_name = "blackloyal"
```

### Запуск инфраструктуры

**1. Запустите Terraform (создание инфраструктуры):**
- Actions → Infrastructure Management → Run workflow
- Выберите action: `apply`
- Дождитесь завершения (5-10 мин)

Terraform создаст:
- DNS записи для домена
- Firewall правила
- Установит Docker, Docker Compose, fail2ban
- Создаст директорию `/opt/blackloyal`

**2. Добавьте deploy key на GitHub (один раз):**

```bash
# Подключитесь к серверу
ssh root@your-server-ip

# Создайте SSH ключ для доступа к GitHub
ssh-keygen -t rsa -b 4096 -C "server-deploy-key" -f ~/.ssh/github_deploy
cat ~/.ssh/github_deploy.pub
```

Добавьте публичный ключ в GitHub:
- Settings → SSH and GPG keys → New SSH key
- Title: `server-deploy-key`
- Key: содержимое `~/.ssh/github_deploy.pub`

Настройте SSH config на сервере:
```bash
cat >> ~/.ssh/config << 'EOF'
Host github.com
  HostName github.com
  User git
  IdentityFile ~/.ssh/github_deploy
  StrictHostKeyChecking no
EOF
```

**3. Деплой приложения (автоматический):**

```bash
# Сделайте изменения в коде
git add .
git commit -m "Initial deployment"
git push origin main
```

GitHub Actions автоматически:
1. Соберет и протестирует приложение
2. Создаст Docker образ и загрузит в GitHub Container Registry
3. Подключится к серверу по SSH
4. Клонирует репозиторий (если первый раз) или обновит код
5. Создаст `.env.production` из GitHub Secrets
6. Загрузит Docker образ и запустит контейнеры
7. Проверит работоспособность через health check

Или запустите вручную:
- Actions → Application CI/CD → Run workflow

### Проверка

```bash
# Health check
curl https://your-domain.ru/api/health

# SSL сертификат
curl -I https://your-domain.ru

# Логи
ssh root@your-server-ip
cd /opt/blackloyal/frontend
docker-compose -f docker-compose.prod.yml logs -f app
```

---

## Мониторинг

### Автоматический

GitHub Actions запускает мониторинг каждые 6 часов:
- Проверка состояния приложения
- Проверка ресурсов
- Проверка SSL сертификатов

### Ручной

Actions → Monitoring & Maintenance → Run workflow:
- `health-check` - проверка состояния
- `cleanup` - очистка системы (Docker images, логи)
- `backup` - создание бэкапа
- `security-update` - обновления безопасности

### Метрики

```bash
# На сервере
ssh root@your-server-ip

# Статус контейнеров
docker-compose -f /opt/blackloyal/frontend/docker-compose.prod.yml ps

# Использование ресурсов
docker stats

# Диск
df -h

# Память
free -h

# Логи
docker-compose -f /opt/blackloyal/frontend/docker-compose.prod.yml logs --tail=100
```

---

## Устранение неполадок

### SSH: Permission denied (publickey)

**Причина:** Неправильные SSH ключи

**Решение:**
```bash
# Проверьте ключи в GitHub Secrets
# SSH_PRIVATE_KEY должен содержать полный ключ с заголовками:
# -----BEGIN OPENSSH PRIVATE KEY-----
# ...
# -----END OPENSSH PRIVATE KEY-----

# На сервере проверьте authorized_keys
ssh root@your-server-ip
cat ~/.ssh/authorized_keys
```

### Terraform: Domain not found

**Причина:** Домен не зарегистрирован в Timeweb Cloud

**Решение:**
```bash
# Проверьте домены через API
curl -H "Authorization: Bearer YOUR_TWC_TOKEN" \
     https://api.timeweb.cloud/api/v1/domains

# Зарегистрируйте домен в панели Timeweb
```

### Docker: Cannot connect to daemon

**Решение:**
```bash
systemctl status docker
systemctl start docker
systemctl enable docker
```

### Docker: Port already in use

**Решение:**
```bash
# Найдите процесс
lsof -i :80
lsof -i :443

# Остановите конфликтующий сервис
systemctl stop nginx
systemctl disable nginx

# Или остановите старые контейнеры
docker-compose down
docker ps -a
docker rm -f <container_id>
```

### Docker: No space left on device

**Решение:**
```bash
# Проверка места
df -h

# Очистка Docker
docker system prune -a --volumes -f

# Очистка логов
journalctl --vacuum-time=7d

# Очистка apt
apt-get clean && apt-get autoclean && apt-get autoremove -y
```

### SSL: Сертификат не получен

**Причины:**
- DNS не настроен
- ACME_EMAIL не указан
- Порты 80/443 закрыты

**Решение:**
```bash
# Проверьте DNS
dig your-domain.ru A
# Должен вернуть IP сервера

# Проверьте переменные
cat /opt/blackloyal/frontend/.env.production | grep ACME_EMAIL

# Проверьте firewall
ufw status
ufw allow 80/tcp
ufw allow 443/tcp

# Проверьте логи Traefik
docker-compose -f docker-compose.prod.yml logs reverse-proxy | grep -i acme

# Перезапустите Traefik
docker-compose -f docker-compose.prod.yml restart reverse-proxy
```

### SSL: Сертификат истек

**Решение:**
```bash
cd /opt/blackloyal/frontend
docker-compose -f docker-compose.prod.yml down
docker volume rm traefik-certs
docker-compose -f docker-compose.prod.yml up -d
```

### Приложение: Не запускается

**Решение:**
```bash
# Проверьте логи
docker-compose -f docker-compose.prod.yml logs app

# Проверьте переменные окружения
cat /opt/blackloyal/frontend/.env.production

# Пересоберите
docker-compose -f docker-compose.prod.yml down
docker-compose -f docker-compose.prod.yml up -d --build --force-recreate
```

### Telegram: Уведомления не работают

**Решение:**
```bash
# Проверьте токен бота
curl "https://api.telegram.org/bot<TOKEN>/getMe"

# Отправьте тестовое сообщение
curl -X POST "https://api.telegram.org/bot<TOKEN>/sendMessage" \
     -d "chat_id=<CHAT_ID>" \
     -d "text=Test"

# Убедитесь, что бот добавлен в группу и является администратором
# Проверьте переменные
cat .env.production | grep TELEGRAM
```

### GitHub Actions: Workflow failed

**Решение:**
1. Actions → выберите failed workflow → посмотрите логи
2. Проверьте все GitHub Secrets
3. Убедитесь, что имена секретов правильные:
   - `SSH_PRIVATE_KEY` (не `SERVER_SSH_KEY`)
   - `TWC_TOKEN`
   - `SERVER_ID`

### DNS: Домен не резолвится

**Решение:**
```bash
# Проверьте DNS записи
dig @8.8.8.8 your-domain.ru
dig @1.1.1.1 your-domain.ru

# Проверьте настройки в Timeweb
# Домены → ваш домен → DNS записи
# A-запись должна указывать на IP сервера

# Очистите локальный DNS кэш
# macOS:
sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder

# Linux:
sudo systemd-resolve --flush-caches
```

---

## Полезные команды

### Локальная разработка

```bash
cd frontend

# Установка зависимостей
yarn install

# Запуск dev сервера
yarn dev

# Сборка
yarn build

# Проверка кода
yarn lint
yarn typecheck

# Docker
docker-compose -f docker-compose.dev.yml up
docker-compose -f docker-compose.dev.yml down
```

### Terraform (только для локального запуска)

Если используете GitHub Actions, эти команды не нужны. Для локального запуска:

```bash
cd terraform

# Создайте terraform.tfvars (см. раздел "Деплой")
cp terraform.tfvars.example terraform.tfvars
# Заполните переменные

# Инициализация
terraform init

# Проверка конфигурации
terraform validate
terraform fmt -check

# Планирование изменений
terraform plan

# Применение изменений
terraform apply

# Вывод информации
terraform output
terraform output -raw server_ip

# Уничтожение инфраструктуры
terraform destroy
```

При локальном запуске переменные берутся из `terraform.tfvars`.

### Сервер

```bash
# Подключение
ssh root@your-server-ip

# Статус системы
systemctl status docker
systemctl status blackloyal
systemctl status fail2ban

# Логи
journalctl -u blackloyal -f
journalctl -xe

# Ресурсы
htop
df -h
free -h
docker stats
```

### Docker на сервере

```bash
cd /opt/blackloyal/frontend

# Статус
docker-compose -f docker-compose.prod.yml ps

# Логи
docker-compose -f docker-compose.prod.yml logs
docker-compose -f docker-compose.prod.yml logs -f app
docker-compose -f docker-compose.prod.yml logs -f reverse-proxy

# Перезапуск
docker-compose -f docker-compose.prod.yml restart
docker-compose -f docker-compose.prod.yml restart app

# Остановка/запуск
docker-compose -f docker-compose.prod.yml down
docker-compose -f docker-compose.prod.yml up -d

# Пересборка
docker-compose -f docker-compose.prod.yml up -d --build --force-recreate

# Очистка
docker system prune -f
docker image prune -a -f
docker volume prune -f
```

### Обновление приложения

```bash
# Локально внесите изменения
git add .
git commit -m "Update: описание изменений"
git push origin main
```

GitHub Actions автоматически задеплоит изменения.

Или запустите деплой вручную:
- Actions → Application CI/CD → Run workflow

### Бэкап

```bash
# Автоматически через GitHub Actions
# Actions → Monitoring & Maintenance → Run workflow → backup

# Вручную на сервере
ssh root@your-server-ip
/opt/blackloyal/frontend/backup.sh

# Бэкапы сохраняются в /opt/backups/blackloyal/
ls -lh /opt/backups/blackloyal/
```

### Проверка работоспособности

```bash
# Health check
curl https://your-domain.ru/api/health

# Главная страница
curl -I https://your-domain.ru

# SSL сертификат
echo | openssl s_client -servername your-domain.ru -connect your-domain.ru:443 2>/dev/null | openssl x509 -noout -dates

# Sitemap
curl https://your-domain.ru/sitemap.xml

# DNS
dig your-domain.ru

# Ping
ping your-domain.ru
```

---

## Безопасность

### Firewall

Настраивается автоматически через Terraform:
- Порт 22 (SSH): открыт
- Порт 80 (HTTP): открыт (редирект на HTTPS)
- Порт 443 (HTTPS): открыт
- Остальные порты: закрыты

### SSL

- Автоматические сертификаты от Let's Encrypt через Traefik
- Автоматическое обновление сертификатов
- HTTP → HTTPS редирект
- TLS 1.2 и 1.3

### Security Headers

Настроены через Traefik:
- X-Frame-Options: DENY
- X-Content-Type-Options: nosniff
- Referrer-Policy: strict-origin-when-cross-origin
- Permissions-Policy
- Content-Security-Policy

### Fail2ban

Установлен и настроен автоматически через Terraform для защиты от брутфорса SSH.

### Хранение секретов

- Продакшен секреты: GitHub Secrets
- Локальные секреты: `.env.development` (в .gitignore)
- Сервер: `.env.production` (не коммитится в Git)
- Terraform: `terraform.tfvars` (в .gitignore)

---

## SEO

Настроено автоматически:
- Meta теги для всех страниц
- Open Graph разметка
- JSON-LD схема
- Sitemap.xml (`/sitemap.xml`)
- Robots.txt (`/robots.txt`)
- Canonical URLs

---

## Лицензия

Все права защищены © 2025 BlackLoyal

