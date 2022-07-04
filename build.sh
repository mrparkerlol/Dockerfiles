docker buildx rm cloudflare-caddy

docker buildx create --name cloudflare-caddy
docker buildx use cloudflare-caddy

docker buildx build --platform linux/amd64,linux/arm64,linux/arm/v7 -t mrparker/cloudflare-caddy:latest --push ./cloudflare-caddy
docker buildx build --platform linux/amd64,linux/arm64,linux/arm/v7 -t mrparker/cloudflare-caddy:2.5.1 --push ./cloudflare-caddy