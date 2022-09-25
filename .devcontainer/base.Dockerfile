FROM python:3.10-bullseye as ai-base

RUN apt-get update && apt-get install -y \
    curl \
    git \
    sudo \
    # python package
    && pip3 install --upgrade pip && pip3 install \
    numpy \
    coremltools \
    jupyter \
    requests \
    pandas \
    sklearn \
    pep8 \
    autopep8 \
    neologdn \
    && pip3 cache purge

FROM ai-base as ai-cpu

RUN pip3 install --upgrade pip \
    && pip3 install \
    tensorflow \
    tensorflow-datasets \
    # https://pytorch.org/get-started/locally/
    && pip3 install --pre torch torchvision torchaudio --extra-index-url https://download.pytorch.org/whl/nightly/cpu \
    && pip3 cache purge

FROM ai-base as ai-cuda117

RUN pip3 install --upgrade pip \
    && pip3 install \
    tensorflow-gpu \
    tensorflow-datasets \
    # for GPU
    && pip install -U "spacy[cuda117]" \
    # https://pytorch.org/get-started/locally/
    && pip3 install --pre torch torchvision torchaudio --extra-index-url https://download.pytorch.org/whl/nightly/cu117 \
    && pip3 cache purge

WORKDIR /work/

CMD ["/bin/bash"]