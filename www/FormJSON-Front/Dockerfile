FROM node:16.14.0
# Set the working directory to /app inside the container
WORKDIR /usr/src/formjson-front
# Copy app files
COPY package*.json ./

COPY . .
# ==== BUILD =====
# Install dependencies (npm ci makes sure the exact versions in the lockfile gets installed)
RUN npm ci
# Build the app
# ==== RUN =======
ENV VITE_LOCALHOST_BACK 192.168.1.14:3000
# Expose the port on which the app will be running
EXPOSE 81
# Start the app
CMD [ "npm", "test" ]