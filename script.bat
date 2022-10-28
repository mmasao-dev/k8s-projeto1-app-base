echo "Criando as imagens .........."

docker build -t mmasao/projeto-backend:1.0 backend/.

docker build -t mmasao/projeto-database:1.0 database/.

echo "Realisando push das imagens ......."

docker push mmasao/projeto-backend:1.0
docker push mmasao/projeto-database:1.0

echo "Criando serviços do cluster kubernetes......"

kubectl apply -f ./services.yml


echo "Criando deployments........."

kubectl apply -f ./deployments.yml

