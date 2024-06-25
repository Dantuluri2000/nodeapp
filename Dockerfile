FROM node:18 AS base
RUN echo "step 1"

# WORKDIR /app

RUN echo "step 2"

COPY package.json package.json
COPY package-lock.json package-lock.json
RUN echo "step 3"

RUN npm ci; 
RUN echo "step 4"

COPY /node_modules /node_modules
COPY /src /src

# RUN npm run dev

EXPOSE 8100

ENV PORT 8100

CMD npm run dev