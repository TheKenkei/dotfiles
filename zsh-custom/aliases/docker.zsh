alias dc="docker compose"
alias drestart="docker compose down ; docker compose up -d && docker compose logs -f"

alias de="docker exec -it "
alias de-db="docker exec -it postgres su postgres"
alias dl="docker logs -f "
alias nginx-start-fast="docker run --name nginx \
    -v .:/app:ro \
    -v ~/.config/nginx.conf:/etc/nginx/conf.d/default.conf:ro \
    -p 81:81 \
    --rm \
    nginx:alpine
"
