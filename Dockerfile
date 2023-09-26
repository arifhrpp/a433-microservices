# Menggunakan base image Node.js versi 14
FROM node:14

# Menentukan working directory di dalam container di arahkan ke path /app
WORKDIR /app

# Menyalin seluruh source code ke dalam container
COPY . .

# Menentukan variabel lingkungan NODE_ENV dan DB_HOST
ENV NODE_ENV=production DB_HOST=item-db

# Menginstal dependencies untuk production dan build aplikasi
RUN npm install --production --unsafe-perm && npm run build

# Mengekspos ke port 8080
EXPOSE 8080

#jalankan server dengan perintah npm start
CMD ["npm", "start"]
