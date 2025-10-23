// @ts-check
import { defineConfig } from 'astro/config';

import tailwindcss from '@tailwindcss/vite';

// https://astro.build/config
export default defineConfig({
  compressHTML: false,
  build: {
    assets: '_assets',
    assetsPrefix: 'https://www.claro.com.pe/assets/havas/banner_cintillo'
  },
  vite: {
    plugins: [tailwindcss()]
  }
});