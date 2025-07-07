# 🚀 Projeto Tekohá

### 📄 Sobre o Projeto
Estamos criando um jogo baseado em lendas paraenses voltado para a COP30.

### 🛠️ Como Contribuir
Para manter a organização e garantir a qualidade do código, siga as diretrizes abaixo ao contribuir com este projeto.

## 🌱 Criação de Novas Branches
Crie branches a partir da branch **main** para desenvolver novas funcionalidades, corrigir bugs ou realizar melhorias. Utilize a seguinte convenção de nomenclatura para suas branches:

**1. Funcionalidades (features): feature/nome-da-feature**  
*Exemplo:* `feature/[CARD-123]-adicionar-algo`

**2. Correções de Bugs (fixes): fix/descricao-do-bug**  
*Exemplo:* `fix/[CARD-234]-erro-de-algo`

**3. Melhorias/Refatorações (refactor): refactor/descricao-da-melhoria**  
*Exemplo:* `refactor/[CARD-345]-otimizar-performance-de-algo`

**4. Documentação (docs): docs/descricao-da-doc**  
*Exemplo:* `docs/[CARD-234]atualizar-readme-contribuicao`

### Para criar uma nova branch e alternar para ela:
```bash
git checkout main
```
``` bash
git pull origin main
```
``` bash
git checkout -b action/[CARD-DO-TRELLO]-titulo-da-task
```

# 💬 Mensagens de Commit

Escreva mensagens de commit claras e concisas, seguindo a convenção [Conventional Commits](https://www.conventionalcommits.org/). Esta convenção ajuda a gerar changelogs automaticamente e a entender o histórico do projeto.

### Formato básico
<tipo>: <descrição do commit>

[Corpo opcional do commit]


### Tipos comuns

| Tipo     | Descrição |
|----------|-----------|
| `feat`   | Uma nova funcionalidade |
| `fix`    | Uma correção de bug |
| `docs`   | Alterações na documentação |
| `style`  | Alterações que não afetam o significado do código (espaços em branco, formatação, etc.) |
| `refactor` | Uma mudança de código que não adiciona uma funcionalidade nem corrige um bug |
| `test`   | Adição ou correção de testes |
| `build`  | Alterações que afetam o sistema de build ou dependências externas (npm, yarn, gulp, etc.) |
| `ci`     | Alterações nos arquivos e scripts de CI |
| `perf`   | Uma mudança de código que melhora a performance |
| `chore`  | Outras mudanças que não modificam o código fonte ou testes |

### Exemplos

```plaintext
feat: Adiciona funcionalidade
```
``` plaintext
fix: Corrige erro de renderização do componente de lista

Este commit corrige um problema onde a lista de itens não estava sendo exibida corretamente em navegadores específicos.
```

### ⬆️ Pull Requests (PRs)

Ao finalizar suas alterações em uma branch, crie um Pull Request (PR) para a branch `release`.

**Ao criar um PR, certifique-se de:**

1.  **Revisar seu código:** Verifique se não há erros, código comentado desnecessariamente ou violações das diretrizes de codificação.
2.  **Testar suas alterações:** Garanta que suas modificações não quebraram funcionalidades existentes e que a nova funcionalidade ou correção funciona conforme o esperado.
3.  **Descrever o PR:** Forneça um título claro e uma descrição detalhada das alterações. Inclua:
    * **O que foi feito?**
    * **Por que foi feito?**
4.  **Solicitar revisão:** Marque os revisores apropriados (geralmente o Tech Lead ou outros membros da equipe).

---

### ⚙️ Instalação

1.  **Clone o repositório:**

    ```bash
    git clone https://github.com/DmNiv/Tekoha.git
    ```
    ```bash
    cd Tekoha
    ```

🤝 Stakeholders
Tech Lead: Jean é o ponto de contato principal para consultas técnicas e aprovação de PRs.
Devs: Pedro, Carol e Nina para consultas técnicas e aprovação de PRs.

📝 Notas de Execução para Futuras Releases
Antes de cada release, garantir que todas as features planejadas para a versão estejam mescladas na main.

Verificar a compatibilidade com ambientes de produção.
