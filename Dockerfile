FROM arm32v6/node:10-alpine
LABEL maintainer="aibotnya@gmail.com" \
         version="1.1"

COPY bin/ /usr/bin/
COPY ./frontend  /frontend
WORKDIR /frontend
RUN [ "cross-build-start" ]
RUN npm install
RUN npm run build
RUN [ "cross-build-end" ]
EXPOSE 4200
