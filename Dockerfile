FROM node:lts
WORKDIR /usr/src/app
# install vite globally
RUN npm install -g vite --only=development
# copy both 'package.json' and 'package-lock.json' (if available)
COPY package*.json ./
# copy all filtes
COPY . .
# install all deps
RUN yarn install --only=development

VOLUME ["/usr/src/app"]
VOLUME ["/usr/src/app/node_modules"]
# vite default port
EXPOSE 5173
CMD ["yarn", "run", "dev"]
# docker build -t lebu-pay-admin-panel-image .
# docker run -it -p 3001:5173 --name lebu-pay-front-end lebu-pay-front-end-image
