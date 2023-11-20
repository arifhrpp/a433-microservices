#!/bin/bash
docker build -t shipping-service:latest .

# Melihat daftar image di lokal.
docker images

# Build Docker image
docker build -t arifhrpp/shipping-service:latest .
docker build -t ghcr.io/arifhrpp/shipping-service:latest .

# Mengubah nama image agar sesuai dengan format Docker Hub (atau GitHub Packages bila menerapkan saran keempat).
docker image tag shipping-service:latest arifhrpp/shipping-service:latest
docker image tag shipping-service:latest ghcr.io/arifhrpp/shipping-service:latest

# Login ke Docker Hub (atau GitHub Packages bila menerapkan saran keempat) via Terminal.
export CR_PAT=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

# export PASSWORD_DOCKER_HUB=token
echo $PASSWORD_DOCKER_HUB | docker login -u arifhrpp --password-stdin
echo $CR_PAT | docker login ghcr.io -u arifhrpp --password-stdin

# Login to Docker Hub (or GitHub Package)
echo $PASSWORD_DOCKER_HUB | docker login -u arifhrpp --password-stdin

docker login ghcr.io -u arifhrpp --password-stdin

# Push Docker image
docker push arifhrpp/shipping-service:latest

docker push ghcr.io/arifhrpp/shipping-service:latest

