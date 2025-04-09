FROM alpine:3.21.2

# renovate: datasource=github-releases packageName=hashicorp/vault
ARG VAULT_VERSION=1.19.0

# renovate: datasource=github-releases packageName=kubernetes/kubernetes ARG KUBECTL_VERSION=1.32.2
ARG KUBECTL_VERSION=1.32.2

# Vault
RUN curl -fsSL https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_amd64.zip -o vault.zip && \
    unzip vault.zip && mv vault /usr/local/bin/vault && chmod +x /usr/local/bin/vault && \
    strip /usr/local/bin/vault || true && \
    rm -f vault.zip LICENSE.txt

# kubectl
RUN curl -Lo /usr/local/bin/kubectl "https://dl.k8s.io/release/v${KUBECTL_VERSION}/bin/linux/amd64/kubectl" && \
    chmod +x /usr/local/bin/kubectl


EXPOSE 8080

USER 1001

CMD ["nginx", "-g", "daemon off;"]
