<template>
  <div>
    <HeroSection />
    <ProblemSection />
    <BenefitsSection />
    <!-- <TestimonialsSection /> -->
    <HowItWorksSection />
    <CtaSection />
  </div>
</template>

<script setup>
import HeroSection from '~/components/sections/HeroSection.vue'
import ProblemSection from '~/components/sections/ProblemSection.vue'
import BenefitsSection from '~/components/sections/BenefitsSection.vue'
// import TestimonialsSection from '~/components/sections/TestimonialsSection.vue'
import HowItWorksSection from '~/components/sections/HowItWorksSection.vue'
import CtaSection from '~/components/sections/CtaSection.vue'

useHead({
  title: 'BlackLoyal - Геймифицированная система лояльности для компьютерных клубов',
  meta: [
    { name: 'description', content: 'Увеличьте возврат клиентов на 35% и выручку на 40% в месяц. Кейсы с призами, Telegram-бот, интеграция с Langame/Smartshell/SENET. Первый месяц бесплатно.' },
    { property: 'og:title', content: 'BlackLoyal - Геймифицированная система лояльности для компьютерных клубов' },
    { property: 'og:description', content: 'Увеличьте возврат клиентов на 35% и выручку на 40% в месяц. Кейсы с призами, Telegram-бот, интеграция с Langame/Smartshell/SENET. Первый месяц бесплатно.' },
    { property: 'og:image', content: '/og-image.png' },
    { name: 'twitter:card', content: 'summary_large_image' }
  ]
})

useHead({
  script: [
    {
      type: 'application/ld+json',
      innerHTML: JSON.stringify([
        {
          '@type': 'Organization',
          name: 'BlackLoyal',
          url: 'https://blackloyal.ru',
          logo: 'https://blackloyal.ru/logo.png',
          description: 'Геймифицированная система лояльности для компьютерных клубов',
          contactPoint: {
            '@type': 'ContactPoint',
            telephone: '+7 (999) 123-45-67',
            contactType: 'customer service',
            email: 'hello@blackloyal.ru'
          },
          sameAs: [
            'https://t.me/blackloyal_official',
            'https://vk.com/blackloyal',
            'https://youtube.com/blackloyal'
          ]
        },
        {
          '@type': 'SoftwareApplication',
          name: 'BlackLoyal',
          applicationCategory: 'BusinessApplication',
          operatingSystem: 'Web',
          description: 'Геймифицированная система лояльности для компьютерных клубов',
          offers: {
            '@type': 'Offer',
            price: '10000',
            priceCurrency: 'RUB',
            priceValidUntil: '2025-12-31'
          }
        }
      ])
    }
  ]
})
</script>
