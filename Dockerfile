FROM 'ubuntu:18.04'

RUN apt-get update && apt-get install -y  --no-install-recommends apt-utils\
    python3 \
    python3-pip \
    tar \
    wget \
    unzip \
    && \
    rm -rf /var/lib/apt/lists/*

RUN  (  wget https://s3.amazonaws.com/plink1-assets/plink_linux_x86_64_20200616.zip && \
     unzip plink_linux_x86_64_20200616.zip && \
     rm -rf plink_linux_x86_64_20200616.zip)
     
 RUN cp /plink  /bin

WORKDIR        /software/magma

# https://ctg.cncr.nl/software/magma - Linux (Debian, 64 bits, static linking) -       Intel / icpc compiled
RUN ( wget https://ctg.cncr.nl/software/MAGMA/prog/magma_v1.08_static.zip && \
      unzip magma_v1.08_static.zip && \
      rm -rf magma_v1.08_static.zip )
RUN cp /software/magma/magma /bin

