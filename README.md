# PokeAPI

<div style="text-align:center; margin: 15px 0 15px 0">
  <img src="https://th.bing.com/th/id/R.80e6a717128e97c831288d0bd1bf8774?rik=GcDK2rcAnZQ8Bg&riu=http%3a%2f%2fwww.gamefm.com.br%2fwp-content%2fuploads%2f2012%2f12%2fPokedex_DP.png&ehk=hAhrHj6ZyrPCUxuQAoikauKZ9MWg3FGbASzOlSACmvI%3d&risl=&pid=ImgRaw&r=0" alt="Logo" width="300px" />
</div>


Bem-vindo ao PokeAPI, um projeto que permite buscar informações sobre Pokémon na PokeAPI.

## Tabela de Conteúdo

- [PokeAPI](#pokeapi)
  - [Tabela de Conteúdo](#tabela-de-conteúdo)
  - [Ambiente de Produção](#ambiente-de-produção)
  - [Visão Geral](#visão-geral)
  - [Instalação](#instalação)
  - [Uso](#uso)
  - [Estrutura do Projeto](#estrutura-do-projeto)

## Ambiente de Produção

A API está disponível em https://pokeapi-jlft.onrender.com, porém você também pode acessar a versão web em https://pokeapiweb.vercel.app/.

## Visão Geral

Este projeto é uma API em Ruby on Rails que consome a PokeAPI para buscar informações sobre Pokémon. A API permite realizar consultas para obter informações sobre Pokémon e suas habilidades.

## Instalação

Siga as instruções abaixo para configurar o ambiente de desenvolvimento e executar o projeto localmente.

1. Clone o repositório:

    ```bash
    git clone https://github.com/seu-username/pokeapi.git
    cd pokeapi
    ```

2. Instale as dependências:

    ```bash
    bundle install
    ```

3. Configure o banco de dados:

    ```bash
    rails db:create db:migrate
    ```

4. Execute o servidor:

    ```bash
    rails s
    ```

5. Acesse a API em `http://localhost:3000/`.

## Uso

Você pode usar o Swagger UI para interagir com a API e explorar os endpoints disponíveis. Siga estas etapas para acessar o Swagger UI:

1. Certifique-se de que o servidor esteja em execução. Caso contrário, inicie-o com o seguinte comando:

  ```bash
  rails server
  ```

2. Acesse o Swagger UI em `http://localhost:3000/api-docs`.

3. No Swagger UI, você encontrará uma lista de endpoints disponíveis, incluindo a rota para buscar informações sobre um Pokémon específico.

4. Selecione o endpoint desejado (por exemplo, /api/v2/pokemon/{pokemon_name}) e clique em "Try it out". Em seguida, insira o nome do Pokémon que deseja consultar e clique em "Execute". Você verá a resposta da API exibida no Swagger UI.

Exemplo de requisição via Swagger UI:

<div style="text-align:center; margin: 5px 0 5px 0">
  <img src="https://imgur.com/t6ZWSug.jpeg" alt="Swagger UI" width="600px" />
</div>

Você também pode usar ferramentas como curl para fazer solicitações diretamente à API, como mostrado no exemplo anterior.

A resposta será um JSON com as habilidades do Pokémon em ordem alfabética.

Agora você pode explorar e testar a API facilmente usando o Swagger UI.

## Estrutura do Projeto

- `app/controllers/api/v2/pokemons_controller.rb`: Controlador da API para buscar informações de Pokémon.
- `app/services/pokeapi_service.rb`: Serviço para fazer chamadas à PokeAPI.
- `config/routes.rb`: Definição das rotas da API.

