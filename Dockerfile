FROM node:lts-alpine3.15
WORKDIR /app
ENV NODE_ENV production
COPY package*.json ./
RUN npm i
RUN npm i -g pm2
EXPOSE 3000
COPY ./ ./
CMD ["pm2-runtime", "index.js"]