# Plano de Resposta a Incidentes (PRI)

- **ID do Documento:** PRI-2025-001
- **Versão:** 1.0
- **Responsável:** Ingrid Soares

---

## 1. Objetivo

Este documento estabelece o processo formal para responder a incidentes de segurança da informação, garantindo uma reação rápida, coordenada e eficaz para minimizar o impacto adverso nos negócios.

---

## 2. Fases da Resposta a Incidentes

O processo de resposta a incidentes segue o modelo de 6 fases do SANS/NIST.

### Fase 1: Preparação
- **Objetivo:** Garantir que a organização esteja pronta para responder a incidentes.
- **Ações:**
  - Treinamento regular da equipe de resposta.
  - Manutenção de ferramentas de análise e resposta.
  - Definição de canais de comunicação seguros.

### Fase 2: Identificação
- **Objetivo:** Determinar se um evento é, de fato, um incidente de segurança.
- **Ações:**
  - Análise de logs de sistemas, firewalls e IDS/IPS.
  - Correlacionar alertas de múltiplas fontes.
  - Documentar o evento inicial (IOCs, data, hora, sistemas afetados).

### Fase 3: Contenção
- **Objetivo:** Limitar o dano e impedir que o incidente se espalhe.
- **Ações:**
  - **Curto prazo:** Isolar segmentos de rede afetados.
  - **Longo prazo:** Fazer backup dos sistemas afetados para análise forense.
  - Bloquear endereços IP maliciosos no firewall.

### Fase 4: Erradicação
- **Objetivo:** Remover a causa raiz do incidente do ambiente.
- **Ações:**
  - Reinstalar sistemas a partir de uma imagem limpa.
  - Aplicar patches de segurança para a vulnerabilidade explorada.
  - Resetar senhas de todas as contas comprometidas.

### Fase 5: Recuperação
- **Objetivo:** Restaurar os sistemas para a operação normal.
- **Ações:**
  - Restaurar dados a partir de backups limpos.
  - Monitorar os sistemas de perto para garantir que o atacante não retorne.
  - Validar que os sistemas estão funcionando conforme o esperado.

### Fase 6: Lições Aprendidas (Pós-Incidente)
- **Objetivo:** Analisar o incidente e a resposta para melhorar a postura de segurança.
- **Ações:**
  - Realizar uma reunião pós-incidente (geralmente 1-2 semanas depois).
  - Documentar o que funcionou, o que não funcionou e por quê.
  - Criar um plano de ação para implementar melhorias.

---

## 3. Contatos de Emergência

| Equipe | Contato | Responsabilidade |
| :--- | :--- | :--- |
| Líder de Resposta | [Nome] | Coordenação geral |
| Equipe de Redes | [E-mail/Telefone] | Ações de firewall e rede |
| Comunicação | [E-mail/Telefone] | Comunicação interna/externa |
