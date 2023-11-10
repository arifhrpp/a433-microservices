#!/bin/bash

# Perintah untuk membuat Docker image dari Dockerfile yang tadi dibuat, dengan nama image karsajobs-ui, dan memiliki tag latest.
# Membangun Docker image dengan tag "karsajobs-ui:latest" dari Dockerfile yang ada dalam direktori saat ini.
docker build -t karsajobs-ui:latest .

# Melihat daftar image di lokal.
# Menampilkan daftar image Docker yang ada di lokal.
docker images

# Mengubah nama image agar sesuai dengan format Docker Hub (atau GitHub Packages bila menerapkan saran keempat).
# Mengubah nama image Docker "karsajobs-ui:latest" menjadi "ghcr.io/arifhrpp/karsajobs-ui:latest" agar sesuai dengan format GHCR.
docker image tag karsajobs-ui:latest ghcr.io/arifhrpp/karsajobs-ui:latest

# Login ke Docker Hub (atau GitHub Packages) via Terminal.
# Menyimpan Personal Access Token (PAT) untuk GitHub Container Registry.
export CR_PAT=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

# export PASSWORD_DOCKER_HUB=token
# echo $PASSWORD_DOCKER_HUB | docker login -u arifhrpp --password-stdin
# Melakukan login ke GitHub Container Registry dengan menggunakan PAT yang telah disimpan sebelumnya.
echo $CR_PAT | docker login ghcr.io -u arifhrpp --password-stdin

# Mengunggah image ke Docker Hub (atau GitHub Packages bila menerapkan saran keempat).
# docker push arifhrpp/karsajobs-ui:latest
# Mengunggah Docker image ke GitHub Container Registry dengan tag "ghcr.io/arifhrpp/karsajobs-ui:latest".
docker push ghcr.io/arifhrpp/karsajobs-ui:latest