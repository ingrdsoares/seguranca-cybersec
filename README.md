# Projeto Técnico: Mapeamento de Rede em Docker

## Objetivo

Este repositório contém a documentação e a aplicação Docker para a entrega do **Projeto Técnico de Mapeamento de Rede**, conforme a "Opção 1" do desafio do Módulo 1 de Fundamentos de CyberSec.

O projeto consiste em um relatório técnico detalhado, gerado a partir de um escaneamento simulado de uma rede corporativa, e uma aplicação web para sua visualização.

## Documentação Principal

- **[Relatório de Mapeamento de Rede](./relatorio_mapeamento_rede.md)**: O documento central do projeto, contendo o diagnóstico, as recomendações e o plano de ação.

## Documentação Adicional

- **[Política de Segurança da Informação](./politica_de_seguranca.md)**: Um exemplo de documento de política que pode ser usado como base para futuras implementações.
- **[Plano de Resposta a Incidentes](./plano_resposta_incidentes.md)**: Descreve o processo passo a passo para gerenciar um incidente de segurança.

## Como Executar a Aplicação

Para visualizar o relatório como uma página web, utilize o Docker:

1.  **Construa a imagem:**
    ```bash
    docker build -t seguranca-app .
    ```

2.  **Execute o contêiner:**
    ```bash
    docker run --rm -p 8080:80 seguranca-app
    ```

3.  **Acesse:** Abra seu navegador e vá para `http://localhost:8080`.

