# Usando a imagem base com PyTorch e CUDA
FROM quay.io/jupyter/pytorch-notebook:cuda12-python-3.11

# Definir variáveis de ambiente no Dockerfile (se necessário)
ARG CMAKE_ARGS
ARG FORCE_CMAKE

ENV CMAKE_ARGS=${CMAKE_ARGS}
ENV FORCE_CMAKE=${FORCE_CMAKE}	

# Instalar dependências adicionais (se necessário)
USER root
RUN apt-get update && apt-get install -y \
    nvidia-cuda-toolkit \
    git \
    vim \
    ffmpeg \
    curl \
    && rm -rf /var/lib/apt/lists/*

# Copiar o arquivo requirements.txt para o contêiner
COPY requirements.txt /tmp/requirements.txt

# Instalar pacotes Python a partir do requirements.txt
RUN pip install --no-cache-dir -r /tmp/requirements.txt

# Instalar o pacote llama-cpp-python com o índice extra para CUDA 12.1
#RUN pip install llama-cpp-python --extra-index-url https://abetlen.github.io/llama-cpp-python/whl/cu121

# Definir diretório de trabalho (opcional)
WORKDIR /home/jovyan/work

# Expõe a porta para o Jupyter Notebook
EXPOSE 8888

# Comando de inicialização padrão
CMD ["start-notebook.sh"]
