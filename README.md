# vue3-vite-docker [![GitHub issues](https://img.shields.io/github/issues/mah-shamim/vue3-vite-docker.svg)](https://github.com/mah-shamim/vue3-vite-docker/issues) [![GitHub license](https://img.shields.io/badge/license-MIT-blue.svg)](https://raw.githubusercontent.com/mah-shamim/vue3-vite-docker/master/LICENSE) [![GitHub forks](https://img.shields.io/github/forks/mah-shamim/vue3-vite-docker.svg)](https://github.com/mah-shamim/vue3-vite-docker/network) [![GitHub stars](https://img.shields.io/github/stars/mah-shamim/vue3-vite-docker.svg)](https://github.com/mah-shamim/vue3-vite-docker/stargazers)

Dockerized version of VUE3 VITE

# Documentation

For now, you can [check out the wiki](https://github.com/mahshamim/vue3-vite-docker/wiki) for details on using the
container. Once the container is stable, I will add more instructions here in the readme.

# Build Information

You can find the latest build details on the [Docker Hub](https://hub.docker.com/r/mahshamim/vue3-vite/)

# Uses

- Open the **vite.config.js** file and add the server object with the port field to the configuration:

```
import { defineConfig } from 'vite';
import vue from '@vitejs/plugin-vue';
import path from 'path';
import vueI18n from '@intlify/vite-plugin-vue-i18n';
import { fileURLToPath, URL } from 'url';

// https://vitejs.dev/config/
export default defineConfig({
    plugins: [
        vue(),
        vueI18n({
            include: path.resolve(__dirname, './src/locales/**')
        })
    ],
    optimizeDeps: {
        include: ['quill', 'nouislider']
    },
    resolve: {
        alias: [
            {
                find: /^~(.*)$/,
                replacement: 'node_modules/$1'
            },
            { find: '/@', replacement: fileURLToPath(new URL('./src', import.meta.url)) }
        ]
    },
    server: {
        host: '0.0.0.0'
    }
});
```

# What works

- [x] NodeJS Latest
- [x] VueJS Latest
- [x] VITE Latest

# How to use the container

### Kitematic (the easy way)

1. Search for `Vue3 Vite`
2. Create Vue3Vite container
3. Point the `/usr/src/app` volume to your local application directory.

### CLI (the other easy way)

1. Pull in the image

  ```
    docker pull mahshamim/vue3-vite:latest
  ```  

2. Run the container

  ```
    docker run -p 80:5173 -v /path/to/your/app:/usr/src/app mahshamim/vue3-vite:latest
  ```

