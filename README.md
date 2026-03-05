cat <<'EOF' > README.md
# 🚀 Automação de Infraestrutura: AWS + Docker

Projeto desenvolvido para colocar em prática conceitos de **DevOps**, focando em automação de nuvem e conteinerização.

## 🏗️ O que eu dominei neste laboratório:

### 1. Networking na AWS (VPC & Subnet)
Utilizei a **AWS CLI** para criar o "terreno" onde a aplicação roda:
* **VPC:** Criação de uma rede isolada (`10.0.0.0/16`).
* **Subnet:** Segmentação da rede para organizar os recursos.

### 2. Automação com Bash Script
Criei o script `deploy.sh` que automatiza todo o processo manual. Em vez de clicar no console da AWS, tudo é feito via código (Infraestrutura como Código).

### 3. Docker & Flask
* **App:** Uma API simples em Python (Flask).
* **Dockerfile:** Uso de **Multi-stage build** para criar uma imagem leve e segura.
* **Compose:** Orquestração do container mapeando portas e ambiente.

## 🚀 Como testar o projeto
1. Configure suas chaves: `aws configure`
2. Execute o deploy: `./deploy.sh`
3. Acesse em: `http://localhost:5000`

---
**Status:** 💡 Em constante aprendizado sobre automação e Cloud Computing.
EOF
