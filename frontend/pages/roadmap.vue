<template>
  <div class="section-padding bg-white">
    <div class="container-custom max-w-6xl">
      <div class="text-center mb-16">
        <h1 class="text-4xl font-bold text-gray-900 mb-6">
          Дорожная карта
        </h1>
        <p class="text-xl text-gray-600 max-w-3xl mx-auto">
          Публичная дорожная карта развития BlackLoyal. Мы открыто рассказываем о наших планах и приоритетах.
        </p>
      </div>

      <!-- Current Status -->
      <div class="bg-green-50 border border-green-200 rounded-2xl p-8 mb-12">
        <div class="flex items-center mb-4">
          <div class="w-3 h-3 bg-green-500 rounded-full mr-3" />
          <h2 class="text-2xl font-bold text-green-800">
            Текущий статус
          </h2>
        </div>
        <p class="text-green-700 mb-4">
          MVP готов и активно тестируется в пилотных клубах. Основной функционал работает стабильно.
        </p>
        <div class="grid grid-cols-1 md:grid-cols-3 gap-4">
          <div class="bg-white rounded-lg p-4 border border-green-200">
            <h3 class="font-semibold text-green-800 mb-2">
              ✅ Кейсы с призами
            </h3>
            <p class="text-sm text-green-600">
              Полностью готово и работает
            </p>
          </div>
          <div class="bg-white rounded-lg p-4 border border-green-200">
            <h3 class="font-semibold text-green-800 mb-2">
              ✅ Telegram-бот
            </h3>
            <p class="text-sm text-green-600">
              Стабильно работает
            </p>
          </div>
          <div class="bg-white rounded-lg p-4 border border-green-200">
            <h3 class="font-semibold text-green-800 mb-2">
              ✅ Базовая аналитика
            </h3>
            <p class="text-sm text-green-600">
              Основные метрики доступны
            </p>
          </div>
        </div>
      </div>

      <!-- Timeline -->
      <div class="space-y-8">
        <!-- Q1 2026 -->
        <div class="border-l-4 border-primary-500 pl-8">
          <div class="flex items-center mb-4">
            <div class="w-8 h-8 bg-primary-500 rounded-full flex items-center justify-center mr-4">
              <span class="text-white font-bold text-sm">Q1</span>
            </div>
            <h2 class="text-2xl font-bold text-gray-900">
              Первый квартал 2026
            </h2>
          </div>

          <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
            <div class="card p-6 opacity-75">
              <div class="flex items-center mb-3">
                <div class="w-6 h-6 bg-gray-100 rounded-full flex items-center justify-center mr-3">
                  <svg
                    class="w-4 h-4 text-gray-400"
                    fill="none"
                    stroke="currentColor"
                    viewBox="0 0 24 24"
                  >
                    <path
                      stroke-linecap="round"
                      stroke-linejoin="round"
                      stroke-width="2"
                      d="M17 20h5v-2a3 3 0 00-5.356-1.857M17 20H7m10 0v-2c0-.656-.126-1.283-.356-1.857M7 20H2v-2a3 3 0 015.356-1.857M7 20v-2c0-.656.126-1.283.356-1.857m0 0a5.002 5.002 0 019.288 0M15 7a3 3 0 11-6 0 3 3 0 016 0zm6 3a2 2 0 11-4 0 2 2 0 014 0zM7 10a2 2 0 11-4 0 2 2 0 014 0z"
                    />
                  </svg>
                </div>
                <h3 class="font-semibold text-gray-700">
                  Сообщество и лидерборды
                </h3>
              </div>
              <p class="text-gray-500 text-sm mb-3">
                Таблицы лидеров, система достижений, социальные челленджи для вовлечения игроков.
              </p>
              <div class="flex items-center text-sm text-gray-500">
                <span class="w-2 h-2 bg-gray-400 rounded-full mr-2" />
                Планируется
              </div>
            </div>

            <div class="card p-6 opacity-75">
              <div class="flex items-center mb-3">
                <div class="w-6 h-6 bg-gray-100 rounded-full flex items-center justify-center mr-3">
                  <svg
                    class="w-4 h-4 text-gray-400"
                    fill="none"
                    stroke="currentColor"
                    viewBox="0 0 24 24"
                  >
                    <path
                      stroke-linecap="round"
                      stroke-linejoin="round"
                      stroke-width="2"
                      d="M13.828 10.172a4 4 0 00-5.656 0l-4 4a4 4 0 105.656 5.656l1.102-1.101m-.758-4.899a4 4 0 005.656 0l4-4a4 4 0 00-5.656-5.656l-1.1 1.1"
                    />
                  </svg>
                </div>
                <h3 class="font-semibold text-gray-700">
                  Глубокие интеграции
                </h3>
              </div>
              <p class="text-gray-500 text-sm mb-3">
                Автоматические триггеры кейсов и баллов от событий в Langame/Smartshell/SENET.
              </p>
              <div class="flex items-center text-sm text-gray-500">
                <span class="w-2 h-2 bg-gray-400 rounded-full mr-2" />
                Планируется
              </div>
            </div>
          </div>
        </div>
      </div>

      <!-- Feedback -->
      <div class="mt-16 bg-primary-50 border border-primary-200 rounded-2xl p-8">
        <h3 class="text-xl font-bold text-primary-900 mb-4">
          Ваше мнение важно
        </h3>
        <p class="text-primary-700 mb-6">
          Мы открыты к предложениям и готовы корректировать приоритеты на основе обратной связи от пользователей.
        </p>
        <NuxtLink
          to="/#contact"
          class="btn-primary inline-block"
        >
          Предложить функцию
        </NuxtLink>
      </div>
    </div>
  </div>
</template>

<script setup>
useHead({
  title: 'Дорожная карта - BlackLoyal',
  description: 'Публичная дорожная карта развития BlackLoyal. Планы и приоритеты развития платформы геймификации лояльности.',
})
</script>
