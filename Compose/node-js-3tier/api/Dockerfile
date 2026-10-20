FROM node:18

WORKDIR /usr/src/app

COPY package*.json .

RUN npm install

COPY . .

ENV PORT=3001 \
    DB=world \
    DBUSER=kaizen \
    DBPASS=hello123 \
    DBHOST=34.170.23.1 \
    DBPORT=3306

EXPOSE 3001

CMD ["npm", "start"]

