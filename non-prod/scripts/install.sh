helm repo add chatwoot https://chatwoot.github.io/charts
helm install chatwoot chatwoot/chatwoot -f .env_chat.yml


git clone https://github.com/novuhq/novu.git


cd novu/docker/kubernetes/helm/
mv Chart.lock
helm dependency build

kubectl edit svc my-novu-web
helm install my-novu  ./ --set store.encryptionKey=$(openssl rand -base64 32)