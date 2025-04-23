FROM alpine:3.21.2

# renovate: datasource=github-releases packageName=hashicorp/vault ARG VAULT_VERSION=1.19.0
ARG VAULT_VERSION=1.19.0

# renovate: datasource=github-releases packageName=kubernetes/kubernetes ARG KUBECTL_VERSION=1.32.2
ARG KUBECTL_VERSION=1.32.2

# renovate: datasource=github-releases packageName=helm/helm ARG HELM_VERSION=3.17.3
ARG HELM_VERSION=3.17.1

# renovate: datasource=github-releases packageName=hashicorp/terraform ARG TERRAFORM_VERSION=1.11.2
ARG TERRAFORM_VERSION=1.11.2
