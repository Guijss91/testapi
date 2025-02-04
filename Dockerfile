# FROM python:3

# WORKDIR /app

# COPY . .

# CMD ["python", "app/main.py"]

# Usa uma imagem oficial do Python como base
# FROM python:3.11

# Define o diretório de trabalho dentro do contêiner
# WORKDIR /app

# Copia os arquivos do projeto para o contêiner
# COPY . .

# Instala as dependências
# RUN pip install --no-cache-dir -r requirements.txt

# Expõe a porta 5000 (usada pelo Flask)
# EXPOSE 5000

# Define o comando para rodar a aplicação
# CMD ["python", "/app/index.py"]


FROM python:3.9

# Define o diretório de trabalho no container
WORKDIR /app

# Copia os arquivos necessários para o container
COPY index.py Dados.csv requirements.txt ./

# Instala as dependências do projeto
RUN pip install --no-cache-dir -r requirements.txt

# Expõe a porta que o Flask usará
EXPOSE 5000

# Define o comando para rodar a aplicação
CMD ["python", "index.py"]
