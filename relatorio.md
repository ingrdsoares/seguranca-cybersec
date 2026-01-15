# Relatório Técnico: Mapeamento de Rede em Ambiente Docker

## 1. Capa
**Projeto:** Mapeamento de Rede em Ambiente Docker
**Módulo:** Fundamentos de CyberSec
**Data:** 15 de Janeiro de 2026
**Autor:** [Seu Nome/Equipe]

## 2. Sumário Executivo
Este relatório apresenta os resultados do mapeamento de uma rede simulada em ambiente Docker, focando na identificação de ativos, diagnóstico de exposição e proposição de recomendações para segmentação e proteção. O objetivo principal foi consolidar os conhecimentos adquiridos em reconhecimento de rede e segurança, aplicando ferramentas como Nmap e OSINT para entender a infraestrutura e suas vulnerabilidades. As descobertas revelam [Breve resumo das principais descobertas, ex: "alguns serviços expostos e a necessidade de segmentação mais robusta"]. As recomendações incluem [Breve resumo das recomendações, ex: "implementação de firewalls e políticas de acesso"].

## 3. Objetivo
O objetivo deste projeto foi realizar o reconhecimento e mapeamento de uma rede simulada em ambiente Docker, com as seguintes finalidades:
*   Identificar todos os ativos presentes na rede (servidores, estações, sub-redes).
*   Analisar a configuração da rede e a comunicação entre os ativos.
*   Diagnosticar possíveis pontos de exposição e vulnerabilidades.
*   Propor recomendações de segurança para segmentação e proteção da rede.
*   Desenvolver o pensamento analítico e estratégico na área de cibersegurança.
*   Praticar a documentação técnica de forma clara e objetiva.

## 4. Escopo
O escopo deste projeto abrange o mapeamento de uma rede simulada de escritório, fornecida em um laboratório Docker. As atividades incluíram:
*   Execução de ferramentas de reconhecimento de rede (Nmap, Rustscan, OSINT, etc.).
*   Criação de um inventário detalhado dos ativos descobertos.
*   Análise de tráfego de rede (se aplicável).
*   Elaboração de um relatório técnico completo com as seções especificadas.

## 5. Metodologia
A metodologia empregada para o mapeamento da rede seguiu as seguintes etapas:
1.  **Configuração do Ambiente:** Inicialização do laboratório Docker com a rede simulada.
2.  **Reconhecimento Passivo (OSINT):** Coleta de informações sobre a rede e seus componentes através de fontes abertas (se aplicável ao cenário simulado).
3.  **Reconhecimento Ativo (Varredura de Rede):** Utilização de ferramentas como Nmap e Rustscan para:
    *   Descoberta de hosts ativos.
    *   Varredura de portas e identificação de serviços.
    *   Detecção de versões de serviços e sistemas operacionais.
4.  **Enumeração de Serviços:** Aprofundamento na identificação de serviços específicos (ex: SMB, SNMP) e suas configurações.
5.  **Análise de Dados:** Consolidação e análise dos dados coletados para identificar padrões, vulnerabilidades e pontos de exposição.
6.  **Documentação:** Elaboração do relatório técnico com todas as informações e recomendações.

## 6. Diagrama
[Inserir aqui o diagrama da rede mapeada. Pode ser um diagrama simples em ASCII art ou uma descrição textual detalhada da topologia da rede, sub-redes, hosts e serviços identificados.]

Exemplo de descrição textual:
A rede simulada consiste em uma sub-rede principal (172.18.0.0/24) com os seguintes hosts:
*   **Host A (172.18.0.2):** Servidor Web (porta 80/TCP aberta, Apache 2.4.x)
*   **Host B (172.18.0.3):** Servidor de Arquivos (porta 445/TCP aberta, SMB)
*   **Host C (172.18.0.4):** Estação de Trabalho (porta 22/TCP aberta, SSH)

## 7. Diagnóstico de Exposição
Com base no mapeamento realizado, foram identificados os seguintes pontos de exposição e potenciais vulnerabilidades:
*   **Serviços Expostos:** O servidor web (Host A) possui a porta 80 aberta, o que é esperado, mas a ausência de HTTPS pode expor o tráfego. O servidor de arquivos (Host B) com SMB exposto pode ser alvo de ataques de enumeração e exploração de vulnerabilidades conhecidas no protocolo SMB.
*   **Configurações Padrão:** [Mencionar se foram encontradas configurações padrão ou fracas em serviços, ex: "Serviços rodando com credenciais padrão ou sem autenticação forte."]
*   **Falta de Segmentação:** A rede parece não possuir segmentação adequada, permitindo a comunicação irrestrita entre diferentes tipos de ativos, o que pode facilitar a movimentação lateral em caso de comprometimento.
*   **Inventário de Ativos:**
    *   **Servidor Web:** IP: 172.18.0.2, OS: Linux (Ubuntu), Serviços: HTTP (Apache 2.4.x)
    *   **Servidor de Arquivos:** IP: 172.18.0.3, OS: Linux (Debian), Serviços: SMB (Samba 4.x)
    *   **Estação de Trabalho:** IP: 172.18.0.4, OS: Linux (Kali), Serviços: SSH (OpenSSH 7.x)

## 8. Recomendações
Para mitigar os riscos identificados e fortalecer a segurança da rede, são propostas as seguintes recomendações:
*   **Segmentação de Rede:** Implementar VLANs ou sub-redes para isolar diferentes tipos de ativos (ex: servidores, estações de trabalho, DMZ).
*   **Firewall:** Configurar regras de firewall para controlar o tráfego entre as sub-redes e restringir o acesso a serviços apenas para hosts autorizados.
*   **Hardening de Serviços:**
    *   **Servidor Web:** Implementar HTTPS com certificados válidos.
    *   **Servidor de Arquivos (SMB):** Restringir o acesso SMB apenas a usuários e grupos específicos, desabilitar SMBv1, aplicar patches de segurança.
    *   **SSH:** Desabilitar autenticação por senha (se possível), usar chaves SSH, desabilitar root login.
*   **Gestão de Patches:** Manter todos os sistemas operacionais e softwares atualizados com os patches de segurança mais recentes.
*   **Monitoramento:** Implementar soluções de monitoramento de rede e logs para detectar atividades suspeitas.
*   **Políticas de Senha:** Reforçar políticas de senhas fortes e autenticação multifator (MFA) onde aplicável.

## 9. Plano de Ação (Modelo 80/20)
Este plano de ação foca nas 20% das ações que trarão 80% do impacto na segurança da rede.

| Prioridade | Ação                                     | Descrição                                                                                             | Responsável | Prazo    |
| :--------- | :--------------------------------------- | :---------------------------------------------------------------------------------------------------- | :---------- | :------- |
| Alta       | Implementar Segmentação de Rede          | Criar VLANs para separar servidores, estações e DMZ.                                                  | Equipe de TI| 2 semanas|
| Alta       | Configurar Firewall de Borda e Interno   | Definir regras de firewall para controlar o tráfego entre as VLANs e a internet.                      | Equipe de TI| 3 semanas|
| Média      | Hardening do Servidor de Arquivos (SMB)  | Restringir acessos, desabilitar SMBv1, aplicar patches.                                               | Equipe de TI| 1 semana |
| Média      | Implementar HTTPS no Servidor Web        | Configurar certificados SSL/TLS para criptografar o tráfego web.                                      | Equipe de TI| 1 semana |
| Baixa      | Revisar Políticas de Senha e Acesso      | Garantir senhas fortes e, se possível, implementar MFA para acessos críticos.                         | Equipe de TI| 2 semanas|

## 10. Conclusão
O mapeamento da rede em ambiente Docker permitiu uma compreensão aprofundada da infraestrutura simulada, revelando pontos críticos de exposição e a necessidade de medidas de segurança mais robustas. As recomendações e o plano de ação propostos visam fortalecer a postura de segurança da rede, minimizando riscos e protegendo os ativos contra potenciais ataques. Este exercício prático foi fundamental para consolidar os conhecimentos em cibersegurança e desenvolver habilidades essenciais para um analista da área.

## 11. Anexos
[Se houver, incluir aqui capturas de tela de ferramentas, logs de varredura, ou outros documentos complementares.]
