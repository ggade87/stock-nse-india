FROM node:14
WORKDIR /app
COPY src/ src/
COPY examples/ examples/
COPY package.json ./

COPY tsconfig.json ./
ENV TZ="Asia/Kolkata"
RUN npm install
RUN npm run build
ENV PORT=3001
EXPOSE 3001
CMD npm start
