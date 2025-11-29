<template>
  <section
    id="contact"
    class="section-padding bg-white"
  >
    <div class="container-custom">
      <div class="card-dark p-8 md:p-12 text-center max-w-4xl mx-auto relative overflow-hidden">
        <div class="absolute top-0 right-0 w-64 h-64 bg-lime-400/10 rounded-full -translate-y-32 translate-x-32" />
        <div class="absolute bottom-0 left-0 w-48 h-48 bg-lime-400/10 rounded-full translate-y-24 -translate-x-24" />

        <div class="relative">
          <h2 class="text-white mb-4">
            Запустим пилот у вас за 3 дня
          </h2>
          <p class="text-gray-400 mb-8 max-w-xl mx-auto">
            Подключим бота, поможем собрать призы, дадим готовые сценарии кейсов для клуба. Ничего не ломаем в текущей системе.
          </p>

          <button
            class="btn-lime btn-lg group mb-12"
            @click="openForm"
          >
            <span>Запустить пилот</span>
            <svg
              class="w-4 h-4 ml-2 group-hover:translate-x-1 transition-transform"
              fill="none"
              stroke="currentColor"
              viewBox="0 0 24 24"
            >
              <path
                stroke-linecap="round"
                stroke-linejoin="round"
                stroke-width="2"
                d="M17 8l4 4m0 0l-4 4m4-4H3"
              />
            </svg>
          </button>

          <div class="bg-white/5 rounded-2xl p-8 mb-8">
            <div class="text-4xl font-bold text-white mb-2">
              10 000 р/мес
            </div>
            <p class="text-gray-400 text-sm mb-2">
              Только для первых клиентов. Далее цена вырастет на 50% до 15 000 р/мес.
            </p>
            <div class="inline-flex items-center gap-2 bg-lime-400/10 text-lime-400 text-xs font-medium px-3 py-1.5 rounded-full mb-8">
              <svg
                class="w-3.5 h-3.5"
                fill="none"
                stroke="currentColor"
                viewBox="0 0 24 24"
              >
                <path
                  stroke-linecap="round"
                  stroke-linejoin="round"
                  stroke-width="2"
                  d="M13 10V3L4 14h7v7l9-11h-7z"
                />
              </svg>
              Настройка под ключ за 20 000 р
            </div>

            <div class="grid grid-cols-1 md:grid-cols-2 gap-6 text-left max-w-xl mx-auto">
              <div>
                <h4 class="font-semibold text-white mb-3 text-sm">
                  Что включено:
                </h4>
                <ul class="space-y-2">
                  <li class="flex items-center gap-2 text-gray-300 text-sm">
                    <div class="w-4 h-4 rounded-full bg-lime-400 flex items-center justify-center flex-shrink-0">
                      <svg
                        class="w-2.5 h-2.5 text-gray-900"
                        fill="none"
                        stroke="currentColor"
                        viewBox="0 0 24 24"
                      >
                        <path
                          stroke-linecap="round"
                          stroke-linejoin="round"
                          stroke-width="3"
                          d="M5 13l4 4L19 7"
                        />
                      </svg>
                    </div>
                    Полная система лояльности
                  </li>
                  <li class="flex items-center gap-2 text-gray-300 text-sm">
                    <div class="w-4 h-4 rounded-full bg-lime-400 flex items-center justify-center flex-shrink-0">
                      <svg
                        class="w-2.5 h-2.5 text-gray-900"
                        fill="none"
                        stroke="currentColor"
                        viewBox="0 0 24 24"
                      >
                        <path
                          stroke-linecap="round"
                          stroke-linejoin="round"
                          stroke-width="3"
                          d="M5 13l4 4L19 7"
                        />
                      </svg>
                    </div>
                    Telegram-бот
                  </li>
                  <li class="flex items-center gap-2 text-gray-300 text-sm">
                    <div class="w-4 h-4 rounded-full bg-lime-400 flex items-center justify-center flex-shrink-0">
                      <svg
                        class="w-2.5 h-2.5 text-gray-900"
                        fill="none"
                        stroke="currentColor"
                        viewBox="0 0 24 24"
                      >
                        <path
                          stroke-linecap="round"
                          stroke-linejoin="round"
                          stroke-width="3"
                          d="M5 13l4 4L19 7"
                        />
                      </svg>
                    </div>
                    Интеграция с системами
                  </li>
                  <li class="flex items-center gap-2 text-gray-300 text-sm">
                    <div class="w-4 h-4 rounded-full bg-lime-400 flex items-center justify-center flex-shrink-0">
                      <svg
                        class="w-2.5 h-2.5 text-gray-900"
                        fill="none"
                        stroke="currentColor"
                        viewBox="0 0 24 24"
                      >
                        <path
                          stroke-linecap="round"
                          stroke-linejoin="round"
                          stroke-width="3"
                          d="M5 13l4 4L19 7"
                        />
                      </svg>
                    </div>
                    Поддержка 7 дней в неделю
                  </li>
                </ul>
              </div>

              <div>
                <h4 class="font-semibold text-white mb-3 text-sm">
                  Гарантии:
                </h4>
                <ul class="space-y-2">
                  <li class="flex items-center gap-2 text-gray-300 text-sm">
                    <div class="w-4 h-4 rounded-full bg-lime-400 flex items-center justify-center flex-shrink-0">
                      <svg
                        class="w-2.5 h-2.5 text-gray-900"
                        fill="none"
                        stroke="currentColor"
                        viewBox="0 0 24 24"
                      >
                        <path
                          stroke-linecap="round"
                          stroke-linejoin="round"
                          stroke-width="3"
                          d="M5 13l4 4L19 7"
                        />
                      </svg>
                    </div>
                    Отмена в любой момент
                  </li>

                  <li class="flex items-center gap-2 text-gray-300 text-sm">
                    <div class="w-4 h-4 rounded-full bg-lime-400 flex items-center justify-center flex-shrink-0">
                      <svg
                        class="w-2.5 h-2.5 text-gray-900"
                        fill="none"
                        stroke="currentColor"
                        viewBox="0 0 24 24"
                      >
                        <path
                          stroke-linecap="round"
                          stroke-linejoin="round"
                          stroke-width="3"
                          d="M5 13l4 4L19 7"
                        />
                      </svg>
                    </div>
                    Настройка за 3 дня
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div
      v-if="showForm"
      class="fixed inset-0 z-50 overflow-y-auto"
    >
      <div class="flex items-center justify-center min-h-screen px-4 pt-4 pb-20 text-center sm:block sm:p-0">
        <div
          class="fixed inset-0 transition-opacity bg-gray-900/80 backdrop-blur-sm"
          @click="closeForm"
        />

        <div class="inline-block w-full max-w-md p-8 my-8 overflow-hidden text-left align-middle transition-all transform bg-white shadow-xl rounded-3xl">
          <div class="flex items-center justify-between mb-6">
            <h3 class="text-xl font-bold text-gray-900">
              Запустить пилот
            </h3>
            <button
              class="w-8 h-8 rounded-full bg-gray-100 hover:bg-gray-200 flex items-center justify-center transition-colors"
              @click="closeForm"
            >
              <svg
                class="w-4 h-4 text-gray-500"
                fill="none"
                stroke="currentColor"
                viewBox="0 0 24 24"
              >
                <path
                  stroke-linecap="round"
                  stroke-linejoin="round"
                  stroke-width="2"
                  d="M6 18L18 6M6 6l12 12"
                />
              </svg>
            </button>
          </div>

          <form
            class="space-y-4"
            @submit.prevent="submitForm"
          >
            <div>
              <label
                for="name"
                class="block text-sm font-medium text-gray-700 mb-2"
              >Имя</label>
              <input
                id="name"
                v-model="form.name"
                type="text"
                required
                class="w-full px-4 py-3 border border-gray-200 rounded-xl focus:ring-2 focus:ring-gray-900 focus:border-transparent text-gray-900 placeholder-gray-400 transition-all"
                placeholder="Ваше имя"
              >
            </div>

            <div>
              <label
                for="club"
                class="block text-sm font-medium text-gray-700 mb-2"
              >Название клуба</label>
              <input
                id="club"
                v-model="form.club"
                type="text"
                required
                class="w-full px-4 py-3 border border-gray-200 rounded-xl focus:ring-2 focus:ring-gray-900 focus:border-transparent text-gray-900 placeholder-gray-400 transition-all"
                placeholder="Название вашего клуба"
              >
            </div>

            <div>
              <label
                for="contact"
                class="block text-sm font-medium text-gray-700 mb-2"
              >Телефон или Telegram</label>
              <input
                id="contact"
                v-model="form.contact"
                type="text"
                required
                class="w-full px-4 py-3 border border-gray-200 rounded-xl focus:ring-2 focus:ring-gray-900 focus:border-transparent text-gray-900 placeholder-gray-400 transition-all"
                placeholder="+7 (999) 123-45-67 или @username"
              >
            </div>

            <div>
              <label
                for="city"
                class="block text-sm font-medium text-gray-700 mb-2"
              >Город</label>
              <input
                id="city"
                v-model="form.city"
                type="text"
                required
                class="w-full px-4 py-3 border border-gray-200 rounded-xl focus:ring-2 focus:ring-gray-900 focus:border-transparent text-gray-900 placeholder-gray-400 transition-all"
                placeholder="Город, где находится клуб"
              >
            </div>

            <button
              type="submit"
              :disabled="isSubmitting"
              class="w-full btn-primary btn-lg mt-6"
            >
              <span v-if="!isSubmitting">Отправить заявку</span>
              <span
                v-else
                class="flex items-center justify-center"
              >
                <svg
                  class="animate-spin -ml-1 mr-3 h-5 w-5 text-white"
                  fill="none"
                  viewBox="0 0 24 24"
                >
                  <circle
                    class="opacity-25"
                    cx="12"
                    cy="12"
                    r="10"
                    stroke="currentColor"
                    stroke-width="4"
                  />
                  <path
                    class="opacity-75"
                    fill="currentColor"
                    d="M4 12a8 8 0 018-8V0C5.373 0 0 5.373 0 12h4zm2 5.291A7.962 7.962 0 014 12H0c0 3.042 1.135 5.824 3 7.938l3-2.647z"
                  />
                </svg>
                Отправляем...
              </span>
            </button>
          </form>
        </div>
      </div>
    </div>
  </section>
</template>

<script setup>
const {
  showForm,
  isSubmitting,
  form,
  openForm,
  closeForm,
  submitForm,
} = useLeadForm()
</script>
