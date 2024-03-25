#!/bin/bash

helm repo add chatwoot https://chatwoot.github.io/charts
helm install chatwoot chatwoot/chatwoot -f chatwoot/.env_chat.yml