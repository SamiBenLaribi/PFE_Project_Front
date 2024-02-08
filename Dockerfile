
From node:latest as node
RUN mkdir -p /app
WORKDIR /usr/local/app
COPY ./ /usr/local/app
RUN npm install
RUN npm run build


FROM nginx:alpine
COPY --from=node /app/dist/argon-design-system-angular /usr/share/nginx/html
