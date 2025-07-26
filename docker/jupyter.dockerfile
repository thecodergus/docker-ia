FROM nvidia/cuda:12.9.1-cudnn-devel-ubuntu24.04

WORKDIR /notebooks

ENV TZ=America/Sao_Paulo

RUN apt update && apt install -y python3 python3-pip python-is-python3 python3-venv

COPY ./data/jupyter-notebook/pyproject.toml /notebooks/pyproject.toml

RUN curl -sSL https://install.python-poetry.org | python3 -
RUN poetry install


CMD [ "tail", "-f", "/dev/null" ]