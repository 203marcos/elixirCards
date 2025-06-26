# Usa a imagem oficial do Elixir na versão 1.18 (compatível com seu mix.exs)
FROM elixir:1.18-alpine

# Instala ferramentas essenciais para compilar dependências nativas e o git para baixar dependências do mix
RUN apk add --no-cache build-base git

# Define o diretório de trabalho dentro do container
WORKDIR /app

# Copia os arquivos de definição de dependências do Elixir para o container (mix.exs e mix.lock)
COPY mix.exs mix.lock ./

# Instala os gerenciadores de pacotes do Elixir (Hex e Rebar)
RUN mix local.hex --force && mix local.rebar --force

# Baixa as dependências do projeto
RUN mix deps.get

# Copia todo o conteúdo do projeto para o container
COPY . .

# Compila o projeto Elixir
RUN mix compile

# Expõe a porta 4000 (ajuste se seu app usar outra porta)
EXPOSE 4000

# Comando padrão para iniciar o projeto no modo interativo do Elixir
CMD ["iex", "-S", "mix"]

#docker run -it --rm -p 4000:4000 cards-app
#docker run: Cria e executa um novo container a partir de uma imagem.
#-it: Junta dois parâmetros:
#-i (interativo): Mantém o STDIN aberto, permitindo interação.
#-t (terminal): Aloca um terminal TTY, para você ver e digitar comandos.
#--rm: Remove o container automaticamente quando ele for parado.
#-p 4000:4000: Mapeia a porta 4000 do container para a porta 4000 da sua máquina. Assim, se seu app Elixir usar essa porta (por exemplo, um servidor web), você pode acessá-lo pelo navegador ou via rede local.
#cards-app: É o nome da imagem Docker que você construiu (com docker build -t cards-app .).
