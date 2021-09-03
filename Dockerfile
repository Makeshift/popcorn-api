FROM node:alpine

RUN npm install -g cross-env rollup

COPY package* .

RUN npm install

COPY . .

RUN npm run build && \
    npm prune --production

CMD [ "npm", "start" ]
