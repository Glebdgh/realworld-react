FROM node:18

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

ENV REACT_APP_BACKEND_URL=http://java-app-service.default.svc.cluster.local:8080

EXPOSE 4100

CMD ["npm", "start"]
