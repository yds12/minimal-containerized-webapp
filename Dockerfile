FROM node:12

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

# Uncomment the command below to set the variable PORT in the container.
# This is not necessary if we pass the option -e when executing
# docker run.
#ENV PORT=8080

# Uncomment the command below to expose the specified ports in the container.
# This is not necessary if we pass the port mapping (-p) when executing
# docker run.
#EXPOSE 8080 3000

CMD ["npm", "start"]
