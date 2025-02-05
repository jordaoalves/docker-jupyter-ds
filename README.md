# Docker Jupyter Notebook com CUDA 12.1 para Ciência de Dados e LLMs

Este repositório contém uma configuração de **Docker** que fornece um ambiente completo de **Jupyter Notebook** configurado com **CUDA 12.1**, otimizado para rodar projetos de **ciência de dados** e **modelos de linguagem (LLMs)**. A imagem é projetada para ser usada em sistemas com **GPU NVIDIA RTX 3060**, aproveitando ao máximo os recursos de aceleração de hardware.

Além disso, o projeto permite rodar **Jupyter Notebooks** em servidores com GPU e acessar os notebooks remotamente de máquinas sem GPU, como seu laptop pessoal.

## Funcionalidades

- **Jupyter Notebook** pronto para uso, configurado com pacotes essenciais para ciência de dados e modelos de aprendizado de máquina.
- Suporte à aceleração de hardware utilizando **CUDA 12.1** com drivers compatíveis para **NVIDIA RTX 3060**.
- Configuração pronta para ser utilizada em **diferentes ambientes**, seja no seu PC com GPU ou em outras máquinas que não possuam GPU.
- Arquivos pré-configurados com **docker-compose** para facilitar a execução e configuração do ambiente.
- Arquivo **requirements.txt** para instalação automática de dependências essenciais.

## Requisitos

Para usar este repositório, você precisará de:

- **Docker** e **Docker Compose** instalados na sua máquina.
- **NVIDIA Docker Toolkit** (para uso de CUDA com Docker em máquinas com GPUs NVIDIA).
- Sistema com **GPU NVIDIA** para aceleração de hardware (opcional, mas recomendado para aproveitamento total do CUDA).


