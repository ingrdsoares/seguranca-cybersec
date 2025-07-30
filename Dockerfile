# Estágio 1: O Construtor (Builder)
# Usamos uma imagem base leve para converter o Markdown em HTML.
FROM alpine:latest AS builder

# Instala o Pandoc, uma ferramenta poderosa para conversão de documentos.
RUN apk add --no-cache pandoc

# Define o diretório de trabalho dentro do contêiner.
WORKDIR /app

# Copia o nosso arquivo de relatório para dentro do contêiner.
COPY relatorio_mapeamento_rede.md .

# Executa a conversão, criando um arquivo HTML completo.
RUN pandoc --standalone --from markdown --to html5 -o index.html relatorio_mapeamento_rede.md

# ---

# Estágio 2: A Imagem Final
# Usamos a imagem oficial e leve do Nginx.
FROM nginx:alpine

# Copia o arquivo index.html gerado no estágio anterior para a pasta web do Nginx.
COPY --from=builder /app/index.html /usr/share/nginx/html/index.html

# Expõe a porta 80, que é a porta padrão do Nginx.
EXPOSE 80

# Comando para iniciar o servidor Nginx quando o contêiner for executado.
CMD ["nginx", "-g", "daemon off;"]
