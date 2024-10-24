# Use the official Arch Linux image as the base
FROM archlinux:latest

# Update system and install necessary packages
RUN pacman -Syu --noconfirm && \
    pacman -S --noconfirm git archiso grub

# Create a directory for the workspace
WORKDIR /workdir

# Copy the entire repository into the container
COPY . .

# Set the output directory as a volume so you can retrieve the ISO later
VOLUME /workdir/out

# The default command just keeps the container running
CMD [ "sleep", "infinity" ]