# Video Files Directory

## ВАЖНО: Проблема с размером видео

Ваш текущий файл `vsl.mp4` весит **207 MB**, что:
- Превышает лимит GitHub (100 MB)
- Слишком большой для веб-страницы (загрузка займет много времени)
- Негативно влияет на UX и SEO

## Рекомендуемые решения

### Вариант 1: Сжать видео (РЕКОМЕНДУЕТСЯ для самохостинга)

Используйте FFmpeg для сжатия без значительной потери качества:

```bash
# Сжатие до ~10-20 MB с хорошим качеством
ffmpeg -i vsl.mp4 -c:v libx264 -crf 28 -preset slow -c:a aac -b:a 128k vsl-compressed.mp4

# Создание WebM версии
ffmpeg -i vsl.mp4 -c:v libvpx-vp9 -crf 35 -b:v 0 -c:a libopus -b:a 128k vsl-compressed.webm
```

Целевой размер: **10-50 MB** максимум

### Вариант 2: Использовать видеохостинг (ЛУЧШИЙ ВАРИАНТ)

Загрузите видео на платформу и используйте embed:

**YouTube:**
- Бесплатно
- Быстрая загрузка
- Автоматическая оптимизация

**Vimeo:**
- Профессиональный вид
- Без рекламы
- Кастомизация плеера

**RuTube:**
- Российская платформа
- Подходит для локальной аудитории

### Вариант 3: CDN для больших файлов

Используйте CDN сервис:
- Cloudflare R2
- AWS S3 + CloudFront
- DigitalOcean Spaces
- Яндекс.Облако Object Storage

## Обновление компонента для видеохостинга

Если выберете YouTube/Vimeo, обновите `VideoPlayer.vue`:

```vue
<template>
  <div class="video-player-wrapper">
    <div class="video-container">
      <!-- Для YouTube -->
      <iframe
        src="https://www.youtube.com/embed/YOUR_VIDEO_ID"
        frameborder="0"
        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
        allowfullscreen
      ></iframe>
      
      <!-- Для Vimeo -->
      <iframe
        src="https://player.vimeo.com/video/YOUR_VIDEO_ID"
        frameborder="0"
        allow="autoplay; fullscreen; picture-in-picture"
        allowfullscreen
      ></iframe>
    </div>
  </div>
</template>
```

## Текущая структура файлов

Поместите сжатые видео файлы здесь:
- `vsl.mp4` - основное видео (МАКС 50 MB!)
- `vsl.webm` - WebM версия (опционально)
- `vsl-poster.png` - превью изображение (оптимизируйте, макс 500 KB)

## Оптимизация poster изображения

```bash
# Оптимизация PNG
pngquant vsl-poster.png --output vsl-poster-optimized.png --quality=65-80

# Или конвертация в JPEG с оптимизацией
ffmpeg -i vsl-poster.png -q:v 85 vsl-poster.jpg
```

## Что делать сейчас

1. **Файлы уже исключены из git** (.gitignore обновлен)
2. Выберите один из вариантов выше
3. Если используете самохостинг - сожмите видео до 10-50 MB
4. Поместите оптимизированные файлы в эту папку
5. Сделайте commit и push изменений

## Примечание

Видео файлы НЕ должны храниться в git репозитории. Они уже добавлены в .gitignore.

