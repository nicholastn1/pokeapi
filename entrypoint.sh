#!/bin/bash

# Espera até que o banco de dados esteja pronto
until (echo > /dev/tcp/db/5432) >/dev/null 2>&1
do
  echo "Aguardando o banco de dados..."
  sleep 1
done

# Executa as migrações pendentes
rails db:migrate RAILS_ENV=development

# Inicializa o servidor Rails
rails server -b 0.0.0.0
