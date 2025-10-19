<template>
  <section class="relative overflow-hidden bg-gradient-to-br from-gray-50 to-white">
    <div class="absolute inset-0 bg-grid-pattern opacity-5" />
    <div class="absolute top-0 right-0 w-96 h-96 bg-gradient-primary rounded-full -translate-y-48 translate-x-48 opacity-10" />
    <div class="absolute bottom-0 left-0 w-64 h-64 bg-gradient-secondary rounded-full translate-y-32 -translate-x-32 opacity-10" />

    <div class="container-custom section-padding relative">
      <div class="grid grid-cols-1 lg:grid-cols-2 gap-12 items-center">
        <div class="space-y-8">
          <div class="inline-flex items-center px-4 py-2 rounded-full bg-primary-50 text-primary-700 text-sm font-medium">
            <span class="w-2 h-2 bg-primary-500 rounded-full mr-2 animate-pulse-gentle" />
            Ранний доступ доступен
          </div>
          <div class="space-y-4">
            <h1 class="text-4xl md:text-5xl lg:text-6xl font-bold text-gray-900 leading-tight">
              <span class="text-gradient">Геймифицированная</span><br>
              система лояльности для компьютерных клубов
            </h1>
            <p class="text-xl text-gray-600 leading-relaxed max-w-lg">
              Отдельный модуль лояльности для компьютерных клубов. Не заменяет Langame/Smartshell/SENET - интегрируется с ними.<br>
              <strong>Сегодня доступно:</strong> кейсы с призами и Telegram-бот для авторизации.
            </p>
          </div>

          <div class="flex flex-col sm:flex-row gap-4">
            <NuxtLink
              to="#contact"
              class="btn-primary btn-lg group"
            >
              <span>Запустить пилот</span>
              <svg
                class="w-5 h-5 ml-2 group-hover:translate-x-1 transition-transform"
                fill="none"
                stroke="currentColor"
                viewBox="0 0 24 24"
              >
                <path
                  stroke-linecap="round"
                  stroke-linejoin="round"
                  stroke-width="2"
                  d="M13 7l5 5m0 0l-5 5m5-5H6"
                />
              </svg>
            </NuxtLink>
          </div>

          <div class="flex flex-col sm:flex-row gap-6 text-sm text-gray-500">
            <div class="flex items-center">
              <svg
                class="w-5 h-5 text-primary-500 mr-2"
                fill="currentColor"
                viewBox="0 0 20 20"
              >
                <path
                  fill-rule="evenodd"
                  d="M10 18a8 8 0 100-16 8 8 0 000 16zm3.707-9.293a1 1 0 00-1.414-1.414L9 10.586 7.707 9.293a1 1 0 00-1.414 1.414l2 2a1 1 0 001.414 0l4-4z"
                  clip-rule="evenodd"
                />
              </svg>
              Цена раннего доступа: 10 000 ₽/мес
            </div>
            <div class="flex items-center">
              <svg
                class="w-5 h-5 text-primary-500 mr-2"
                fill="currentColor"
                viewBox="0 0 20 20"
              >
                <path
                  fill-rule="evenodd"
                  d="M10 18a8 8 0 100-16 8 8 0 000 16zm3.707-9.293a1 1 0 00-1.414-1.414L9 10.586 7.707 9.293a1 1 0 00-1.414 1.414l2 2a1 1 0 001.414 0l4-4z"
                  clip-rule="evenodd"
                />
              </svg>
              Поддержка 7 дней в неделю
            </div>
            <div class="flex items-center">
              <svg
                class="w-5 h-5 text-primary-500 mr-2"
                fill="currentColor"
                viewBox="0 0 20 20"
              >
                <path
                  fill-rule="evenodd"
                  d="M10 18a8 8 0 100-16 8 8 0 000 16zm3.707-9.293a1 1 0 00-1.414-1.414L9 10.586 7.707 9.293a1 1 0 00-1.414 1.414l2 2a1 1 0 001.414 0l4-4z"
                  clip-rule="evenodd"
                />
              </svg>
              Интеграция за 3 дня
            </div>
          </div>
        </div>

        <div class="relative">
          <div class="relative bg-white rounded-2xl shadow-hard p-8 border border-gray-200">
            <div class="bg-gray-900 rounded-xl p-4 mx-auto max-w-xs">
              <div class="bg-gray-800 rounded-lg p-4 text-center">
                <div class="w-16 h-16 bg-gradient-accent rounded-full mx-auto mb-4 flex items-center justify-center">
                  <svg
                    class="w-8 h-8 text-white"
                    fill="currentColor"
                    viewBox="0 0 20 20"
                  >
                    <path d="M9 12l2 2 4-4m6 2a9 9 0 11-18 0 9 9 0 0118 0z" />
                  </svg>
                </div>
                <h3 class="text-white font-semibold mb-2">
                  Кейс открыт!
                </h3>
                <p class="text-gray-300 text-sm mb-4">
                  Вы получили:
                </p>
                <div class="bg-primary-600 text-white px-3 py-2 rounded-lg text-sm font-medium">
                  +2 часа игры
                </div>
              </div>
            </div>

            <div class="absolute -bottom-4 -right-4 bg-white rounded-lg shadow-medium p-4 border border-gray-200 max-w-xs">
              <div class="space-y-3">
                <div class="flex items-center justify-between">
                  <span class="text-sm font-medium text-gray-700">Создать кейс</span>
                  <div class="w-3 h-3 bg-green-500 rounded-full" />
                </div>
                <div class="space-y-2">
                  <div class="h-2 bg-gray-200 rounded" />
                  <div class="h-2 bg-gray-200 rounded w-3/4" />
                  <div class="h-2 bg-gray-200 rounded w-1/2" />
                </div>
                <button class="w-full bg-primary-600 text-white text-sm py-2 px-4 rounded-lg">
                  Настроить призы
                </button>
              </div>
            </div>
          </div>

          <div class="absolute -top-4 -left-4 bg-accent-500 text-white px-3 py-1 rounded-full text-sm font-medium animate-bounce-gentle">
            +35% возвратов
          </div>
          <div
            class="absolute -bottom-4 -left-4 bg-secondary-500 text-white px-3 py-1 rounded-full text-sm font-medium animate-bounce-gentle"
            style="animation-delay: 1s;"
          >
            +40% выручки
          </div>
        </div>
      </div>
    </div>
  </section>
</template>

<style scoped>
.bg-grid-pattern {
  background-image:
    linear-gradient(rgba(0, 0, 0, 0.1) 1px, transparent 1px),
    linear-gradient(90deg, rgba(0, 0, 0, 0.1) 1px, transparent 1px);
  background-size: 20px 20px;
}
</style>
