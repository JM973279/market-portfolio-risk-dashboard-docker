#!/bin/bash
set -e

echo "=== Market & Portfolio Risk Intelligence Dashboard ==="
echo "전체 대시보드를 Docker로 실행합니다."

# Clone original if structure is missing
if [ ! -d "src/portfolio" ]; then
  echo "원본 저장소를 클론합니다..."
  git clone --depth 1 https://github.com/tina77302/market-portfolio-risk-intelligence.git temp-src
  shopt -s dotglob
  mv temp-src/* .
  rmdir temp-src
fi

echo "Docker Compose로 빌드 및 실행 중..."
docker compose up --build -d

echo ""
echo "완료! 브라우저에서 http://localhost:3000 으로 접속하세요."
echo "API 헬스체크: http://localhost:8000/health"
