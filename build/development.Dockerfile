FROM node:10

COPY ["package.json", "package-lock.json", "/usr/src/"]

WORKDIR /usr/src

RUN npm install --only=production

COPY [".", "/usr/src/"]

RUN npm install --only=development

EXPOSE 3000

CMD ["npx", "nodemon", "index.js"]
