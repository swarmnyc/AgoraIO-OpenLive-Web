npm run lint
# build for production with minification
npm run build

docker build . -t agora-web-demo

$(aws ecr get-login --no-include-email --region us-east-1 --profile swarm_ci)
docker tag agora-web-demo:latest 348054937474.dkr.ecr.us-east-1.amazonaws.com/agora-web-demo:latest
docker push 348054937474.dkr.ecr.us-east-1.amazonaws.com/agora-web-demo:latest
