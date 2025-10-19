<template>
  <section
    id="testimonials"
    class="section-padding bg-white"
  >
    <div class="container-custom">
      <div class="text-center mb-16">
        <h2 class="text-3xl md:text-4xl font-bold text-gray-900 mb-6">
          Что говорят владельцы
        </h2>
        <p class="text-gray-600">
          Цитаты из пилотных интервью.
        </p>
      </div>

      <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">
        <div class="card-hover p-8">
          <div class="flex items-center mb-4">
            <div class="flex text-yellow-400">
              <svg
                v-for="i in 5"
                :key="i"
                class="w-5 h-5 fill-current"
                viewBox="0 0 20 20"
              >
                <path d="M9.049 2.927c.3-.921 1.603-.921 1.902 0l1.07 3.292a1 1 0 00.95.69h3.462c.969 0 1.371 1.24.588 1.81l-2.8 2.034a1 1 0 00-.364 1.118l1.07 3.292c.3.921-.755 1.688-1.54 1.118l-2.8-2.034a1 1 0 00-1.175 0l-2.8 2.034c-.784.57-1.838-.197-1.539-1.118l1.07-3.292a1 1 0 00-.364-1.118L2.98 8.72c-.783-.57-.38-1.81.588-1.81h3.461a1 1 0 00.951-.69l1.07-3.292z" />
              </svg>
            </div>
          </div>
          <blockquote class="text-gray-700 mb-6 italic">
            "За 2 месяца наш возврат клиентов вырос на 30%. BlackLoyal автоматизировал всю работу с клиентами. Теперь турниры организуются сами, а ребята соревнуются за призы"
          </blockquote>
          <div class="flex items-center">
            <div class="w-12 h-12 bg-primary-100 rounded-full flex items-center justify-center mr-4">
              <span class="text-primary-600 font-semibold text-lg">А</span>
            </div>
            <div>
              <div class="font-semibold text-gray-900">
                Алексей М.
              </div>
              <div class="text-gray-500 text-sm">
                владелец GameZone (Новосибирск)
              </div>
            </div>
          </div>
        </div>

        <div class="card-hover p-8">
          <div class="flex items-center mb-4">
            <div class="flex text-yellow-400">
              <svg
                v-for="i in 5"
                :key="i"
                class="w-5 h-5 fill-current"
                viewBox="0 0 20 20"
              >
                <path d="M9.049 2.927c.3-.921 1.603-.921 1.902 0l1.07 3.292a1 1 0 00.95.69h3.462c.969 0 1.371 1.24.588 1.81l-2.8 2.034a1 1 0 00-.364 1.118l1.07 3.292c.3.921-.755 1.688-1.54 1.118l-2.8-2.034a1 1 0 00-1.175 0l-2.8 2.034c-.784.57-1.838-.197-1.539-1.118l1.07-3.292a1 1 0 00-.364-1.118L2.98 8.72c-.783-.57-.38-1.81.588-1.81h3.461a1 1 0 00.951-.69l1.07-3.292z" />
              </svg>
            </div>
          </div>
          <blockquote class="text-gray-700 mb-6 italic">
            "Выручка выросла на 85 000 рублей уже в первый месяц. Система лояльности работает как часы. Клиенты сами приводят друзей ради достижений и наград"
          </blockquote>
          <div class="flex items-center">
            <div class="w-12 h-12 bg-secondary-100 rounded-full flex items-center justify-center mr-4">
              <span class="text-secondary-600 font-semibold text-lg">Д</span>
            </div>
            <div>
              <div class="font-semibold text-gray-900">
                Дмитрий К.
              </div>
              <div class="text-gray-500 text-sm">
                сеть клубов CyberArena (Казань)
              </div>
            </div>
          </div>
        </div>

        <div class="card-hover p-8 md:col-span-2 lg:col-span-1">
          <div class="flex items-center mb-4">
            <div class="flex text-yellow-400">
              <svg
                v-for="i in 5"
                :key="i"
                class="w-5 h-5 fill-current"
                viewBox="0 0 20 20"
              >
                <path d="M9.049 2.927c.3-.921 1.603-.921 1.902 0l1.07 3.292a1 1 0 00.95.69h3.462c.969 0 1.371 1.24.588 1.81l-2.8 2.034a1 1 0 00-.364 1.118l1.07 3.292c.3.921-.755 1.688-1.54 1.118l-2.8-2.034a1 1 0 00-1.175 0l-2.8 2.034c-.784.57-1.838-.197-1.539-1.118l1.07-3.292a1 1 0 00-.364-1.118L2.98 8.72c-.783-.57-.38-1.81.588-1.81h3.461a1 1 0 00.951-.69l1.07-3.292z" />
              </svg>
            </div>
          </div>
          <blockquote class="text-gray-700 mb-6 italic">
            "Экономлю 3 часа в день на общении с клиентами. Telegram-бот делает всю рутинную работу. Я теперь фокусируюсь на развитии бизнеса"
          </blockquote>
          <div class="flex items-center">
            <div class="w-12 h-12 bg-accent-100 rounded-full flex items-center justify-center mr-4">
              <span class="text-accent-600 font-semibold text-lg">М</span>
            </div>
            <div>
              <div class="font-semibold text-gray-900">
                Мария Т.
              </div>
              <div class="text-gray-500 text-sm">
                PowerPlay Gaming Club (Екатеринбург)
              </div>
            </div>
          </div>
        </div>
      </div>

      <div class="text-center mt-12">
        <div class="inline-flex items-center px-4 py-2 bg-primary-50 text-primary-700 rounded-full text-sm font-medium">
          <span class="w-2 h-2 bg-primary-500 rounded-full mr-2 animate-pulse-gentle" />
          Пилот идёт в Новосибирске, Казани и Екатеринбурге
        </div>
      </div>
    </div>
  </section>
</template>
