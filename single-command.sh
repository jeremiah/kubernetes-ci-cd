docker stop socat-registry; docker rm socat-registry; \
docker run -d -e "REGIP=`minikube ip`" --name socat-registry \
  -p 30400:5000 chadmoon/socat:latest bash -c "socat \
  TCP4-LISTEN:5000,fork,reuseaddr TCP4:`minikube ip`:30400"
