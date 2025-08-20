import { defineConfig } from 'vite'
import vue from '@vitejs/plugin-vue'

export default defineConfig({
  plugins: [vue()],
  server: {
    proxy: {
      '/api': {
        target: 'http://localhost',          // Apache (porta 80)
        changeOrigin: true,
        // /api/perguntas.php -> /Jogo_milh-o/back/routes/perguntas.php
        rewrite: p => p.replace(/^\/api/, '/Jogo_milh-o/back/routes'),
      },
    },
  },
})
