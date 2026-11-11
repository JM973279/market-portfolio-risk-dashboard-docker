# Market & Portfolio Risk Intelligence — Docker (전체 대시보드)

원본: https://github.com/tina77302/market-portfolio-risk-intelligence

## 가장 쉽게 실행하는 방법

```bash
git clone https://github.com/JM973279/market-portfolio-risk-dashboard-docker.git
cd market-portfolio-risk-dashboard-docker
chmod +x setup-and-run.sh
./setup-and-run.sh
```

스크립트가 원본 저장소를 자동으로 가져와서 Docker로 빌드한 뒤 실행합니다.

완료 후 브라우저에서 **http://localhost:3000** 열기.

## 수동 실행

```bash
# 원본 클론
git clone --depth 1 https://github.com/tina77302/market-portfolio-risk-intelligence.git
cd market-portfolio-risk-intelligence

# 이 저장소의 Dockerfile* 와 docker-compose.yml 를 복사
# 그런 다음
docker compose up --build
```

## 포트

- 프론트엔드: 3000
- Portfolio API: 8000

다른 사람이 바로 볼 수 있게 공개하려면 Render / Railway / Fly.io 에 이 compose 파일로 배포하세요.
