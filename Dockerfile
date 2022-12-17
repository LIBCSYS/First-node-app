FROM node 

WORKDIR /app

COPY . /app

RUN npm install

EXPOSE 8075

CMD ["node", "server.js"]




