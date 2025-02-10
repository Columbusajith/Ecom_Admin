FROM node:22.12.0-alpine

WORKDIR /app

COPY package.json .

RUN npm install -g npm@10.9.0

RUN npm install --force

# RUN npm install @mui/x-tree-view --force


# ENV NODE_OPTIONS=--max-old-space-size=4500

COPY . .


EXPOSE 3000

CMD ["npm", "start"]