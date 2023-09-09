# Use a imagem oficial do Ruby como base
FROM ruby:2.7.7

# Configure a pasta de trabalho dentro do contêiner
WORKDIR /app

# Copie o Gemfile e o Gemfile.lock para o contêiner
COPY Gemfile Gemfile.lock ./

# Instale as dependências Ruby
RUN bundle install

# Copie o código-fonte do aplicativo para o contêiner
COPY . .

# Copie o script de inicialização para o contêiner
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]

# Expõe a porta 3000 para que possa ser acessada fora do contêiner
EXPOSE 3000
