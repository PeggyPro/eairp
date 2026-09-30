# Stage 1: Web构建
FROM node:18.18.0-alpine AS build-web
ARG API_BASE_URL
WORKDIR /app/web
COPY ./web .
RUN sed -i "s|api_base_url|${API_BASE_URL}|g" .env.docker && \
    npm install pnpm -g && \
    pnpm install --frozen-lockfile && \
    pnpm run build:docker && \
    rm -rf /root/.npm

# Stage 2: API构建
FROM maven:3.9-eclipse-temurin-21 AS build-api
WORKDIR /build

# 复制整个core目录结构
COPY ./core ./

# 多阶段下载依赖
RUN mvn -B package -DskipTests

# Stage 3: 最终镜像
FROM nginx:1.23.4 AS final
WORKDIR /application

RUN apt-get update && apt-get install -y wget && \
    wget https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21%2B35/OpenJDK21U-jdk_x64_linux_hotspot_21_35.tar.gz && \
    tar -xzf OpenJDK21U-jdk_x64_linux_hotspot_21_35.tar.gz -C /usr/local && \
    rm OpenJDK21U-jdk_x64_linux_hotspot_21_35.tar.gz && \
    ln -s /usr/local/jdk-21+35 /usr/local/java && \
    apt-get clean

ENV JAVA_HOME /usr/local/java
ENV PATH $JAVA_HOME/bin:$PATH

COPY --from=build-api /build/api/target/eairp-core.jar application.jar
COPY --from=build-web /app/web/dist /usr/share/nginx/html/dist
COPY --from=build-web /app/web/nginx.conf /etc/nginx/nginx.conf

EXPOSE 80 8088
CMD java -Dspring.profiles.active=docker -jar application.jar & nginx -g 'daemon off;'
