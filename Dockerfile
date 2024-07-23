# Use an official Debian-based image
FROM ubuntu:latest

# Set the working directory inside the container
WORKDIR /app

# Install necessary packages
RUN apt-get update && apt-get install -y \
    fortune-mod \
    cowsay \
    netcat
# Explicitly add /usr/games and /usr/local/games to PATH
ENV PATH="/usr/games:/usr/local/games:${PATH}"

# Copy the script into the container
COPY wisecow.sh .

# Make the script executable
RUN chmod +x wisecow.sh

# Run the script
CMD ["./wisecow.sh"]
