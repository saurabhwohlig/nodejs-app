FROM node:14
ARG ACCESS_TOKEN
ENV ACCESS_TOKEN $ACCESS_TOKEN
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 5000
CMD ["npm" ,"start"]