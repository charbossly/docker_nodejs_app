FROM node:18
WORKDIR /app
ADD package*.json ./
RUN npm install
ADD index.js ./
CMD [ "node", "index.js"]
# If you are building your code for production
# RUN npm ci --omit=dev