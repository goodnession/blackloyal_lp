<template>
  <div class="section-padding bg-white">
    <div class="container-custom max-w-6xl">
      <div class="text-center mb-16">
        <h1 class="text-4xl font-bold text-gray-900 mb-6">Дорожная карта</h1>
        <p class="text-xl text-gray-600 max-w-3xl mx-auto">
          Публичная дорожная карта развития BlackLoyal. Мы открыто рассказываем о наших планах и приоритетах.
        </p>
      </div>
      
      <!-- Current Status -->
      <div class="bg-green-50 border border-green-200 rounded-2xl p-8 mb-12">
        <div class="flex items-center mb-4">
          <div class="w-3 h-3 bg-green-500 rounded-full mr-3"></div>
          <h2 class="text-2xl font-bold text-green-800">Текущий статус</h2>
        </div>
        <p class="text-green-700 mb-4">
          MVP готов и активно тестируется в пилотных клубах. Основной функционал работает стабильно.
        </p>
        <div class="grid grid-cols-1 md:grid-cols-3 gap-4">
          <div class="bg-white rounded-lg p-4 border border-green-200">
            <h3 class="font-semibold text-green-800 mb-2">✅ Кейсы с призами</h3>
            <p class="text-sm text-green-600">Полностью готово и работает</p>
          </div>
          <div class="bg-white rounded-lg p-4 border border-green-200">
            <h3 class="font-semibold text-green-800 mb-2">✅ Telegram-бот</h3>
            <p class="text-sm text-green-600">Стабильно работает</p>
          </div>
          <div class="bg-white rounded-lg p-4 border border-green-200">
            <h3 class="font-semibold text-green-800 mb-2">✅ Базовая аналитика</h3>
            <p class="text-sm text-green-600">Основные метрики доступны</p>
          </div>
        </div>
      </div>
      
      <!-- Timeline -->
      <div class="space-y-8">
        <!-- Q1 2025 -->
        <div class="border-l-4 border-primary-500 pl-8">
          <div class="flex items-center mb-4">
            <div class="w-8 h-8 bg-primary-500 rounded-full flex items-center justify-center mr-4">
              <span class="text-white font-bold text-sm">Q1</span>
            </div>
            <h2 class="text-2xl font-bold text-gray-900">Первый квартал 2025</h2>
          </div>
          
          <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
            <div class="card p-6">
              <div class="flex items-center mb-3">
                <div class="w-6 h-6 bg-orange-100 rounded-full flex items-center justify-center mr-3">
                  <svg class="w-4 h-4 text-orange-600" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 8v4l3 3m6-3a9 9 0 11-18 0 9 9 0 0118 0z" />
                  </svg>
                </div>
                <h3 class="font-semibold text-gray-900">Балльная система лояльности</h3>
              </div>
              <p class="text-gray-600 text-sm mb-3">
                Полноценная система начисления и списания баллов, статусы пользователей, кастомные награды.
              </p>
              <div class="flex items-center text-sm text-orange-600">
                <span class="w-2 h-2 bg-orange-500 rounded-full mr-2"></span>
                В разработке
              </div>
            </div>
            
            <div class="card p-6">
              <div class="flex items-center mb-3">
                <div class="w-6 h-6 bg-orange-100 rounded-full flex items-center justify-center mr-3">
                  <svg class="w-4 h-4 text-orange-600" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12l2 2 4-4M7.835 4.697a3.42 3.42 0 001.946-.806 3.42 3.42 0 014.438 0 3.42 3.42 0 001.946.806 3.42 3.42 0 013.138 3.138 3.42 3.42 0 00.806 1.946 3.42 3.42 0 010 4.438 3.42 3.42 0 00-.806 1.946 3.42 3.42 0 01-3.138 3.138 3.42 3.42 0 00-1.946.806 3.42 3.42 0 01-4.438 0 3.42 3.42 0 00-1.946-.806 3.42 3.42 0 01-3.138-3.138 3.42 3.42 0 00-.806-1.946 3.42 3.42 0 010-4.438 3.42 3.42 0 00.806-1.946 3.42 3.42 0 013.138-3.138z" />
                  </svg>
                </div>
                <h3 class="font-semibold text-gray-900">Турниры</h3>
              </div>
              <p class="text-gray-600 text-sm mb-3">
                Автоматическое формирование турнирных сеток, регистрация участников, распределение призов.
              </p>
              <div class="flex items-center text-sm text-orange-600">
                <span class="w-2 h-2 bg-orange-500 rounded-full mr-2"></span>
                В разработке
              </div>
            </div>
          </div>
        </div>
        
        <!-- Q2 2025 -->
        <div class="border-l-4 border-secondary-500 pl-8">
          <div class="flex items-center mb-4">
            <div class="w-8 h-8 bg-secondary-500 rounded-full flex items-center justify-center mr-4">
              <span class="text-white font-bold text-sm">Q2</span>
            </div>
            <h2 class="text-2xl font-bold text-gray-900">Второй квартал 2025</h2>
          </div>
          
          <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
            <div class="card p-6 opacity-75">
              <div class="flex items-center mb-3">
                <div class="w-6 h-6 bg-gray-100 rounded-full flex items-center justify-center mr-3">
                  <svg class="w-4 h-4 text-gray-400" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17 20h5v-2a3 3 0 00-5.356-1.857M17 20H7m10 0v-2c0-.656-.126-1.283-.356-1.857M7 20H2v-2a3 3 0 015.356-1.857M7 20v-2c0-.656.126-1.283.356-1.857m0 0a5.002 5.002 0 019.288 0M15 7a3 3 0 11-6 0 3 3 0 016 0zm6 3a2 2 0 11-4 0 2 2 0 014 0zM7 10a2 2 0 11-4 0 2 2 0 014 0z" />
                  </svg>
                </div>
                <h3 class="font-semibold text-gray-700">Сообщество и лидерборды</h3>
              </div>
              <p class="text-gray-500 text-sm mb-3">
                Таблицы лидеров, система достижений, социальные челленджи для вовлечения игроков.
              </p>
              <div class="flex items-center text-sm text-gray-500">
                <span class="w-2 h-2 bg-gray-400 rounded-full mr-2"></span>
                Планируется
              </div>
            </div>
            
            <div class="card p-6 opacity-75">
              <div class="flex items-center mb-3">
                <div class="w-6 h-6 bg-gray-100 rounded-full flex items-center justify-center mr-3">
                  <svg class="w-4 h-4 text-gray-400" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M13.828 10.172a4 4 0 00-5.656 0l-4 4a4 4 0 105.656 5.656l1.102-1.101m-.758-4.899a4 4 0 005.656 0l4-4a4 4 0 00-5.656-5.656l-1.1 1.1" />
                  </svg>
                </div>
                <h3 class="font-semibold text-gray-700">Глубокие интеграции</h3>
              </div>
              <p class="text-gray-500 text-sm mb-3">
                Автоматические триггеры кейсов и баллов от событий в Langame/Smartshell/SENET.
              </p>
              <div class="flex items-center text-sm text-gray-500">
                <span class="w-2 h-2 bg-gray-400 rounded-full mr-2"></span>
                Планируется
              </div>
            </div>
          </div>
        </div>
        
        <!-- Future -->
        <div class="border-l-4 border-gray-300 pl-8">
          <div class="flex items-center mb-4">
            <div class="w-8 h-8 bg-gray-300 rounded-full flex items-center justify-center mr-4">
              <span class="text-gray-600 font-bold text-sm">?</span>
            </div>
            <h2 class="text-2xl font-bold text-gray-900">Будущие планы</h2>
          </div>
          
          <div class="grid grid-cols-1 md:grid-cols-3 gap-4">
            <div class="card p-4 opacity-50">
              <h3 class="font-semibold text-gray-600 mb-2">Мобильное приложение</h3>
              <p class="text-sm text-gray-500">Нативные приложения для iOS и Android</p>
            </div>
            <div class="card p-4 opacity-50">
              <h3 class="font-semibold text-gray-600 mb-2">AI-рекомендации</h3>
              <p class="text-sm text-gray-500">Умные предложения призов и акций</p>
            </div>
            <div class="card p-4 opacity-50">
              <h3 class="font-semibold text-gray-600 mb-2">Мультиклубность</h3>
              <p class="text-sm text-gray-500">Единая система для сетей клубов</p>
            </div>
          </div>
        </div>
      </div>
      
      <!-- Feedback -->
      <div class="mt-16 bg-primary-50 border border-primary-200 rounded-2xl p-8">
        <h3 class="text-xl font-bold text-primary-900 mb-4">Ваше мнение важно</h3>
        <p class="text-primary-700 mb-6">
          Мы открыты к предложениям и готовы корректировать приоритеты на основе обратной связи от пользователей.
        </p>
        <div class="flex flex-col sm:flex-row gap-4">
          <NuxtLink to="/#contact" class="btn-primary">
            Предложить функцию
          </NuxtLink>
          <a href="mailto:feedback@blackloyal.ru" class="btn-secondary">
            Написать нам
          </a>
        </div>
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
