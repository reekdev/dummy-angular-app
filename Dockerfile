FROM node:20-alpine

WORKDIR /app

COPY . .

RUN npm i -g pnpm

RUN pnpm install

EXPOSE 4200

CMD ["pnpm", "run", "start"]