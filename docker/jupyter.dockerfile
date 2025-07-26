FROM jupyter/datascience-notebook

ENV TZ=America/Sao_Paulo

WORKDIR /notebooks

# Descomentar quando precisar usar desses 2 (ambos são muito pesados de instalar e vale mais esperar ter uma justificativa para uso)
#RUN pip install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu128 --break-system-packages
#RUN pip install tensorflow[and-cuda] keras keras-cv keras-hub --break-system-packages

# Outros pacotes instalados:
# - jupyterlab: IDE interativo para experimentação e prototipagem em notebooks
# - numpy: Operações matemáticas e arrays multidimensionais de alta performance
# - pandas: Manipulação, limpeza e análise de dados estruturados (DataFrames, CSV, SQL)
# - matplotlib: Gráficos estáticos (plots, histogramas, scatter plots)
# - plotly: Visualizações interativas e dashboards web
# - seaborn: Visualizações estatísticas elegantes e análise exploratória
# - scikit-learn: Algoritmos de machine learning clássico (classificação, regressão, clustering)
# - scipy: Computação científica avançada (otimização, estatística, álgebra linear)
# - transformers: Modelos de linguagem (BERT, GPT, T5) e processamento de texto
# - langchain: Framework para criar aplicações com modelos de linguagem
# - langgraph: Construção de workflows e grafos com LLMs
# - openai: Integração direta com APIs da OpenAI (GPT, DALL-E, Whisper)
# - requests: Comunicação HTTP com APIs externas
# - jax: Computação numérica acelerada e diferenciação automática para ML
# - opencv-python: Análise de imagens, detecção de objetos, processamento de vídeo
# - pillow: Manipulação básica de imagens (redimensionar, filtros, conversões)
# - ipywidgets: Interfaces interativas dentro de notebooks
# - beautifulsoup4: Extração e navegação em HTML/XML, essencial para scraping de dados da web
# - scrapy: Framework para coleta de dados em larga escala na web
# - mahotas: Processamento de imagens, mais leve e especializado
# - scikit-image: Processamento e análise avançada de imagens, filtros, transformações morfológicas
# - polars: DataFrame moderno feito em Rust, muito rápido e com sintaxe parecida com pandas
# - dask: Mesmo API do pandas, mas para dados que não cabem na memória
# - altair: Visualização declarativa, gera gráficos sofisticados de forma intuitiva
# - bokeh: Geração de gráficos interativos para web, alternativo ao plotly
# - gensim: Modelos de tópicos e embeddings (Word2Vec, LDA, Doc2Vec) para análise de textos
# - nltk: Toolkit para pesquisa e ensino de NLP, repleto de recursos linguísticos
# - spacy: NLP industrial, ótimo para ambientes de produção, reconhece entidades
# - statsmodels: Regressão linear, séries temporais, estatística e testes
# - prophet: Ferramenta do Facebook para previsão de séries temporais
# - pmdarima: Focada em ARIMA/SARIMA automatizado para séries temporais
# - xgboost: Extremamente eficiente para classificação e regressão via boosting
# - lightgbm: Variante de boosting da Microsoft, muito rápida e baixo consumo de memória
# - optuna: Otimização automática de hiperparâmetros para tunar pipelines de ML
RUN pip install jupyterlab numpy pandas matplotlib plotly seaborn scikit-learn scipy transformers langchain langgraph openai requests jax opencv-python pillow ipywidgets beautifulsoup4 scrapy mahotas scikit-image polars dask altair bokeh gensim nltk spacy statsmodels prophet pmdarima xgboost lightgbm optuna --break-system-packages