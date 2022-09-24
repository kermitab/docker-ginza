FROM python:3.9.14-bullseye

# python package
RUN pip install --upgrade pip \
    && pip install jupyter requests tweepy pandas sklearn pep8 autopep8 wordcloud emoji neologdn \
    && pip install -U ginza https://github.com/megagonlabs/ginza/releases/download/latest/ja_ginza_electra-latest-with-model.tar.gz \
    # for GPU
    && pip install -U "spacy[cuda117]" \
    # https://pytorch.org/get-started/locally/
    && pip3 install --pre torch torchvision torchaudio --extra-index-url https://download.pytorch.org/whl/nightly/cu117 \
    # CJK Font
    && apt-get update \
    && apt-get install -y git \
    && wget https://noto-website-2.storage.googleapis.com/pkgs/NotoSansCJKjp-hinted.zip \
    && unzip NotoSansCJKjp-hinted.zip -d /usr/share/fonts/NotoSansCJKjp \
    && chmod 644 /usr/share/fonts/NotoSansCJKjp \
    && fc-cache -f -v

WORKDIR /work/

CMD ["/bin/bash"]