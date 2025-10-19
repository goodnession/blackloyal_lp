<template>
  <section id="contact" class="section-padding bg-gradient-primary text-white">
    <div class="container-custom">
      <div class="max-w-4xl mx-auto text-center">
        <h2 class="text-3xl text-primary-100 md:text-4xl font-bold mb-6">
          Запустим пилот у вас за 3 дня
        </h2>
        <p class="text-xl text-primary-100 mb-12 max-w-2xl mx-auto">
          Подключим бота, поможем собрать призы, дадим готовые сценарии кейсов для клуба. 
          Ничего не ломаем в текущей системе.
        </p>

        <div class="flex flex-col sm:flex-row gap-4 justify-center mb-12">
          <button 
            @click="showForm = true"
            class="btn bg-white text-primary-600 hover:bg-gray-50 btn-lg group"
          >
            <span>Запустить пилот</span>
            <svg class="w-5 h-5 ml-2 group-hover:translate-x-1 transition-transform" fill="none" stroke="currentColor" viewBox="0 0 24 24">
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M13 7l5 5m0 0l-5 5m5-5H6" />
            </svg>
          </button>
        </div>

        <div class="bg-white/10 backdrop-blur-sm rounded-2xl p-8 mb-8">
          <h3 class="text-2xl text-primary-100 font-bold mb-4">Ценообразование</h3>
          <div class="text-4xl font-bold mb-2">10 000 ₽/мес</div>
          <p class="text-primary-100 mb-6">Ранний доступ. Повышение цены по мере выхода новых модулей. Отмена в любой момент.</p>

          <div class="grid grid-cols-1 md:grid-cols-2 gap-6 text-left">
            <div>
              <h4 class="font-semibold text-primary-100 mb-3">Что включено:</h4>
              <ul class="space-y-2 text-primary-100">
                <li class="flex items-center">
                  <svg class="w-5 h-5 text-green-400 mr-2" fill="currentColor" viewBox="0 0 20 20">
                    <path fill-rule="evenodd" d="M10 18a8 8 0 100-16 8 8 0 000 16zm3.707-9.293a1 1 0 00-1.414-1.414L9 10.586 7.707 9.293a1 1 0 00-1.414 1.414l2 2a1 1 0 001.414 0l4-4z" clip-rule="evenodd" />
                  </svg>
                  Полная система лояльности
                </li>
                <li class="flex items-center">
                  <svg class="w-5 h-5 text-green-400 mr-2" fill="currentColor" viewBox="0 0 20 20">
                    <path fill-rule="evenodd" d="M10 18a8 8 0 100-16 8 8 0 000 16zm3.707-9.293a1 1 0 00-1.414-1.414L9 10.586 7.707 9.293a1 1 0 00-1.414 1.414l2 2a1 1 0 001.414 0l4-4z" clip-rule="evenodd" />
                  </svg>
                  Telegram-бот
                </li>
                <li class="flex items-center">
                  <svg class="w-5 h-5 text-green-400 mr-2" fill="currentColor" viewBox="0 0 20 20">
                    <path fill-rule="evenodd" d="M10 18a8 8 0 100-16 8 8 0 000 16zm3.707-9.293a1 1 0 00-1.414-1.414L9 10.586 7.707 9.293a1 1 0 00-1.414 1.414l2 2a1 1 0 001.414 0l4-4z" clip-rule="evenodd" />
                  </svg>
                  Интеграция с Langame/Smartshell/SENET
                </li>
                <li class="flex items-center">
                  <svg class="w-5 h-5 text-green-400 mr-2" fill="currentColor" viewBox="0 0 20 20">
                    <path fill-rule="evenodd" d="M10 18a8 8 0 100-16 8 8 0 000 16zm3.707-9.293a1 1 0 00-1.414-1.414L9 10.586 7.707 9.293a1 1 0 00-1.414 1.414l2 2a1 1 0 001.414 0l4-4z" clip-rule="evenodd" />
                  </svg>
                  Техподдержка 7 дней в неделю
                </li>
                <li class="flex items-center">
                  <svg class="w-5 h-5 text-green-400 mr-2" fill="currentColor" viewBox="0 0 20 20">
                    <path fill-rule="evenodd" d="M10 18a8 8 0 100-16 8 8 0 000 16zm3.707-9.293a1 1 0 00-1.414-1.414L9 10.586 7.707 9.293a1 1 0 00-1.414 1.414l2 2a1 1 0 001.414 0l4-4z" clip-rule="evenodd" />
                  </svg>
                  Настройка за 3 дня
                </li>
              </ul>
            </div>
            
            <div>
              <h4 class="font-semibold text-primary-100 mb-3">Гарантии:</h4>
              <ul class="space-y-2 text-primary-100">
                <li class="flex items-center">
                  <svg class="w-5 h-5 text-green-400 mr-2" fill="currentColor" viewBox="0 0 20 20">
                    <path fill-rule="evenodd" d="M10 18a8 8 0 100-16 8 8 0 000 16zm3.707-9.293a1 1 0 00-1.414-1.414L9 10.586 7.707 9.293a1 1 0 00-1.414 1.414l2 2a1 1 0 001.414 0l4-4z" clip-rule="evenodd" />
                  </svg>
                  Первый месяц бесплатно
                </li>
                <li class="flex items-center">
                  <svg class="w-5 h-5 text-green-400 mr-2" fill="currentColor" viewBox="0 0 20 20">
                    <path fill-rule="evenodd" d="M10 18a8 8 0 100-16 8 8 0 000 16zm3.707-9.293a1 1 0 00-1.414-1.414L9 10.586 7.707 9.293a1 1 0 00-1.414 1.414l2 2a1 1 0 001.414 0l4-4z" clip-rule="evenodd" />
                  </svg>
                  Отмена в любой момент
                </li>
              </ul>
            </div>
          </div>
        </div>

        <div class="bg-white/5 backdrop-blur-sm rounded-xl p-6">
          <h4 class="font-semibold text-primary-100 mb-2">Снятие рисков</h4>
          <p class="text-primary-100">
            Если в первый месяц не увидите роста открытий кейсов и возвратов - вернём оплату.
          </p>
        </div>
      </div>
    </div>

    <div v-if="showForm" class="fixed inset-0 z-50 overflow-y-auto">
      <div class="flex items-center justify-center min-h-screen px-4 pt-4 pb-20 text-center sm:block sm:p-0">
        <div class="fixed inset-0 transition-opacity bg-gray-900 bg-opacity-75" @click="showForm = false"></div>

        <div class="inline-block w-full max-w-md p-6 my-8 overflow-hidden text-left align-middle transition-all transform bg-white shadow-xl rounded-2xl">
          <div class="flex items-center justify-between mb-6">
            <h3 class="text-xl font-semibold text-blue-900">Запустить пилот</h3>
            <button @click="showForm = false" class="text-gray-400 hover:text-gray-600">
              <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12" />
              </svg>
            </button>
          </div>

          <form @submit.prevent="submitForm" class="space-y-4">
            <div>
              <label for="name" class="block text-sm font-medium text-gray-700 mb-2">Имя</label>
              <input 
                id="name"
                v-model="form.name"
                type="text" 
                required
                class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-primary-500 focus:border-transparent text-black"
                placeholder="Ваше имя"
              >
            </div>

            <div>
              <label for="club" class="block text-sm font-medium text-gray-700 mb-2">Название клуба</label>
              <input 
                id="club"
                v-model="form.club"
                type="text" 
                required
                class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-primary-500 focus:border-transparent text-black"
                placeholder="Название вашего клуба"
              >
            </div>

            <div>
              <label for="contact" class="block text-sm font-medium text-gray-700 mb-2">Телефон или Telegram</label>
              <input 
                id="contact"
                v-model="form.contact"
                type="text" 
                required
                class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-primary-500 focus:border-transparent text-black"
                placeholder="+7 (999) 123-45-67 или @username"
              >
            </div>

            <div>
              <label for="city" class="block text-sm font-medium text-gray-700 mb-2">Город</label>
              <input 
                id="city"
                v-model="form.city"
                type="text" 
                required
                class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-primary-500 focus:border-transparent text-black"
                placeholder="Город, где находится клуб"
              >
            </div>

            <div class="flex items-start">
              <input 
                id="privacy"
                v-model="form.privacy"
                type="checkbox" 
                required
                class="mt-1 h-4 w-4 text-primary-600 focus:ring-primary-500 border-gray-300 rounded"
              >
              <label for="privacy" class="ml-2 text-sm text-gray-600">
                Согласен с <NuxtLink to="/privacy" class="text-primary-600 hover:underline">политикой конфиденциальности</NuxtLink>
              </label>
            </div>

            <button 
              type="submit" 
              :disabled="isSubmitting"
              class="w-full btn-primary btn-lg"
            >
              <span v-if="!isSubmitting">Отправить заявку</span>
              <span v-else class="flex items-center justify-center">
                <svg class="animate-spin -ml-1 mr-3 h-5 w-5 text-white" fill="none" viewBox="0 0 24 24">
                  <circle class="opacity-25" cx="12" cy="12" r="10" stroke="currentColor" stroke-width="4"></circle>
                  <path class="opacity-75" fill="currentColor" d="M4 12a8 8 0 018-8V0C5.373 0 0 5.373 0 12h4zm2 5.291A7.962 7.962 0 014 12H0c0 3.042 1.135 5.824 3 7.938l3-2.647z"></path>
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
const toast = useToast()

const showForm = ref(false)
const isSubmitting = ref(false)

const form = ref({
  name: '',
  club: '',
  contact: '',
  city: '',
  privacy: false
})

const submitForm = async () => {
  isSubmitting.value = true
  
  try {
    const response = await $fetch('/api/lead', {
      method: 'POST',
      body: {
        name: form.value.name,
        club: form.value.club,
        contact: form.value.contact,
        city: form.value.city,
        type: 'pilot'
      }
    })
    
    if (response.success) {
      showForm.value = false
      // Reset form
      form.value = {
        name: '',
        club: '',
        contact: '',
        city: '',
        privacy: false
      }
      
      // Показываем красивое уведомление об успехе
      toast.success({
        title: 'Заявка отправлена!',
        message: 'Мы свяжемся с вами в течение рабочего дня для запуска пилота.',
        timeout: 6000
      })
    } else {
      // Обрабатываем ошибку, если success: false
      let errorTitle = 'Ошибка отправки'
      let errorMessage = 'Произошла ошибка. Попробуйте еще раз или свяжитесь с нами напрямую.'
      
      if (response.error === 'Invalid form data') {
        errorTitle = 'Неверные данные'
        errorMessage = 'Проверьте правильность заполнения всех полей формы.'
        
        // Показываем детали ошибок валидации
        if (response.details && response.details.length > 0) {
          const validationErrors = response.details.map(detail => detail.message).join(', ')
          errorMessage = `Ошибки валидации: ${validationErrors}`
        }
      } else if (response.error === 'Service temporarily unavailable') {
        errorTitle = 'Сервис недоступен'
        errorMessage = 'Сервис временно недоступен. Попробуйте позже или свяжитесь с нами напрямую.'
      }
      
      toast.error({
        title: errorTitle,
        message: errorMessage,
        timeout: 8000
      })
    }
  } catch (err) {
    console.error('Error submitting form:', err)
    
    // Определяем тип ошибки для более точного сообщения
    let errorTitle = 'Ошибка отправки'
    let errorMessage = 'Произошла ошибка. Попробуйте еще раз или свяжитесь с нами напрямую.'
    
    if (err.data?.error === 'Invalid form data') {
      errorTitle = 'Неверные данные'
      errorMessage = 'Проверьте правильность заполнения всех полей формы.'
      
      // Показываем детали ошибок валидации
      if (err.data.details && err.data.details.length > 0) {
        const validationErrors = err.data.details.map(detail => detail.message).join(', ')
        errorMessage = `Ошибки валидации: ${validationErrors}`
      }
    } else if (err.data?.error === 'Service temporarily unavailable') {
      errorTitle = 'Сервис недоступен'
      errorMessage = 'Сервис временно недоступен. Попробуйте позже или свяжитесь с нами напрямую.'
    }
    
    toast.error({
      title: errorTitle,
      message: errorMessage,
      timeout: 8000
    })
  } finally {
    isSubmitting.value = false
  }
}
</script>
