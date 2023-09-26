
# Perintah untuk membuat Docker image dari Dockerfile dengan nama image item-app, dan memiliki tag v1.
docker build -t item-app:v1 .

# Melihat daftar image di lokal.
docker images

# Mengubah nama image agar sesuai dengan format Docker Hub (atau GitHub Packages bila menerapkan saran keempat).
docker tag item-app:v1 NAMA_DOCKER_HUB/REPOSITORY:item-app-v1

# Login ke Docker Hub (atau GitHub Packages bila menerapkan saran keempat) via Terminal.
echo $PASSWORD_DOCKER_HUB | docker login -u arifhrpp --password-stdin

# Mengunggah image ke Docker Hub (atau GitHub Packages bila menerapkan saran keempat).
docker push arifhrpp/REPOSITORY:item-app-v1

