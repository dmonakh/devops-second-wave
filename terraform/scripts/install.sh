helm repo add chatwoot https://chatwoot.github.io/charts
helm install chatwoot chatwoot/chatwoot -f .env_chat.yml
git clone https://github.com/novuhq/novu.git
cd novu/docker/kubernetes/helm/
helm dependency build
helm install my-novu  ./ --set store.encryptionKey=$(openssl rand -base64 32