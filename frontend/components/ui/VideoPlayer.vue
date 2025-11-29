<template>
  <div class="video-player-wrapper">
    <div class="video-container">
      <video
        ref="videoRef"
        class="video-element"
        :poster="poster"
        controls
        preload="metadata"
        playsinline
      >
        <source
          v-if="videoSrc"
          :src="videoSrc"
          type="video/mp4"
        >
        <source
          v-if="videoWebmSrc"
          :src="videoWebmSrc"
          type="video/webm"
        >
        <p class="fallback-text">
          Ваш браузер не поддерживает видео. Пожалуйста, обновите браузер.
        </p>
      </video>
    </div>
  </div>
</template>

<script setup>
import { ref, onMounted } from 'vue'

defineProps({
  videoSrc: {
    type: String,
    default: '/videos/vsl.mp4',
  },
  videoWebmSrc: {
    type: String,
    default: '/videos/vsl.webm',
  },
  poster: {
    type: String,
    default: '/videos/vsl-poster.png',
  },
})

const videoRef = ref(null)

onMounted(() => {
  if (videoRef.value) {
    videoRef.value.load()
  }
})
</script>

<style scoped>
.video-player-wrapper {
  width: 100%;
  height: 100%;
}

.video-container {
  position: relative;
  width: 100%;
  padding-bottom: 56.25%;
  background: #171717;
  border-radius: 1rem;
  overflow: hidden;
}

.video-element {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  object-fit: cover;
  border-radius: 1rem;
}

.video-element:focus {
  outline: none;
  box-shadow: 0 0 0 3px rgba(161, 230, 0, 0.5);
}

.fallback-text {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  color: white;
  text-align: center;
  padding: 1rem;
  font-size: 1rem;
}

@media (max-width: 768px) {
  .video-container {
    padding-bottom: 75%;
  }
}
</style>
