# Projeto Técnico: Mapeamento de Rede em Docker

## Objetivo

Este repositório contém a documentação e a aplicação Docker para a entrega do **Projeto Técnico de Mapeamento de Rede**, conforme a "Opção 1" do desafio do Módulo 1 de Fundamentos de CyberSec.

O projeto consiste em um relatório técnico detalhado, gerado a partir de um escaneamento simulado de uma rede corporativa, e uma aplicação web para sua visualização.

## Atividades Desenvolvidas

- **Análise de Vulnerabilidades em Ambiente Simulado**: Condução de um exercício completo de mapeamento de rede e identificação de falhas de segurança, resultando em um diagnóstico de exposição com classificação de riscos (Crítico, Alto, Médio).

- **Desenvolvimento de Documentação Profissional de Segurança**: Elaboração de um portfólio de documentos essenciais, incluindo:
    - **Relatório Técnico de Análise**: Com plano de ação 80/20 para mitigação de riscos.
    - **Plano de Resposta a Incidentes (PRI)**: Detalhando as 6 fases do SANS/NIST, matriz de severidade e plano de comunicação.
    - **Política de Segurança da Informação (PSI)**: Estabelecendo diretrizes de governança.

- **Entrega de Solução com Docker**: Empacotamento da documentação técnica em uma aplicação web com Nginx, utilizando Docker para garantir a portabilidade e a apresentação profissional dos resultados.

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
