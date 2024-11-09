# ���� Node.js �̹����� ���
FROM node:14-alpine

# �۾� ���͸� ����
WORKDIR /app

# package.json ���� ���� �� ���Ӽ� ��ġ
COPY package.json ./
RUN npm install

# ������Ʈ ���� ����
COPY . .

# ������Ʈ ����
RUN npm run build

# ��Ʈ 8080 ����
EXPOSE 8080

# ���ø����̼� ����
CMD ["npm", "run", "serve"]
