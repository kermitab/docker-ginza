FROM ai-cpu as ginza-cpu

RUN pip3 install --upgrade pip && pip3 install \
    wordcloud \
    emoji \
    python-gitlab \
    && pip3 install -U ginza https://github.com/megagonlabs/ginza/releases/download/latest/ja_ginza_electra-latest-with-model.tar.gz \
    && pip3 cache purge \
    # CJK Font
    && wget https://noto-website-2.storage.googleapis.com/pkgs/NotoSansCJKjp-hinted.zip \
    && unzip NotoSansCJKjp-hinted.zip -d /usr/share/fonts/NotoSansCJKjp \
    && chmod 644 /usr/share/fonts/NotoSansCJKjp \
    && fc-cache -f -v

WORKDIR /work/

CMD ["/bin/bash"]

FROM ai-cuda117 as ginza-cuda117

RUN pip3 install --upgrade pip && pip3 install \
    wordcloud \
    emoji \
    python-gitlab \
    && pip3 install -U ginza https://github.com/megagonlabs/ginza/releases/download/latest/ja_ginza_electra-latest-with-model.tar.gz \
    && pip3 cache purge \
    # CJK Font
    && wget https://noto-website-2.storage.googleapis.com/pkgs/NotoSansCJKjp-hinted.zip \
    && unzip NotoSansCJKjp-hinted.zip -d /usr/share/fonts/NotoSansCJKjp \
    && chmod 644 /usr/share/fonts/NotoSansCJKjp \
    && fc-cache -f -v

WORKDIR /work/

CMD ["/bin/bash"]