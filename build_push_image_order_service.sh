#!/bin/bash
docker build -t order-service:latest .

# Melihat daftar image di lokal.
docker images

# Build Docker image
docker build -t arifhrpp/order-service:latest .
docker build -t ghcr.io/arifhrpp/order-service:latest .

# Mengubah nama image agar sesuai dengan format Docker Hub (atau GitHub Packages bila menerapkan saran keempat).
# docker image tag order-service:latest arifhrpp/order-service:latest
docker image tag order-service:latest ghcr.io/arifhrpp/order-service:latest

# Login ke Docker Hub (atau GitHub Packages bila menerapkan saran keempat) via Terminal.
export CR_PAT=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

# export PASSWORD_DOCKER_HUB=token
# echo $PASSWORD_DOCKER_HUB | docker login -u arifhrpp --password-stdin
echo $CR_PAT | docker login ghcr.io -u arifhrpp --password-stdin

# Login to Docker Hub (or GitHub Package)
echo $PASSWORD_DOCKER_HUB | docker login -u arifhrpp --password-stdin
docker login ghcr.io -u arifhrpp --password-stdin

# Push Docker image
docker push arifhrpp/karsajobs:latest

<<<<<<< HEAD
docker push ghcr.io/arifhrpp/karsajobs:latest
=======
docker push ghcr.io/arifhrpp/order-service:latest
>>>>>>> c939973ced66c6846349cf811cd5746a150aaa2b
