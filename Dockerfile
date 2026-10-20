
FROM redocly/cli AS builder
WORKDIR /app
COPY .
RUN redocly build-docs <new-backery-> --output=index.html
FROM nginx:alpine
COPY --from=builder /app/index.html /usr/share/nginx/html/index.html
EXPOSE 80 

