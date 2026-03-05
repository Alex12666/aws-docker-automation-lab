from flask import Flask
import os

app = Flask(__name__)

@app.route('/')
def home():
    # Usar variáveis de ambiente é regra de ouro no DevOps (12-Factor App)
    usuario = os.getenv('USER_NAME', 'Alexandre')
    return f"<h1>🚀 DevOps Lab</h1><p>Bem-vindo, {usuario}. App rodando com sucesso!</p>"

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)