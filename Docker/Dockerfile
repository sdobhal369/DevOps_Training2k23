FROM ubuntu:16.04

# Create app directory in container
RUN mkdir -p /app/

# Set /app directory as default working directory
WORKDIR /app

# Copy all file from current dir to /app in container
COPY . /app/

# Command to run at the start of the container
CMD [ "bash", "script.sh" ]