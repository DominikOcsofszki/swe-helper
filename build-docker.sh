
docker-buildx build -f Dockerfile_swe -t my-temp-image . || exit 1
docker run -d --name my-temp-container my-temp-image || exit 1
docker exec -it my-temp-container /bin/bash

