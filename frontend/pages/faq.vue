<template>
  <div class="section-padding bg-white">
    <div class="container-custom max-w-4xl">
      <div class="text-center mb-16">
        <h1 class="text-4xl font-bold text-gray-900 mb-6">Часто задаваемые вопросы</h1>
        <p class="text-xl text-gray-600 max-w-3xl mx-auto">
          Ответы на самые популярные вопросы о BlackLoyal
        </p>
      </div>

      <div class="space-y-6">
        <div class="card">
          <button 
            @click="toggleFAQ(0)"
            class="w-full p-6 text-left flex items-center justify-between hover:bg-gray-50 transition-colors"
          >
            <h3 class="text-lg font-semibold text-gray-900">
              Нужно ли менять текущий софт бронирования?
            </h3>
            <svg 
              :class="{'rotate-180': openFAQs[0]}"
              class="w-5 h-5 text-gray-500 transition-transform"
              fill="none" 
              stroke="currentColor" 
              viewBox="0 0 24 24"
            >
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7" />
            </svg>
          </button>
          <div v-if="openFAQs[0]" class="px-6 pb-6">
            <p class="text-gray-600">
              Нет, мы работаем поверх существующих систем. BlackLoyal интегрируется с Langame, Smartshell, SENET и другими популярными системами бронирования, не заменяя их. Это позволяет сохранить все ваши текущие процессы и добавить геймификацию лояльности.
            </p>
          </div>
        </div>

        <div class="card">
          <button 
            @click="toggleFAQ(1)"
            class="w-full p-6 text-left flex items-center justify-between hover:bg-gray-50 transition-colors"
          >
            <h3 class="text-lg font-semibold text-gray-900">
              Сможем ли мы ограничивать призы по времени/количеству?
            </h3>
            <svg 
              :class="{'rotate-180': openFAQs[1]}"
              class="w-5 h-5 text-gray-500 transition-transform"
              fill="none" 
              stroke="currentColor" 
              viewBox="0 0 24 24"
            >
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7" />
            </svg>
          </button>
          <div v-if="openFAQs[1]" class="px-6 pb-6">
            <p class="text-gray-600">
              Да, лимиты и сроки настраиваются в админке. Вы можете установить максимальное количество призов в день/неделю/месяц, ограничить время действия кейсов, настроить шансы выпадения каждого приза. Это позволяет контролировать бюджет и создавать FOMO-эффект.
            </p>
          </div>
        </div>

        <div class="card">
          <button 
            @click="toggleFAQ(2)"
            class="w-full p-6 text-left flex items-center justify-between hover:bg-gray-50 transition-colors"
          >
            <h3 class="text-lg font-semibold text-gray-900">
              Что с регулированием «кейсов»?
            </h3>
            <svg 
              :class="{'rotate-180': openFAQs[2]}"
              class="w-5 h-5 text-gray-500 transition-transform"
              fill="none" 
              stroke="currentColor" 
              viewBox="0 0 24 24"
            >
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7" />
            </svg>
          </button>
          <div v-if="openFAQs[2]" class="px-6 pb-6">
            <p class="text-gray-600">
              Призы — реальные и контролируемые клубом (часы игры, мерч, участие в турнирах, напитки). Вы задаёте правила; мы предоставляем инструмент отображения и учёта. Это не азартные игры, а система лояльности с реальными вознаграждениями.
            </p>
          </div>
        </div>

        <div class="card">
          <button 
            @click="toggleFAQ(3)"
            class="w-full p-6 text-left flex items-center justify-between hover:bg-gray-50 transition-colors"
          >
            <h3 class="text-lg font-semibold text-gray-900">
              Сколько времени занимает настройка?
            </h3>
            <svg 
              :class="{'rotate-180': openFAQs[3]}"
              class="w-5 h-5 text-gray-500 transition-transform"
              fill="none" 
              stroke="currentColor" 
              viewBox="0 0 24 24"
            >
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7" />
            </svg>
          </button>
          <div v-if="openFAQs[3]" class="px-6 pb-6">
            <p class="text-gray-600">
              Полная настройка занимает 3-5 рабочих дней. Мы подключаем Telegram-бота, помогаем собрать призы, даём готовые сценарии кейсов и постеры для клуба. Ничего не ломаем в текущей системе - всё работает параллельно.
            </p>
          </div>
        </div>

        <div class="card">
          <button 
            @click="toggleFAQ(4)"
            class="w-full p-6 text-left flex items-center justify-between hover:bg-gray-50 transition-colors"
          >
            <h3 class="text-lg font-semibold text-gray-900">
              Какая техническая поддержка предоставляется?
            </h3>
            <svg 
              :class="{'rotate-180': openFAQs[4]}"
              class="w-5 h-5 text-gray-500 transition-transform"
              fill="none" 
              stroke="currentColor" 
              viewBox="0 0 24 24"
            >
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7" />
            </svg>
          </button>
          <div v-if="openFAQs[4]" class="px-6 pb-6">
            <p class="text-gray-600">
              Мы предоставляем техническую поддержку 7 дней в неделю через Telegram, email и телефон. Включает помощь с настройкой, решение технических вопросов, обучение персонала и консультации по оптимизации системы лояльности.
            </p>
          </div>
        </div>

        <div class="card">
          <button 
            @click="toggleFAQ(5)"
            class="w-full p-6 text-left flex items-center justify-between hover:bg-gray-50 transition-colors"
          >
            <h3 class="text-lg font-semibold text-gray-900">
              Можно ли отменить подписку в любой момент?
            </h3>
            <svg 
              :class="{'rotate-180': openFAQs[5]}"
              class="w-5 h-5 text-gray-500 transition-transform"
              fill="none" 
              stroke="currentColor" 
              viewBox="0 0 24 24"
            >
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7" />
            </svg>
          </button>
          <div v-if="openFAQs[5]" class="px-6 pb-6">
            <p class="text-gray-600">
              Да, вы можете отменить подписку в любой момент без штрафов. Достаточно уведомить нас за 30 дней до окончания текущего периода.
            </p>
          </div>
        </div>

        <div class="card">
          <button 
            @click="toggleFAQ(6)"
            class="w-full p-6 text-left flex items-center justify-between hover:bg-gray-50 transition-colors"
          >
            <h3 class="text-lg font-semibold text-gray-900">
              Какие данные мы получаем в аналитике?
            </h3>
            <svg 
              :class="{'rotate-180': openFAQs[6]}"
              class="w-5 h-5 text-gray-500 transition-transform"
              fill="none" 
              stroke="currentColor" 
              viewBox="0 0 24 24"
            >
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7" />
            </svg>
          </button>
          <div v-if="openFAQs[6]" class="px-6 pb-6">
            <p class="text-gray-600">
              В базовой аналитике доступны: количество открытых кейсов, активность пользователей. В будущем добавим детальную аналитику по сегментам клиентов, эффективности акций и прогнозирование поведения.
            </p>
          </div>
        </div>

        <div class="card">
          <button 
            @click="toggleFAQ(7)"
            class="w-full p-6 text-left flex items-center justify-between hover:bg-gray-50 transition-colors"
          >
            <h3 class="text-lg font-semibold text-gray-900">
              Безопасны ли данные клиентов?
            </h3>
            <svg 
              :class="{'rotate-180': openFAQs[7]}"
              class="w-5 h-5 text-gray-500 transition-transform"
              fill="none" 
              stroke="currentColor" 
              viewBox="0 0 24 24"
            >
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7" />
            </svg>
          </button>
          <div v-if="openFAQs[7]" class="px-6 pb-6">
            <p class="text-gray-600">
              Да, безопасность данных - наш приоритет. Мы используем шифрование данных, соблюдаем требования ФЗ-152 «О персональных данных», не передаём информацию третьим лицам. Все данные хранятся на защищённых серверах в России.
            </p>
          </div>
        </div>
      </div>

      <div class="mt-16 bg-primary-50 border border-primary-200 rounded-2xl p-8 text-center">
        <h3 class="text-xl font-bold text-primary-900 mb-4">Не нашли ответ на свой вопрос?</h3>
        <p class="text-primary-700 mb-6">
          Свяжитесь с нами, и мы ответим на любые вопросы о BlackLoyal
        </p>
        <div class="flex flex-col sm:flex-row gap-4 justify-center">
          <NuxtLink to="/#contact" class="btn-primary">
            Задать вопрос
          </NuxtLink>
          <a href="mailto:goodnession1@gmail.com" class="btn-secondary">
            Написать на email
          </a>
        </div>
      </div>
    </div>
  </div>
</template>

<script setup>
const openFAQs = ref(Array(8).fill(false))

const toggleFAQ = (index) => {
  openFAQs.value[index] = !openFAQs.value[index]
}

useHead({
  title: 'FAQ - Часто задаваемые вопросы - BlackLoyal',
  description: 'Ответы на популярные вопросы о BlackLoyal: интеграция, настройка, безопасность, поддержка и многое другое.',
})
</script>
