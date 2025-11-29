<template>
  <div class="min-h-screen bg-gray-50">
    <header class="sticky top-0 z-50 bg-white border-b border-gray-200">
      <div class="container-custom">
        <div class="flex items-center justify-between h-16">
          <NuxtLink
            to="/"
            class="flex items-center gap-2"
          >
            <div class="w-8 h-8 bg-gray-900 rounded-lg flex items-center justify-center">
              <span class="text-white font-bold text-sm">BL</span>
            </div>
            <span class="text-lg font-bold text-gray-900">BlackLoyal</span>
          </NuxtLink>

          <nav class="hidden md:flex items-center gap-8">
            <NuxtLink
              to="/#benefits"
              class="text-gray-600 hover:text-gray-900 transition-colors text-sm font-medium"
            >
              Преимущества
            </NuxtLink>
            <NuxtLink
              to="/#how-it-works"
              class="text-gray-600 hover:text-gray-900 transition-colors text-sm font-medium"
            >
              Как это работает
            </NuxtLink>
            <NuxtLink
              to="/roadmap"
              class="text-gray-600 hover:text-gray-900 transition-colors text-sm font-medium"
            >
              Дорожная карта
            </NuxtLink>
          </nav>

          <div class="flex items-center gap-3">
            <NuxtLink
              to="/#contact"
              class="btn-primary btn-sm"
            >
              Запустить пилот
            </NuxtLink>

            <button
              class="md:hidden p-2 rounded-lg hover:bg-gray-100 transition-colors"
              @click="mobileMenuOpen = !mobileMenuOpen"
            >
              <svg
                class="w-6 h-6"
                fill="none"
                stroke="currentColor"
                viewBox="0 0 24 24"
              >
                <path
                  stroke-linecap="round"
                  stroke-linejoin="round"
                  stroke-width="2"
                  d="M4 6h16M4 12h16M4 18h16"
                />
              </svg>
            </button>
          </div>
        </div>

        <div
          v-if="mobileMenuOpen"
          class="md:hidden py-4 border-t border-gray-100"
        >
          <nav class="flex flex-col gap-4">
            <NuxtLink
              to="/#benefits"
              class="text-gray-600 hover:text-gray-900 transition-colors text-sm font-medium"
            >
              Преимущества
            </NuxtLink>
            <NuxtLink
              to="/#how-it-works"
              class="text-gray-600 hover:text-gray-900 transition-colors text-sm font-medium"
            >
              Как это работает
            </NuxtLink>
            <NuxtLink
              to="/roadmap"
              class="text-gray-600 hover:text-gray-900 transition-colors text-sm font-medium"
            >
              Дорожная карта
            </NuxtLink>
          </nav>
        </div>
      </div>
    </header>

    <main>
      <slot />
    </main>

    <ClientOnly>
      <AnalyticsYandexMetrica />
    </ClientOnly>

    <footer class="bg-white border-t border-gray-200">
      <div class="container-custom py-12">
        <div class="grid grid-cols-1 md:grid-cols-2 gap-8">
          <div>
            <div class="flex items-center gap-2 mb-4">
              <div class="w-8 h-8 bg-gray-900 rounded-lg flex items-center justify-center">
                <span class="text-white font-bold text-sm">BL</span>
              </div>
              <span class="text-lg font-bold text-gray-900">BlackLoyal</span>
            </div>
            <p class="text-gray-500 text-sm max-w-xs">
              Геймифицированная система лояльности для компьютерных клубов.
            </p>
          </div>

          <div>
            <h4 class="font-semibold text-gray-900 mb-4 text-sm">
              Продукт
            </h4>
            <ul class="space-y-3">
              <li>
                <NuxtLink
                  to="/#benefits"
                  class="text-gray-500 hover:text-gray-900 transition-colors text-sm"
                >
                  Преимущества
                </NuxtLink>
              </li>
              <li>
                <NuxtLink
                  to="/#how-it-works"
                  class="text-gray-500 hover:text-gray-900 transition-colors text-sm"
                >
                  Как это работает
                </NuxtLink>
              </li>
              <li>
                <NuxtLink
                  to="/roadmap"
                  class="text-gray-500 hover:text-gray-900 transition-colors text-sm"
                >
                  Дорожная карта
                </NuxtLink>
              </li>
            </ul>
          </div>
        </div>

        <div class="border-t border-gray-200 mt-8 pt-8">
          <p class="text-gray-400 text-sm text-center">
            2025 BlackLoyal. Все права защищены.
          </p>
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
