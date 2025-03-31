#!/bin/bash

# Generate a random WireGuard password
WG_PASSWORD=$(openssl rand -hex 64)

# Generate a hashed password using wg-easy and extract only the hash value
WG_PASSWORD_HASH=$(docker run --rm ghcr.io/wg-easy/wg-easy wgpw "$WG_PASSWORD" | awk -F"'" '{print $2}')

# Format the hashed password for Docker Compose (replace $ with $$)
WG_PASSWORD_HASH_DOCKER_COMPOSE=$(echo "$WG_PASSWORD_HASH" | sed 's/\$/$$/g')

# Format the hashed password for Terraform (replace $ with \\$$)
WG_PASSWORD_HASH_TERRAFORM=$(echo "$WG_PASSWORD_HASH" | sed 's/\$/\\\\$\\\\$/g')

# Print the generated password and formatted hashes
echo "Generated Password: $WG_PASSWORD"
echo "Hashed Password: $WG_PASSWORD_HASH"
echo "Docker Compose Formatted Hash: $WG_PASSWORD_HASH_DOCKER_COMPOSE"
echo "Terraform Formatted Hash: $WG_PASSWORD_HASH_TERRAFORM"
