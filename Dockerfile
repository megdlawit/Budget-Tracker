FROM node:18-buster

RUN apt-get update

RUN apt-get install -y build-essential

RUN yarn global add pnpm
WORKDIR /app

ADD package.json pnpm-lock.yaml /app/

RUN pnpm install

COPY . /app/

EXPOSE 5500

CMD ["pnpm", "run", "dev"]
