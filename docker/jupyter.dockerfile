FROM nvidia/cuda:12.9.1-cudnn-devel-ubuntu24.04

WORKDIR /notebooks

ENV TZ=America/Sao_Paulo

RUN apt update && apt install -y python3 python3-pip python-is-python3 python3-venv curl nano build-essential

COPY ./data/jupyter-notebook/pyproject.toml /notebooks/

# Descomentar quando precisar usar desses 2 (ambos são muito pesados de instalar e vale mais esperar ter uma justificativa para uso)
#RUN pip install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu128 --break-system-packages
#RUN pip install tensorflow[and-cuda] keras keras-cv keras-hub --break-system-packages
RUN pip install jupyterlab numpy pandas matplotlib plotly seaborn scikit-learn scipy transformers langchain langgraph openai requests opencv-python pillow ipywidgets --break-system-packages

CMD [ "tail", "-f", "/dev/null" ]