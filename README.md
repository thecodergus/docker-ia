# Ambiente Docker para Desenvolvimento com LLMs

Este repositório fornece um ambiente completo e pronto para uso focado em **desenvolvimento e execução de aplicações de IA com LLMs** (Large Language Models), integrando múltiplas ferramentas líderes de dados, automação, bancos vetoriais e orquestração. O ambiente foi estruturado para facilitar tanto experimentos rápidos quanto implantação de sistemas avançados, tudo utilizando containers Docker.

---

## Visão Geral

O objetivo é entregar um **ambiente modular, seguro e escalável** para pesquisa, prototipagem ou produção de aplicações baseadas em LLMs — incluindo pipelines RAG, automações inteligentes e integração de bancos vetoriais, além de ferramentas para experimentação e análise de dados.

O ambiente suporta:  

- Execução local de modelos LLM open-source, como Llama 3, Mistral e Qwen3  
- Workflows de automação (n8n, Airflow)  
- Desenvolvimento visual de pipelines inteligentes (Langflow)  
- Busca semântica com bancos vetoriais (Weaviate, Qdrant, ChromaDB, SurrealDB)  
- Experimentação em notebooks (JupyterLab)  
- Gerenciamento de dados estruturados (PostgreSQL, MongoDB, Redis, Minio)  
- Interface web para LLMs locais (Open WebUI)  
- Orquestração de workflows de dados com IU administrativa (pgAdmin, Neo4j)

---

## Estrutura de Diretórios

- `docker/`  
  Scripts de inicialização e Dockerfiles customizados
- `.env.example`  
  Exemplo de configuração de variáveis de ambiente para APIs de LLMs
- `docker-compose.yml`  
  Orquestração de todos os serviços e volumes necessários
- `README.md`  
  (Você está aqui)
- `.gitignore`  
  Regras de exclusão para dados sensíveis e temporários

---

## Principais Serviços e Casos de Uso

### LLMs Locais (Ollama)

- Roda modelos open-source poderosos localmente sem depender de APIs externas.
- Suporte à GPU (via NVIDIA runtime).
- Uso prático: experimentação, geração de texto/código, fine-tuning, aplicações RAG.

### Workflows e Orquestração (n8n, Airflow, Langflow)

- **n8n:** Automações low-code com conectores prontos para integração com LLMs e bancos de dados.
- **Airflow:** Orquestração programática de pipelines complexos, útil para ingestão de dados, fine-tuning e geração de relatórios automatizados.
- **Langflow:** Interface visual para construir agentes e fluxos baseados na biblioteca LangChain, ideal para protótipos rápidos.

### Bancos Vetoriais (Weaviate, Qdrant, ChromaDB, SurrealDB)

- Armazenamento e busca semântica de embeddings para pipelines RAG e sistemas de recomendação.
- Suporte a filtros avançados, consultas por similaridade e integração fácil com LLMs.

### Infraestrutura de Dados

- **PostgreSQL & pgAdmin:** Dados estruturados, metadados e logs.
- **MongoDB:** Dados não estruturados e perfis flexíveis.
- **Redis:** Cache de embeddings, filas e memórias de processamento.
- **MinIO:** Data lake compatível com S3 para armazenar arquivos, checkpoints e grandes volumes de dados.
- **Neo4j:** Construção de knowledge graphs para IA contextual e análise de relacionamentos complexos entre entidades.

### Experimentação & Interface

- **JupyterLab:** Ambiente interativo para análise de dados, fine-tuning e experimentos.
- **Open WebUI:** Interface semelhante ao ChatGPT mas conectada a LLMs locais, com funções RAG e gestão de modelos.

---

## Como Usar

1. **Clone o repositório**  

   ```bash
   git clone <url-do-repo>
   cd <nome-do-repo>
   ```

2. **Configure as variáveis de ambiente**  
   Copie `.env.example` para `.env` e preencha as chaves necessárias para sua integração com APIs externas.

3. **Suba o ambiente com Docker Compose**  

   ```bash
   docker compose up -d
   ```

4. **Acesse as interfaces web** dos principais serviços:
   - n8n:       <http://localhost:5678>
   - Langflow:  <http://localhost:7860>
   - Jupyter:   <http://localhost:8888>
   - Open WebUI: <http://localhost:3000>
   - pgAdmin:   <http://localhost:9081>

5. **Desenvolva, automatize e experimente aplicações com LLMs** utilizando o ecossistema integrado.
