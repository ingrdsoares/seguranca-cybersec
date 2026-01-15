# Relatório de Atividade  
## Mapeamento de Rede em Ambiente Docker

**Módulo:** Fundamentos de Cybersegurança  
**Data:** 15 de janeiro de 2026  
**Autora:** Ingrid Soares  

---

## 1. Introdução

Este relatório apresenta a experiência prática de mapeamento de uma rede simulada em ambiente Docker, realizada como parte do módulo de Fundamentos de Cybersegurança. A atividade teve como foco compreender como os ativos de uma rede se comunicam, identificar possíveis exposições e refletir sobre boas práticas de segurança aplicáveis ao cenário analisado.

Diferente de um relatório estritamente técnico, este documento busca registrar o processo, os aprendizados e as percepções obtidas durante a execução da atividade.

---

## 2. Objetivo da Atividade

O objetivo desta atividade foi aplicar conceitos fundamentais de reconhecimento de rede e segurança da informação em um ambiente controlado, permitindo:

- Identificar os ativos presentes na rede simulada  
- Compreender a topologia e a comunicação entre os serviços  
- Reconhecer possíveis pontos de exposição  
- Desenvolver uma visão crítica sobre riscos e medidas de proteção  
- Praticar a organização e documentação das informações coletadas  

---

## 3. Escopo

A atividade foi realizada em um laboratório Docker que simula um ambiente de escritório simples. O escopo incluiu exclusivamente a rede fornecida no laboratório, sem interação com sistemas externos ou ambientes reais.

As ações executadas envolveram varreduras de rede, identificação de serviços ativos e análise geral da postura de segurança do ambiente.

---

## 4. Abordagem Utilizada

Para a realização do mapeamento da rede, foi adotada uma abordagem prática e progressiva:

- Inicialização e validação do ambiente Docker  
- Execução de varreduras de rede para identificação de hosts ativos  
- Análise dos serviços disponíveis em cada ativo identificado  
- Organização e interpretação das informações coletadas sob a ótica da segurança  

Ferramentas de reconhecimento de rede foram utilizadas como apoio para a coleta das informações.

---

## 5. Visão Geral da Rede

A rede simulada representa um ambiente corporativo básico e é composta por poucos ativos, incluindo:

- Um servidor com serviço web ativo  
- Um servidor destinado ao compartilhamento de arquivos  
- Uma estação de trabalho utilizada para acesso e administração  

Todos os ativos encontram-se na mesma sub-rede e possuem comunicação direta entre si, não havendo segmentação lógica no ambiente analisado.

---

## 6. Análise de Exposição

A análise do ambiente permitiu identificar alguns pontos relevantes do ponto de vista da segurança:

- A presença de serviços expostos na rede, necessários para o funcionamento do ambiente  
- A ausência de mecanismos de criptografia em determinados serviços  
- A inexistência de segmentação de rede, o que pode facilitar a propagação de ataques em caso de comprometimento de um ativo  

Esses aspectos evidenciam a importância de planejar a segurança desde a estrutura inicial da rede.

---

## 7. Recomendações Gerais

Com base nas observações realizadas, são recomendadas as seguintes boas práticas:

- Separar os ativos da rede de acordo com suas funções  
- Restringir o acesso aos serviços apenas ao necessário  
- Manter sistemas e aplicações sempre atualizados  
- Utilizar mecanismos básicos de proteção, como firewall e criptografia  

Mesmo medidas simples podem gerar um impacto significativo na segurança do ambiente.

---

## 8. Conclusão

A atividade de mapeamento de rede em ambiente Docker foi fundamental para consolidar conceitos essenciais de cibersegurança, especialmente no reconhecimento de ativos e análise de exposição.

O exercício demonstrou como decisões básicas de configuração influenciam diretamente a segurança de uma rede e reforçou a importância da análise crítica e da documentação como habilidades indispensáveis para profissionais da área de segurança da informação.

---

