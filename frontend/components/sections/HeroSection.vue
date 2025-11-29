<template>
  <section class="bg-white">
    <div class="container-custom section-padding">
      <div class="grid grid-cols-1 lg:grid-cols-2 gap-12 items-center">
        <div class="space-y-8">
          <div>
            <span class="tag mb-6 inline-block">Ранний доступ</span>
            <h1 class="text-gray-900 mb-6">
              Геймифицированная система лояльности для компьютерных клубов
            </h1>
            <p class="text-lg text-gray-500 leading-relaxed max-w-lg">
              Отдельный модуль лояльности для компьютерных клубов. Не заменяет Langame/Smartshell/SENET - интегрируется с ними.
            </p>
          </div>

          <div class="flex flex-col sm:flex-row gap-4">
            <NuxtLink
              to="#contact"
              class="btn-primary btn-lg group"
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
            </NuxtLink>
          </div>

          <div class="flex flex-wrap gap-6 pt-4">
            <div class="flex items-center gap-2 text-sm text-gray-600">
              <div class="w-5 h-5 rounded-full bg-lime-400 flex items-center justify-center">
                <svg
                  class="w-3 h-3 text-gray-900"
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
              10 000 р/мес
            </div>
            <div class="flex items-center gap-2 text-sm text-gray-600">
              <div class="w-5 h-5 rounded-full bg-lime-400 flex items-center justify-center">
                <svg
                  class="w-3 h-3 text-gray-900"
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
            </div>
            <div class="flex items-center gap-2 text-sm text-gray-600">
              <div class="w-5 h-5 rounded-full bg-lime-400 flex items-center justify-center">
                <svg
                  class="w-3 h-3 text-gray-900"
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
              Интеграция за 3 дня
            </div>
          </div>
        </div>

        <div class="relative">
          <div class="bg-gray-100 rounded-3xl p-8 relative overflow-hidden">
            <VideoPlayer
              video-src="/videos/vsl.mp4"
              poster="/videos/vsl-poster.png"
            />

            <div class="absolute -top-2 -left-2 bg-lime-400 text-gray-900 px-4 py-2 rounded-full text-sm font-semibold shadow-lg">
              +70% количества сессий
            </div>
            <div class="absolute -bottom-2 -right-2 bg-gray-900 text-white px-4 py-2 rounded-full text-sm font-semibold shadow-lg">
              +26% к средней продолжительности сессии
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="border-t border-gray-200 bg-white">
      <div class="container-custom py-12">
        <p class="text-center text-sm text-gray-400 mb-8">
          Интегрируется с популярными системами
        </p>
        <div class="flex flex-wrap justify-center items-center gap-8 md:gap-16">
          <span class="text-xl font-bold text-gray-300 hover:text-gray-400 transition-colors">Langame</span>
          <span class="text-xl font-bold text-gray-300 hover:text-gray-400 transition-colors">Smartshell</span>
          <span class="text-xl font-bold text-gray-300 hover:text-gray-400 transition-colors">SENET</span>
        </div>
      </div>
    </div>
  </section>
</template>

<script setup>
import VideoPlayer from '~/components/ui/VideoPlayer.vue'
</script>
