// https://nuxt.com/docs/api/configuration/nuxt-config
export default defineNuxtConfig({
  compatibilityDate: '2025-07-15',
  devtools: { enabled: true },

  // SSR по умолчанию для лучшего SEO
  ssr: true,

  // CSS
  css: ['~/assets/css/main.css'],
  // Модули
  modules: [
    '@nuxtjs/tailwindcss',
    '@nuxt/image',
    'nuxt-toast',
    '@nuxtjs/seo',
  ],

  site: {
    url: 'https://blackloyal.ru',
    name: 'BlackLoyal',
    description: 'Геймифицированная система лояльности для компьютерных клубов. Увеличьте возврат клиентов на 35% и выручку на 40% в месяц.',
    defaultLocale: 'ru',
  },

  ogImage: {
    enabled: false,
  },

  // Image оптимизация
  image: {
    quality: 80,
    format: ['webp', 'avif', 'png'],
    screens: {
      xs: 320,
      sm: 640,
      md: 768,
      lg: 1024,
      xl: 1280,
      xxl: 1536,
    },
  },

  // Runtime config для переменных окружения
  runtimeConfig: {
    // Приватные ключи (только на сервере)
    telegramBotToken: process.env.NUXT_TELEGRAM_BOT_TOKEN || process.env.TELEGRAM_BOT_TOKEN,
    telegramChatId: process.env.NUXT_TELEGRAM_CHAT_ID || process.env.TELEGRAM_CHAT_ID,

    // Публичные ключи (доступны на клиенте)
    public: {
      siteUrl: process.env.NUXT_PUBLIC_SITE_URL || 'https://blackloyal.ru',
      analyticsId: process.env.NUXT_PUBLIC_ANALYTICS_ID,
      telegramBotUsername: process.env.NUXT_PUBLIC_TELEGRAM_BOT_USERNAME,
    },
  },

  // TypeScript
  typescript: {
    typeCheck: true,
  },

  // Nitro настройки
  nitro: {
    preset: 'node-server',
  },

  // Route rules для кэширования
  routeRules: {
    '/': { prerender: true },
    '/privacy': { prerender: true },
    '/terms': { prerender: true },
    '/offer': { prerender: true },
    '/roadmap': { prerender: true },
    '/faq': { prerender: true },
    '/api/**': { cors: true },
  },

  // App config
  app: {
    head: {
      charset: 'utf-8',
      viewport: 'width=device-width, initial-scale=1',
      link: [
        { rel: 'icon', type: 'image/x-icon', href: '/favicon.ico' },
      ],
    },
  },
})
