# 공식 Node.js 이미지를 사용
FROM node:14-alpine

# 작업 디렉터리 설정
WORKDIR /app

# package.json 파일 복사 및 종속성 설치
COPY package.json ./
RUN npm install

# 프로젝트 파일 복사
COPY . .

# 프로젝트 빌드
RUN npm run build

# 포트 8080 노출
EXPOSE 8080

# 애플리케이션 시작
CMD ["npm", "run", "serve"]
