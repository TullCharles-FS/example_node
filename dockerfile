FROM node:14
WORKDIR /user/src/app
COPY package*.json app.js ./
RUN npm install
EXPOSE 3000
CMD ["node", "app.js"]

FROM php
COPY ./index.php ./
EXPOSE 3000
CMD ["php", "-S", "0.0.0.0:3000"]

FROM openjdk:8
COPY . /app/
WORKDIR /app
ENTRYPOINT ["java", "Main"]
RUN javac Main.java
