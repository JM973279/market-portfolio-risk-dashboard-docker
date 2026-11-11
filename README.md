# Market & Portfolio Risk Intelligence — Docker

전체 대시보드(Next.js 프론트엔드 + Portfolio Risk API)를 Docker로 쉽게 실행할 수 있게 한 설정입니다.

원본 저장소: https://github.com/tina77302/market-portfolio-risk-intelligence

## 빠른 실행

```bash
# 이 저장소를 클론한 뒤
git clone https://github.com/JM973279/market-portfolio-risk-dashboard-docker.git
cd market-portfolio-risk-dashboard-docker

# 원본 코드를 가져옵니다 (data 포함)
git clone --depth 1 https://github.com/tina77302/market-portfolio-risk-intelligence.git .
# 또는 이미 클론되어 있다면 이 파일들을 덮어쓰세요

docker compose up --build
```

브라우저에서 http://localhost:3000 접속.

- 프론트엔드: 3000
- Portfolio API: 8000 (헬스체크: http://localhost:8000/health)

## 파일 설명

- `Dockerfile.api` : Python FastAPI 포트폴리오 API
- `Dockerfile.frontend` : Next.js 대시보드 (빌드 포함)
- `docker-compose.yml` : 두 서비스를 함께 띄움. 프론트엔드가 API로 프록시합니다.

## 다른 사람과 공유

1. 로컬에서 `docker compose up` 후 같은 네트워크에서 접근
2. 공개 URL이 필요하면 [Render](https://render.com), [Railway](https://railway.app), [Fly.io](https://fly.io)에 docker-compose로 배포
3. 또는 이미지를 빌드해 Docker Hub / GHCR에 푸시

원본의 `render.yaml`을 활용해 Render에 바로 배포하는 것도 가능합니다.
