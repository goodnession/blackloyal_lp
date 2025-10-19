# Итоговые изменения для исправления CI/CD

## Что было исправлено

### 1. ✅ ESLint конфигурация
- Создан `frontend/eslint.config.mjs` для ESLint 9.x
- Все ошибки линтинга исправлены автоматически

### 2. ✅ Зависимости
- Добавлен `izitoast` в `frontend/package.json` (требуется для `nuxt-toast`)

### 3. ✅ Dockerfile
- Добавлен `corepack enable` для поддержки Yarn 4.10.3
- Добавлено копирование `.yarnrc.yml` для правильной работы node_modules
- Использование `--mode=skip-build` при установке зависимостей

### 4. ✅ GitHub Actions Workflow (актуальный подход 2025)
**Изменения в `.github/workflows/application.yml`:**

- **Добавлены `permissions` блоки** согласно best practices:
  ```yaml
  build-image:
    permissions:
      contents: read
      packages: write  # Для push в GHCR
  
  deploy:
    permissions:
      contents: read
      packages: read   # Для pull из GHCR
  ```

- **Используется встроенный `GITHUB_TOKEN`** (НЕ нужен отдельный PAT):
  ```yaml
  password: ${{ secrets.GITHUB_TOKEN }}
  ```

- **Автоматическая авторизация при деплое**:
  ```bash
  echo "${{ secrets.GITHUB_TOKEN }}" | docker login ghcr.io ...
  ```

### 5. ✅ Документация (README.md)
- Обновлена секция про GHCR с актуальной информацией
- Удалено упоминание о необходимости создавать Personal Access Token
- Добавлены решения типичных проблем
- Уточнена информация о приватности образов

## Что нужно сделать СЕЙЧАС

### Шаг 1: Настройте права в репозитории (ОБЯЗАТЕЛЬНО)

1. Откройте: https://github.com/goodnession/blackloyal_lp/settings/actions

2. Найдите раздел **"Workflow permissions"**

3. Выберите **"Read and write permissions"**

4. Нажмите **Save**

### Шаг 2: Закоммитьте изменения

```bash
git add .
git commit -m "Fix CI/CD: ESLint config, Docker build, GHCR permissions"
git push origin main
```

### Шаг 3: Проверьте деплой

После push GitHub Actions автоматически:
1. ✅ Пройдёт линтинг (теперь с правильным eslint.config.mjs)
2. ✅ Соберёт приложение
3. ✅ Создаст Docker образ
4. ✅ Запушит в GHCR (с правильными permissions)
5. ✅ Задеплоит на сервер

## Проверка результата

```bash
# Проверьте workflow
https://github.com/goodnession/blackloyal_lp/actions

# Проверьте образ в GHCR
https://github.com/goodnession?tab=packages

# Проверьте сайт
curl https://your-domain.ru/api/health
```

## Приватность образов

✅ **Docker образы приватные**, если:
- Репозиторий приватный (образ автоматически приватный)
- ИЛИ вы вручную установили видимость в Private

Проверить: https://github.com/goodnession?tab=packages → blackloyal_lp → Settings

## Что НЕ НУЖНО делать

❌ Создавать Personal Access Token для GHCR
❌ Добавлять `GHCR_TOKEN` в GitHub Secrets
❌ Менять синтаксис workflow (он уже правильный)

## Если всё равно возникают ошибки

### Ошибка: "denied: installation not allowed to Create organization package"

**Причина**: Не настроены Workflow permissions

**Решение**: См. Шаг 1 выше

### Ошибка: "authentication required"

**Причина**: Workflow permissions настроены неправильно

**Решение**: 
1. Убедитесь, что выбраны **"Read and write permissions"**
2. Пересоздайте workflow (повторите push)

### Ошибка: "ESLint couldn't find eslint.config"

**Причина**: Файл не закоммичен

**Решение**: `git add frontend/eslint.config.mjs && git commit && git push`

## Полезные ссылки

- [GitHub Actions Permissions](https://docs.github.com/en/actions/security-guides/automatic-token-authentication#permissions-for-the-github_token)
- [GitHub Container Registry](https://docs.github.com/en/packages/working-with-a-github-packages-registry/working-with-the-container-registry)
- [Docker Login Action](https://github.com/docker/login-action)

