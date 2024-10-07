FROM webdevops/php-nginx:8.2-alpine AS build
RUN apk add tzdata && cp /usr/share/zoneinfo/Asia/Ho_Chi_Minh /etc/localtime && echo "Asia/Ho_Chi_Minh" >  /etc/timezone
WORKDIR /app

# Cài đặt NPM và build frontend
RUN apk add --update nodejs npm
RUN node --version
RUN npm --version
COPY package.json /app/
RUN npm install

# Cài đặt PHP và Composer
COPY . /app
RUN rm -rf /app/storage/installed
RUN sed -i -e "2 s/APP_VERSION: .*/APP_VERSION: $(date '+%Y.%m.%d.%H.%M')/" ./.env.production
RUN composer install --no-dev

# build source code
RUN npm run build && rm -rf node_modules
RUN chmod -R 777 /app/storage


FROM webdevops/php-nginx:8.2-alpine
RUN apk add tzdata && cp /usr/share/zoneinfo/Asia/Ho_Chi_Minh /etc/localtime && echo "Asia/Ho_Chi_Minh" >  /etc/timezone
COPY nginx /opt/docker/etc/nginx
COPY nginx/php/php.ini /opt/docker/etc/php/php.ini
WORKDIR /app
COPY --from=build /app/ /app/

COPY .env.production /app/.env
RUN php artisan key:generate --force
RUN php artisan optimize:clear
RUN chmod -R 777 storage bootstrap
EXPOSE 80
