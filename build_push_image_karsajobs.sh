#!/bin/bash

#perintah untuk membangun Docker image dengan tag "karsajobs:latest" dari direktori saat ini.
docker build -t karsajobs:latest .

# Menampilkan daftar image Docker yang ada di lokal.
docker images

# Membangun Docker image baru dengan tag "arifhrpp/karsajobs:latest" dari direktori saat ini.
docker build -t arifhrpp/karsajobs:latest .

# Membangun Docker image lain dengan tag "ghcr.io/arifhrpp/karsajobs:latest" dari direktori saat ini.
docker build -t ghcr.io/arifhrpp/karsajobs:latest .

# Mengubah nama image agar sesuai dengan format Docker Hub (atau GitHub Packages bila menerapkan saran keempat).
# docker image tag karsajobs:latest arifhrpp/karsajobs:latest
docker image tag karsajobs:latest ghcr.io/arifhrpp/karsajobs:latest

# Login ke Docker Hub (atau GitHub Packages bila menerapkan saran keempat) via Terminal.
# Menyimpan Personal Access Token (PAT) untuk GitHub Container Registry.
export CR_PAT=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

# export PASSWORD_DOCKER_HUB=token
# echo $PASSWORD_DOCKER_HUB | docker login -u arifhrpp --password-stdin 
# Melakukan login ke GitHub Container Registry dengan menggunakan PAT yang telah disimpan sebelumnya.
echo $CR_PAT | docker login ghcr.io -u arifhrpp --password-stdin

# Login to Docker Hub (or GitHub Package)
# Login ke Docker Hub (jika digunakan) dengan kata sandi yang disimpan sebelumnya.
echo $PASSWORD_DOCKER_HUB | docker login -u arifhrpp --password-stdin

#Login ke Docker Hub (jika digunakan) dengan kata sandi yang disimpan sebelumnya.
docker login ghcr.io -u arifhrpp --password-stdin

# Push Docker image
# Mengunggah Docker image ke Docker Hub dengan tag "arifhrpp/karsajobs:latest".
docker push arifhrpp/karsajobs:latest

# Mengunggah Docker image ke GitHub Container Registry dengan tag "ghcr.io/arifhrpp/karsajobs:latest".
docker push ghcr.io/arifhrpp/karsajobs:latest