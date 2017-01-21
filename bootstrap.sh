apt-get update && apt-get upgrade -y

#DOCKER
curl -sSL https://get.docker.io | sh;
systemctl enable docker.service/
systemctl start docker.service

#DOCKER COMPOSE
curl -L https://github.com/docker/compose/releases/download/1.9.0/docker-compose-Linux-x86_64 -o /usr/local/bin/docker-compose;
chmod +x /usr/local/bin/docker-compose;

#KUBERNETES - KUBECTL
curl -Lo kubectl https://storage.googleapis.com/kubernetes-release/release/v1.5.1/bin/linux/amd64/kubectl; 
chmod +x kubectl; sudo mv kubectl /usr/local/bin/;

#MINIKUBE
curl -Lo minikube https://storage.googleapis.com/minikube/releases/v0.14.0/minikube-linux-amd64;
chmod +x minikube && sudo mv minikube /usr/local/bin/ 

#KOPS
wget https://github.com/kubernetes/kops/releases/download/v1.4.4/kops-linux-amd64 -O kops
mv kops /usr/local/bin/kops && chmod +x /usr/local/bin/kops 

#AWS - CLI
apt-get install python-pip -y
pip install awscli

#RSA KEY
ssh-keygen -f .ssh/id_rsa; cat .ssh/id_rsa.pub	

apt-get clean