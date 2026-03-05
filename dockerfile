# Estágio 1: Builder (Instala as ferramentas de construção)
FROM python:3.9-slim AS builder
WORKDIR /app
RUN pip install --user flask

# Estágio 2: Final (O que vai para o servidor - Seguro e Pequeno)
FROM python:3.9-slim
WORKDIR /app

# Copiamos apenas as bibliotecas prontas do estágio anterior
COPY --from=builder /root/.local /root/.local
# Copiamos o seu código da pasta app para a raiz do container
COPY app/ .

# Ajustamos o PATH para o Linux achar o Flask
ENV PATH=/root/.local/bin:$PATH
EXPOSE 5000
CMD ["python", "app.py"]
