FROM node:20-alpine

WORKDIR /app

COPY index.html style.css script.js server.js ./

EXPOSE 3001

CMD ["node", "server.js"]
