# 1: Napravi Node docker image
FROM node:22-alpine3.21 as buckit
WORKDIR /app

# 2: Copy paackage json and package-lock files
COPY . .
RUN npm ci
RUN npm install -g @angular/cli

# 3: After istalling angular copy rest of the files
RUN npm run build

# 4: Sad mi treba nginx image
FROM nginx:latest

# 5: Copy nginx.conf, private key, certificate
COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./private/www.chuckylab.com.key /etc/ssl/private/server.key
COPY ./private/www.chuckylab.com.crt /etc/ssl/certs/server.crt

# 6: Copy build files and google ads.txt
COPY --from=buckit /app/dist/webpage/browser /usr/share/nginx/html
COPY ./private/app-ads.txt /usr/share/nginx/html/app-ads.txt

 

# Build: docker build -t buckit .
# Run: docker run --name buckit-web -d -p 8081:80 -p 8091:443 buckit