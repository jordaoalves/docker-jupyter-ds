#!/bin/bash

# Exibe uma caixa de diálogo de progresso sem o botão de OK
zenity --info --text="Iniciando o processo de atualização do container..." --timeout=1

# Parar o container
sudo docker-compose down

# Construir a imagem novamente
sudo docker-compose build

# Iniciar o container
sudo docker-compose up -d

# Exibe uma caixa de diálogo informando que o processo foi concluído
zenity --info --text="Processo de atualização concluído com sucesso!" --timeout=2

