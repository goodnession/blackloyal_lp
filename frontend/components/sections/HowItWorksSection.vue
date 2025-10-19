<template>
  <section
    id="how-it-works"
    class="section-padding bg-gradient-to-br from-gray-50 to-white"
  >
    <div class="container-custom">
      <div class="text-center mb-16">
        <h2 class="text-3xl md:text-4xl font-bold text-gray-900 mb-6">
          Как это работает
        </h2>
        <p class="text-xl text-gray-600 max-w-3xl mx-auto">
          Дорожная карта публична; сроки могут меняться. Интерес к раннему доступу ускоряет приоритеты.
        </p>
      </div>

      <div class="mb-16">
        <div class="text-center mb-12">
          <h3 class="text-2xl font-bold text-gray-900 mb-4">
            Сегодня доступно
          </h3>
          <div class="inline-flex items-center px-4 py-2 bg-green-50 text-green-700 rounded-full text-sm font-medium">
            <span class="w-2 h-2 bg-green-500 rounded-full mr-2" />
            MVP готов к использованию
          </div>
        </div>

        <div class="grid grid-cols-1 md:grid-cols-3 gap-8">
          <div class="card-hover p-8 text-center">
            <div class="w-16 h-16 bg-primary-100 rounded-xl flex items-center justify-center mx-auto mb-6">
              <svg
                class="w-8 h-8 text-primary-600"
                fill="none"
                stroke="currentColor"
                viewBox="0 0 24 24"
              >
                <path
                  stroke-linecap="round"
                  stroke-linejoin="round"
                  stroke-width="2"
                  d="M20 7l-8-4-8 4m16 0l-8 4m8-4v10l-8 4m0-10L4 7m8 4v10M4 7v10l8 4"
                />
              </svg>
            </div>
            <h4 class="text-xl font-semibold text-gray-900 mb-4">
              Кейсы с призами
            </h4>
            <p class="text-gray-600 mb-4">
              Вы создаёте кейсы (например, «Новичок», «Ночной рейд», «VIP-день»), задаёте состав призов: бесплатные минуты, участие в турнире, напиток, мерч, скидка на VIP-зал.
            </p>
            <div class="text-sm text-gray-500">
              Настраиваете шансы/лимиты/срок действия
            </div>
          </div>

          <div class="card-hover p-8 text-center">
            <div class="w-16 h-16 bg-secondary-100 rounded-xl flex items-center justify-center mx-auto mb-6">
              <svg
                class="w-8 h-8 text-secondary-600"
                fill="none"
                stroke="currentColor"
                viewBox="0 0 24 24"
              >
                <path
                  stroke-linecap="round"
                  stroke-linejoin="round"
                  stroke-width="2"
                  d="M8 12h.01M12 12h.01M16 12h.01M21 12c0 4.418-4.03 8-9 8a9.863 9.863 0 01-4.255-.949L3 20l1.395-3.72C3.512 15.042 3 13.574 3 12c0-4.418 4.03-8 9-8s9 3.582 9 8z"
                />
              </svg>
            </div>
            <h4 class="text-xl font-semibold text-gray-900 mb-4">
              Telegram-бот
            </h4>
            <p class="text-gray-600 mb-4">
              Гость получает/вводит код, открывает кейс и сразу видит приз. Бот шлёт напоминания и новости.
            </p>
            <div class="text-sm text-gray-500">
              Дополнительный канал связи с аудиторией
            </div>
          </div>

          <div class="card-hover p-8 text-center">
            <div class="w-16 h-16 bg-accent-100 rounded-xl flex items-center justify-center mx-auto mb-6">
              <svg
                class="w-8 h-8 text-accent-600"
                fill="none"
                stroke="currentColor"
                viewBox="0 0 24 24"
              >
                <path
                  stroke-linecap="round"
                  stroke-linejoin="round"
                  stroke-width="2"
                  d="M9 19v-6a2 2 0 00-2-2H5a2 2 0 00-2 2v6a2 2 0 002 2h2a2 2 0 002-2zm0 0V9a2 2 0 012-2h2a2 2 0 012 2v10m-6 0a2 2 0 002 2h2a2 2 0 002-2m0 0V5a2 2 0 012-2h2a2 2 0 012 2v14a2 2 0 01-2 2h-2a2 2 0 01-2-2z"
                />
              </svg>
            </div>
            <h4 class="text-xl font-semibold text-gray-900 mb-4">
              Базовая аналитика
            </h4>
            <p class="text-gray-600 mb-4">
              Сколько кейсов открыто, сколько пользователей в системе.
            </p>
            <div class="text-sm text-gray-500">
              Простые метрики для отслеживания эффективности
            </div>
          </div>
        </div>
      </div>

      <div class="mb-16">
        <div class="text-center mb-12">
          <h3 class="text-2xl font-bold text-gray-900 mb-4">
            В разработке
          </h3>
          <div class="inline-flex items-center px-4 py-2 bg-orange-50 text-orange-700 rounded-full text-sm font-medium">
            <span class="w-2 h-2 bg-orange-500 rounded-full mr-2 animate-pulse-gentle" />
            Планируется к выпуску
          </div>
        </div>

        <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-6">
          <div class="card p-6 text-center opacity-75">
            <div class="w-12 h-12 bg-gray-100 rounded-lg flex items-center justify-center mx-auto mb-4">
              <svg
                class="w-6 h-6 text-gray-400"
                fill="none"
                stroke="currentColor"
                viewBox="0 0 24 24"
              >
                <path
                  stroke-linecap="round"
                  stroke-linejoin="round"
                  stroke-width="2"
                  d="M12 8c-1.657 0-3 .895-3 2s1.343 2 3 2 3 .895 3 2-1.343 2-3 2m0-8c1.11 0 2.08.402 2.599 1M12 8V7m0 1v8m0 0v1m0-1c-1.11 0-2.08-.402-2.599-1"
                />
              </svg>
            </div>
            <h4 class="font-semibold text-gray-700 mb-2">
              Балльная система
            </h4>
            <p class="text-sm text-gray-500">
              Начисления/списания, статусы, кастомные награды
            </p>
            <div class="mt-2">
              <span class="inline-flex items-center px-2 py-1 bg-orange-100 text-orange-700 rounded-full text-xs font-medium">
                В разработке
              </span>
            </div>
          </div>

          <div class="card p-6 text-center opacity-75">
            <div class="w-12 h-12 bg-gray-100 rounded-lg flex items-center justify-center mx-auto mb-4">
              <svg
                class="w-6 h-6 text-gray-400"
                fill="none"
                stroke="currentColor"
                viewBox="0 0 24 24"
              >
                <path
                  stroke-linecap="round"
                  stroke-linejoin="round"
                  stroke-width="2"
                  d="M9 12l2 2 4-4M7.835 4.697a3.42 3.42 0 001.946-.806 3.42 3.42 0 014.438 0 3.42 3.42 0 001.946.806 3.42 3.42 0 013.138 3.138 3.42 3.42 0 00.806 1.946 3.42 3.42 0 010 4.438 3.42 3.42 0 00-.806 1.946 3.42 3.42 0 01-3.138 3.138 3.42 3.42 0 00-1.946.806 3.42 3.42 0 01-4.438 0 3.42 3.42 0 00-1.946-.806 3.42 3.42 0 01-3.138-3.138 3.42 3.42 0 00-.806-1.946 3.42 3.42 0 010-4.438 3.42 3.42 0 00.806-1.946 3.42 3.42 0 013.138-3.138z"
                />
              </svg>
            </div>
            <h4 class="font-semibold text-gray-700 mb-2">
              Турниры
            </h4>
            <p class="text-sm text-gray-500">
              Сетка, регистрация, призовой фонд, автопубликации
            </p>
            <div class="mt-2">
              <span class="inline-flex items-center px-2 py-1 bg-orange-100 text-orange-700 rounded-full text-xs font-medium">
                В разработке
              </span>
            </div>
          </div>

          <div class="card p-6 text-center opacity-75">
            <div class="w-12 h-12 bg-gray-100 rounded-lg flex items-center justify-center mx-auto mb-4">
              <svg
                class="w-6 h-6 text-gray-400"
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
            <h4 class="font-semibold text-gray-700 mb-2">
              Сообщество
            </h4>
            <p class="text-sm text-gray-500">
              Таблицы лидеров, ачивки, социальные челленджи
            </p>
            <div class="mt-2">
              <span class="inline-flex items-center px-2 py-1 bg-orange-100 text-orange-700 rounded-full text-xs font-medium">
                В разработке
              </span>
            </div>
          </div>

          <div class="card p-6 text-center opacity-75">
            <div class="w-12 h-12 bg-gray-100 rounded-lg flex items-center justify-center mx-auto mb-4">
              <svg
                class="w-6 h-6 text-gray-400"
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
            <h4 class="font-semibold text-gray-700 mb-2">
              Глубокие интеграции
            </h4>
            <p class="text-sm text-gray-500">
              Кейсы и баллы триггерились от событий сессий
            </p>
            <div class="mt-2">
              <span class="inline-flex items-center px-2 py-1 bg-orange-100 text-orange-700 rounded-full text-xs font-medium">
                В разработке
              </span>
            </div>
          </div>
        </div>
      </div>

      <div class="bg-white rounded-2xl shadow-medium p-8 border border-gray-200">
        <h3 class="text-xl font-semibold text-gray-900 mb-8 text-center">
          Как это работает на практике
        </h3>

        <div class="grid grid-cols-1 md:grid-cols-2 gap-8">
          <div>
            <h4 class="font-semibold text-gray-900 mb-4 flex items-center">
              <span class="w-8 h-8 bg-primary-100 rounded-lg flex items-center justify-center mr-3">
                <svg
                  class="w-4 h-4 text-primary-600"
                  fill="none"
                  stroke="currentColor"
                  viewBox="0 0 24 24"
                >
                  <path
                    stroke-linecap="round"
                    stroke-linejoin="round"
                    stroke-width="2"
                    d="M16 7a4 4 0 11-8 0 4 4 0 018 0zM12 14a7 7 0 00-7 7h14a7 7 0 00-7-7z"
                  />
                </svg>
              </span>
              Для владельца клуба
            </h4>
            <div class="space-y-3">
              <div class="flex items-center text-gray-600">
                <span class="w-6 h-6 bg-primary-100 rounded-full flex items-center justify-center mr-3 text-sm font-medium text-primary-600">1</span>
                Создать кейс
              </div>
              <div class="flex items-center text-gray-600">
                <span class="w-6 h-6 bg-primary-100 rounded-full flex items-center justify-center mr-3 text-sm font-medium text-primary-600">2</span>
                Выбрать призы
              </div>
              <div class="flex items-center text-gray-600">
                <span class="w-6 h-6 bg-primary-100 rounded-full flex items-center justify-center mr-3 text-sm font-medium text-primary-600">3</span>
                Выдать QR/код
              </div>
              <div class="flex items-center text-gray-600">
                <span class="w-6 h-6 bg-primary-100 rounded-full flex items-center justify-center mr-3 text-sm font-medium text-primary-600">4</span>
                Смотреть аналитику
              </div>
            </div>
          </div>

          <div>
            <h4 class="font-semibold text-gray-900 mb-4 flex items-center">
              <span class="w-8 h-8 bg-secondary-100 rounded-lg flex items-center justify-center mr-3">
                <svg
                  class="w-4 h-4 text-secondary-600"
                  fill="none"
                  stroke="currentColor"
                  viewBox="0 0 24 24"
                >
                  <path
                    stroke-linecap="round"
                    stroke-linejoin="round"
                    stroke-width="2"
                    d="M12 6.253v13m0-13C10.832 5.477 9.246 5 7.5 5S4.168 5.477 3 6.253v13C4.168 18.477 5.754 18 7.5 18s3.332.477 4.5 1.253m0-13C13.168 5.477 14.754 5 16.5 5c1.746 0 3.332.477 4.5 1.253v13C19.832 18.477 18.246 18 16.5 18c-1.746 0-3.332.477-4.5 1.253"
                  />
                </svg>
              </span>
              Для игрока
            </h4>
            <div class="space-y-3">
              <div class="flex items-center text-gray-600">
                <span class="w-6 h-6 bg-secondary-100 rounded-full flex items-center justify-center mr-3 text-sm font-medium text-secondary-600">1</span>
                Сканировать QR/код
              </div>
              <div class="flex items-center text-gray-600">
                <span class="w-6 h-6 bg-secondary-100 rounded-full flex items-center justify-center mr-3 text-sm font-medium text-secondary-600">2</span>
                Открыть кейс
              </div>
              <div class="flex items-center text-gray-600">
                <span class="w-6 h-6 bg-secondary-100 rounded-full flex items-center justify-center mr-3 text-sm font-medium text-secondary-600">3</span>
                Получить приз
              </div>
              <div class="flex items-center text-gray-600">
                <span class="w-6 h-6 bg-secondary-100 rounded-full flex items-center justify-center mr-3 text-sm font-medium text-secondary-600">4</span>
                Прийти снова, чтобы не потерять серию
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
</template>
