alias dc="docker compose"
alias de="docker exec -it "
alias dl="docker logs -f "
alias drestart="docker compose down && docker compose up -d && docker ps"
alias nginx-start-fast="docker run --name nginx -v .:/app:ro -v ~/.config/nginx.conf:/etc/nginx/conf.d/default.conf -p 3000:3000 --rm nginx:alpine"

