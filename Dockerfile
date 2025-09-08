# Use the official Node.js image as the base image
FROM node:20-alpine 

#ENV http_proxy=http://10.190.21.24:3128
#ENV https_proxy=http://10.190.21.24:3128
#ENV no_proxy=localhost,127.0.0.1,.example.com
#ENV HTTP_PROXY=http://10.190.21.24:3128
#ENV HTTPS_PROXY=http://10.190.21.24:3128
#ENV NO_PROXY=localhost,127.0.0.1,.example.com


# RUN apk update && apk add nano curl vi
# RUN apt update && apt install -y nano curl


# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./
COPY app.js ./


# Install dependencies
RUN npm install

# Copy the rest of the project files to the container
#COPY . .


# Expose port 3000 for the Nuxt app
EXPOSE 3000

# Start the Nuxt server
CMD ["npm", "start"]


#docker build -t express-proxy:dev-v0.0.1 .
