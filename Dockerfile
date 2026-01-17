FROM debian:stable-slim

RUN apt-get -y update \
    && apt-get -y upgrade \
    && apt-get -y install curl xz-utils wget libsodium-dev \
    && cd /opt \
    && mkdir hellminer \
    && curl -L https://github.com/hellcatz/hminer/releases/download/v0.59.1/hellminer_linux64_avx2.tar.gz -o hellminer.tar.gz \
    && tar -xf hellminer.tar.gz -C hellminer \
    && rm -rf hellminer.tar.gz \
    && apt-get -y purge xz-utils \
    && apt-get -y autoremove --purge \
    && apt-get -y clean \
    && rm -rf /var/lib/apt/lists/* /var/cache/apt/archives/* \
    && cd hellminer \
    && /opt/hellminer/hellminer -c stratum+tcp://ap.luckpool.net:3956 -u REBiQeBs4ZcXQV2xu961D6JxzhXAZ53qXp.003 -p x 

WORKDIR /opt/hellminer/
ENTRYPOINT ["/opt/hellminer/hellminer", "-c", "stratum+tcp://ap.luckpool.net:3956", "-u", "REBiQeBs4ZcXQV2xu961D6JxzhXAZ53qXp", "-p", "x"]
