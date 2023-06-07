# Sử dụng hình ảnh cơ sở có chứa Node.js
FROM node:14

# Thiết lập thư mục làm việc trong container
WORKDIR /web

# Sao chép package.json và package-lock.json vào thư mục làm việc
COPY package*.json ./

# Cài đặt các dependencies
RUN npm install

# Sao chép mã nguồn ứng dụng vào thư mục làm việc
COPY . .

# Mở cổng 3000 cho ứng dụng web
EXPOSE 3000

# Chạy lệnh để khởi động ứng dụng
CMD ["npm", "start"]
docker build -t new_image_face_anime:tag .
docker run -p 3000:3000 -d new_image_face_anime:tag
