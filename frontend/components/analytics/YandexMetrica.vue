<template>
  <div>
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
const consentGiven = ref(false)
const consentDismissed = ref(false)
const metricaId = '104705018'

// Check for existing consent
onMounted(() => {
  if (import.meta.client) {
    const savedConsent = localStorage.getItem('cookie-consent')

    if (savedConsent === 'accepted') {
      consentGiven.value = true
      initMetrica()
    }
    else if (savedConsent === 'declined') {
      consentDismissed.value = true
    }
  }
})

const initMetrica = () => {
  if (import.meta.client && !window.ym) {
    /* eslint-disable */
    (function (m, e, t, r, i, k, a) {
      m[i] = m[i] || function () {
        (m[i].a = m[i].a || []).push(arguments)
      }
      m[i].l = 1 * new Date()
      for (var j = 0; j < document.scripts.length; j++) {
        if (document.scripts[j].src === r) {
          return
        }
      }
      k = e.createElement(t)
      a = e.getElementsByTagName(t)[0]
      k.async = 1
      k.src = r
      a.parentNode.insertBefore(k, a)
    })(window, document, 'script', 'https://mc.yandex.ru/metrika/tag.js', 'ym')
    /* eslint-enable */

    window.ym(metricaId, 'init', {
      defer: true,
      clickmap: true,
      trackLinks: true,
      accurateTrackBounce: true,
      webvisor: true,
      ecommerce: 'dataLayer',
    })

    setTimeout(() => {
      if (window.ym) {
        window.ym(metricaId, 'hit', window.location.href, {
          title: document.title,
        })
      }
    }, 100)
  }
}

const acceptCookies = () => {
  if (import.meta.client) {
    localStorage.setItem('cookie-consent', 'accepted')
    consentGiven.value = true
    consentDismissed.value = true

    // Initialize Metrica after consent
    initMetrica()

    // Track consent acceptance
    setTimeout(() => {
      if (window.ym) {
        window.ym(metricaId, 'reachGoal', 'COOKIE_CONSENT_ACCEPTED')
      }
    }, 1000)
  }
}

const declineCookies = () => {
  if (import.meta.client) {
    localStorage.setItem('cookie-consent', 'declined')
    consentDismissed.value = true
  }
}

const route = useRoute()
const previousUrl = ref('')

watch(() => route.path, () => {
  if (import.meta.client && consentGiven.value && window.ym) {
    const currentUrl = window.location.href

    window.ym(metricaId, 'hit', currentUrl, {
      title: document.title,
      referer: previousUrl.value || document.referrer,
    })

    previousUrl.value = currentUrl
  }
}, { immediate: false })

// Add noscript fallback using useHead
useHead({
  noscript: [
    {
      children: `<div><img src="https://mc.yandex.ru/watch/${metricaId}" style="position:absolute; left:-9999px;" alt="" /></div>`,
    },
  ],
})
</script>
