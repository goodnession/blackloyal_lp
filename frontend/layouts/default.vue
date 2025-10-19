<template>
  <div class="min-h-screen bg-white">
    <header class="sticky top-0 z-50 bg-white/95 backdrop-blur-sm border-b border-gray-100">
      <div class="container-custom">
        <div class="flex items-center justify-between h-16">
          <NuxtLink to="/" class="flex items-center space-x-2">
            <img src="/logo.svg" alt="BlackLoyal" class="w-8 h-8" />
            <span class="text-xl font-bold text-gray-900">BlackLoyal</span>
          </NuxtLink>

          <nav class="hidden md:flex items-center space-x-8">
            <NuxtLink to="/roadmap" class="text-gray-600 hover:text-gray-900 transition-colors">
              Дорожная карта
            </NuxtLink>
            <NuxtLink to="/faq" class="text-gray-600 hover:text-gray-900 transition-colors">
              FAQ
            </NuxtLink>
            <div class="relative group">
              <button class="text-gray-600 hover:text-gray-900 transition-colors flex items-center">
                Документы
                <svg class="w-4 h-4 ml-1" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                  <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7" />
                </svg>
              </button>
              <div class="absolute top-full left-0 mt-2 w-64 bg-white rounded-lg shadow-lg border border-gray-200 opacity-0 invisible group-hover:opacity-100 group-hover:visible transition-all duration-200 z-50">
                <div class="py-2">
                  <NuxtLink to="/offer" class="block px-4 py-2 text-sm text-gray-700 hover:bg-gray-50">Договор оферты</NuxtLink>
                  <NuxtLink to="/tariffs" class="block px-4 py-2 text-sm text-gray-700 hover:bg-gray-50">Тарифы и расчеты</NuxtLink>
                  <NuxtLink to="/sla" class="block px-4 py-2 text-sm text-gray-700 hover:bg-gray-50">Соглашение об уровне обслуживания</NuxtLink>
                  <NuxtLink to="/dpa" class="block px-4 py-2 text-sm text-gray-700 hover:bg-gray-50">Обработка персональных данных</NuxtLink>
                  <NuxtLink to="/lootcase-rules" class="block px-4 py-2 text-sm text-gray-700 hover:bg-gray-50">Правила использования луткейсов</NuxtLink>
                </div>
              </div>
            </div>
          </nav>

          <div class="flex items-center space-x-4">
            <NuxtLink to="/#contact" class="btn-primary btn-sm">
              Запустить пилот
            </NuxtLink>

            <button 
              @click="mobileMenuOpen = !mobileMenuOpen"
              class="md:hidden p-2 rounded-lg hover:bg-gray-100 transition-colors"
            >
              <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h16M4 18h16" />
              </svg>
            </button>
          </div>
        </div>

        <div v-if="mobileMenuOpen" class="md:hidden py-4 border-t border-gray-100">
          <nav class="flex flex-col space-y-4">
            <NuxtLink to="/#features" class="text-gray-600 hover:text-gray-900 transition-colors">
              Возможности
            </NuxtLink>
            <NuxtLink to="/#pricing" class="text-gray-600 hover:text-gray-900 transition-colors">
              Цены
            </NuxtLink>
            <NuxtLink to="/roadmap" class="text-gray-600 hover:text-gray-900 transition-colors">
              Дорожная карта
            </NuxtLink>
            <NuxtLink to="/faq" class="text-gray-600 hover:text-gray-900 transition-colors">
              FAQ
            </NuxtLink>
            <div class="border-t border-gray-200 pt-4">
              <h4 class="text-sm font-medium text-gray-500 mb-2">Документы</h4>
              <div class="ml-4 space-y-2">
                <NuxtLink to="/offer" class="block text-gray-600 hover:text-gray-900 transition-colors text-sm">Договор оферты</NuxtLink>
                <NuxtLink to="/tariffs" class="block text-gray-600 hover:text-gray-900 transition-colors text-sm">Тарифы и расчеты</NuxtLink>
                <NuxtLink to="/sla" class="block text-gray-600 hover:text-gray-900 transition-colors text-sm">Соглашение об уровне обслуживания</NuxtLink>
                <NuxtLink to="/dpa" class="block text-gray-600 hover:text-gray-900 transition-colors text-sm">Обработка персональных данных</NuxtLink>
                <NuxtLink to="/lootcase-rules" class="block text-gray-600 hover:text-gray-900 transition-colors text-sm">Правила использования луткейсов</NuxtLink>
              </div>
            </div>
            <NuxtLink to="/#contact" class="btn-primary btn-sm w-fit">
              Запустить пилот
            </NuxtLink>
          </nav>
        </div>
      </div>
    </header>

    <main>
      <slot />
    </main>

    <ClientOnly>
      <YandexMetrica />
    </ClientOnly>

    <footer class="bg-gray-900 text-white">
      <div class="container-custom section-padding">
        <div class="grid grid-cols-1 md:grid-cols-4 gap-8">
          <div class="md:col-span-2">
            <div class="flex items-center space-x-2 mb-4">
              <img src="/logo.svg" alt="BlackLoyal" class="w-8 h-8" />
              <span class="text-xl font-bold">BlackLoyal</span>
            </div>
            <p class="text-gray-300 mb-6 max-w-md">
              Геймифицированная система лояльности для компьютерных клубов. 
              Увеличьте возврат клиентов на 35% и выручку на 40% в месяц.
            </p>
            <!-- <div class="flex space-x-4">
              <a href="https://t.me/blackloyal_official" target="_blank" class="text-gray-400 hover:text-white transition-colors">
                <svg class="w-6 h-6" fill="currentColor" viewBox="0 0 24 24">
                  <path d="M11.944 0A12 12 0 0 0 0 12a12 12 0 0 0 12 12 12 12 0 0 0 12-12A12 12 0 0 0 12 0a12 12 0 0 0-.056 0zm4.962 7.224c.1-.002.321.023.465.14a.506.506 0 0 1 .171.325c.016.093.036.306.02.472-.18 1.898-.962 6.502-1.36 8.627-.168.9-.499 1.201-.82 1.23-.696.065-1.225-.46-1.9-.902-1.056-.693-1.653-1.124-2.678-1.8-1.185-.78-.417-1.21.258-1.91.177-.184 3.247-2.977 3.307-3.23.007-.032.014-.15-.056-.212s-.174-.041-.249-.024c-.106.024-1.793 1.14-5.061 3.345-.48.33-.913.49-1.302.48-.428-.008-1.252-.241-1.865-.44-.752-.245-1.349-.374-1.297-.789.027-.216.325-.437.893-.663 3.498-1.524 5.83-2.529 6.998-3.014 3.332-1.386 4.025-1.627 4.476-1.635z"/>
                </svg>
              </a>
              <a href="https://vk.com/blackloyal" target="_blank" class="text-gray-400 hover:text-white transition-colors">
                <svg class="w-6 h-6" fill="currentColor" viewBox="0 0 24 24">
                  <path d="M15.684 0H8.316C1.592 0 0 1.592 0 8.316v7.368C0 22.408 1.592 24 8.316 24h7.368C22.408 24 24 22.408 24 15.684V8.316C24 1.592 22.408 0 15.684 0zm3.692 17.123h-1.744c-.66 0-.864-.525-2.05-1.727-1.033-1.01-1.49-.864-1.744-.864-.356 0-.458.102-.458.593v1.575c0 .424-.135.678-1.253.678-1.846 0-3.896-1.118-5.335-3.202C4.624 10.857 4.03 8.57 4.03 8.096c0-.254.102-.491.593-.491h1.744c.44 0 .61.203.78.677.863 2.49 2.303 4.675 2.896 4.675.22 0 .322-.102.322-.66V9.721c-.068-1.186-.695-1.287-.695-1.71 0-.203.17-.407.44-.407h2.744c.373 0 .508.203.508.643v3.473c0 .372.17.508.271.508.22 0 .407-.136.813-.542 1.254-1.406 2.151-3.574 2.151-3.574.119-.254.322-.491.763-.491h1.744c.525 0 .644.271.525.643-.22 1.017-2.354 4.031-2.354 4.031-.186.305-.254.44 0 .78.186.254.796.78 1.203 1.253.745.847 1.32 1.558 1.473 2.05.17.49-.085.744-.576.744z"/>
                </svg>
              </a>
              <a href="https://youtube.com/blackloyal" target="_blank" class="text-gray-400 hover:text-white transition-colors">
                <svg class="w-6 h-6" fill="currentColor" viewBox="0 0 24 24">
                  <path d="M23.498 6.186a3.016 3.016 0 0 0-2.122-2.136C19.505 3.545 12 3.545 12 3.545s-7.505 0-9.377.505A3.017 3.017 0 0 0 .502 6.186C0 8.07 0 12 0 12s0 3.93.502 5.814a3.016 3.016 0 0 0 2.122 2.136c1.871.505 9.376.505 9.376.505s7.505 0 9.377-.505a3.015 3.015 0 0 0 2.122-2.136C24 15.93 24 12 24 12s0-3.93-.502-5.814zM9.545 15.568V8.432L15.818 12l-6.273 3.568z"/>
                </svg>
              </a>
            </div> -->
          </div>

          <div>
            <h3 class="font-semibold text-primary-100 mb-4">Продукт</h3>
            <ul class="space-y-2 text-gray-300">
              <li><NuxtLink to="/roadmap" class="hover:text-white transition-colors">Дорожная карта</NuxtLink></li>
              <li><NuxtLink to="/faq" class="hover:text-white transition-colors">FAQ</NuxtLink></li>
            </ul>
          </div>

          <div>
            <h3 class="font-semibold text-primary-100 mb-4">Документы</h3>
            <ul class="space-y-2 text-gray-300">
              <li><NuxtLink to="/privacy" class="hover:text-white transition-colors">Политика конфиденциальности</NuxtLink></li>
              <li><NuxtLink to="/terms" class="hover:text-white transition-colors">Пользовательское соглашение</NuxtLink></li>
              <li><NuxtLink to="/offer" class="hover:text-white transition-colors">Договор оферты</NuxtLink></li>
              <li><NuxtLink to="/tariffs" class="hover:text-white transition-colors">Тарифы и расчеты</NuxtLink></li>
              <li><NuxtLink to="/sla" class="hover:text-white transition-colors">Соглашение об уровне обслуживания</NuxtLink></li>
              <li><NuxtLink to="/dpa" class="hover:text-white transition-colors">Обработка персональных данных</NuxtLink></li>
              <li><NuxtLink to="/lootcase-rules" class="hover:text-white transition-colors">Правила использования луткейсов</NuxtLink></li>
            </ul>
          </div>
        </div>
        
        <div class="border-t border-gray-800 mt-12 pt-8">
          <div class="flex flex-col md:flex-row justify-between items-center">
            <p class="text-gray-400 text-sm">
              © 2025 BlackLoyal. Все права защищены.
            </p>
          </div>
        </div>
      </div>
    </footer>
  </div>
</template>

<script setup>
const mobileMenuOpen = ref(false)

const route = useRoute()
watch(() => route.path, () => {
  mobileMenuOpen.value = false
})
</script>
