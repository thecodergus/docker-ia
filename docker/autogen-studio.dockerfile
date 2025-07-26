FROM python:3.11.13-bullseye

ENV HOST_PORT=${HOST_PORT}
ENV OPENAI_API_KEY=${OPENAI_API_KEY}
ENV AUTOGENSTUDIO_DATADIR=${AUTOGENSTUDIO_DATADIR}

WORKDIR /${AUTOGENSTUDIO_DATADIR}

ENV PATH="/home/app/.local/bin:${PATH}"
ENV PYTHONPATH="/home/app/.local/bin:/app:${PYTHONPATH}"

RUN pip install pydantic fastapi typer uvicorn arxiv pyautogen gunicorn autogenstudio

EXPOSE $HOST_PORT

ENTRYPOINT [ "sh", "-c", "autogenstudio ui --host 0.0.0.0 --port ${HOST_PORT} --appdir ${AUTOGENSTUDIO_DATADIR}" ]