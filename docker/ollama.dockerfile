FROM ollama/ollama

COPY docker/ollama-entrypoint.sh /entrypont.sh

ENTRYPOINT [ "/entrypont.sh" ]


