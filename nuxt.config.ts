// https://nuxt.com/docs/api/configuration/nuxt-config
export default defineNuxtConfig({
  postcss: {
    plugins: {
      tailwindcss: {},
      autoprefixer: {},
    },
  },

  css: ["@/assets/css/main.css"],

  vite: {
    server: {
      hmr: {
        port: 24678,
        host: "0.0.0.0",

      },
    },
  },
});
