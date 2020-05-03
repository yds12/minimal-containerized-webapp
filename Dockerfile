# Use the Node.js official Docker image as a starting point.
# If this is not "pulled" in your machine yet, it will be automatically.
FROM node:12

# Working directory for the application, inside the container.
WORKDIR /usr/src/app

# Copy the package.json files.
COPY package*.json ./

# Install the app dependencies with NPM
RUN npm install

# Copy your local app files to the current working directory in the
# container.
COPY . .

# Uncomment the command below to set the variable PORT in the container.
# This is not necessary if we pass the option -e when executing
# docker run.
#ENV PORT=8080

# Uncomment the command below to expose the specified ports in the container.
# This is not necessary if we pass the port mapping (-p) when executing
# docker run.
#EXPOSE 8080 3000

# Execute npm start to start the web server.
CMD ["npm", "start"]
