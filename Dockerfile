# Use Node.js runtime as a parent image
FROM node:18

# Set the working directory in the container to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY package.json yarn.lock ./

# Install the application dependencies
RUN yarn install --frozen-lockfile

# Copy the rest of the application code to the container
COPY . .

# Expose port 3000 for the application
EXPOSE 3000

# Command to run the application when the container starts
CMD ["yarn", "start"]
