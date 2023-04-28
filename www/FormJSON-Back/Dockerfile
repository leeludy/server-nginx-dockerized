FROM node:16.13.0

# Create container app working directory
WORKDIR /usr/src/formjson-back

COPY package*.json ./
COPY prisma ./prisma/

# If you are building your code for production
RUN npm install --only=production --omit=dev

COPY . .

RUN npm i -D @nestjs/cli
RUN npx prisma generate
RUN npm run build

EXPOSE 3000

CMD [ "node", "dist/src/main" ]
