<template>
  <div>
    <!-- Yandex Metrica -->
    <script
      v-if="consentGiven"
      type="text/javascript"
      :innerHTML="metricaScript"
    />

    <!-- Cookie Consent Banner -->
    <div
      v-if="!consentGiven && !consentDismissed"
      class="fixed bottom-0 left-0 right-0 z-50 bg-white border-t border-gray-200 shadow-lg"
    >
      <div class="container-custom py-4">
        <div class="flex flex-col md:flex-row items-center justify-between gap-4">
          <div class="flex-1">
            <h3 class="font-semibold text-gray-900 mb-2">
              Мы используем cookies
            </h3>
            <p class="text-sm text-gray-600">
              Для улучшения работы сайта и анализа посещаемости мы используем файлы cookie.
              Продолжая использовать сайт, вы соглашаетесь с
              <NuxtLink
                to="/privacy"
                class="text-primary-600 hover:underline"
              >
                политикой конфиденциальности
              </NuxtLink>.
            </p>
          </div>

          <div class="flex gap-3">
            <button
              class="btn-primary btn-sm"
              @click="acceptCookies"
            >
              Принять
            </button>
            <button
              class="btn-secondary btn-sm"
              @click="declineCookies"
            >
              Отклонить
            </button>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script setup>
const config = useRuntimeConfig()
const consentGiven = ref(false)
const consentDismissed = ref(false)

// Check for existing consent
onMounted(() => {
  if (import.meta.client) {
    const savedConsent = localStorage.getItem('cookie-consent')
    if (savedConsent === 'accepted') {
      consentGiven.value = true
    }
    else if (savedConsent === 'declined') {
      consentDismissed.value = true
    }
  }
})

// Yandex Metrica script
const metricaScript = computed(() => {
  if (!config.public.analyticsId) return ''

  return `
    (function(m,e,t,r,i,k,a){m[i]=m[i]||function(){(m[i].a=m[i].a||[]).push(arguments)};
    m[i].l=1*new Date();k=e.createElement(t),a=e.getElementsByTagName(t)[0],k.async=1,k.src=r,a.parentNode.insertBefore(k,a)})
    (window, document, "script", "https://mc.yandex.ru/metrika/tag.js", "ym");

    ym(${config.public.analyticsId}, "init", {
         clickmap:true,
         trackLinks:true,
         accurateTrackBounce:true,
         webvisor:true
    });
  `
})

const acceptCookies = () => {
  if (import.meta.client) {
    localStorage.setItem('cookie-consent', 'accepted')
    consentGiven.value = true
    consentDismissed.value = true

    // Track consent acceptance
    if (window.ym && config.public.analyticsId) {
      window.ym(config.public.analyticsId, 'reachGoal', 'COOKIE_CONSENT_ACCEPTED')
    }
  }
}

const declineCookies = () => {
  if (import.meta.client) {
    localStorage.setItem('cookie-consent', 'declined')
    consentDismissed.value = true
  }
}

// Track page views
watch(() => useRoute().path, () => {
  if (import.meta.client && consentGiven.value && window.ym && config.public.analyticsId) {
    window.ym(config.public.analyticsId, 'hit', window.location.href)
  }
})
</script>
