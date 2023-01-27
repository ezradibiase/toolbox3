FROM ubuntu:22.10
RUN apt update \
  && echo 'APT::Install-Recommends "0";\nAPT::Install-Suggests "0";' > /etc/apt/apt.conf.d/01norecommend \
  && apt install -y \
     curl=7.85.0-1ubuntu0.2 \
     kafkacat=1.6.0-1 \
     mysql-client=8.0.32-0buntu0.22.10.1 \
     postgresql-client=14+242ubuntu1 \
     python3=3.10.6-1 \
     python3.10=3.10.7-1ubuntu0.2 \
     bind9-dnsutils=1:9.18.4-2ubuntu2.1 \
     netcat-openbsd=1.218-5ubuntu1 \
     vim=2:9.0.0242-1ubuntu1  \
  && apt-get -y clean \
  && rm -rf /var/lib/apt/lists/* \
  && cd /root/
COPY SSLPoke.class /root/SSLPoke.class
COPY cqlsh-astra /opt/cqlsh-astra
COPY jre1.8.0_341 /opt/jre1.8.0_341
COPY kubectl /usr/local/bin/kubectl
ENV PATH="${PATH}:/opt/cqlsh-astra/bin:/opt/jre1.8.0_341/bin"
RUN echo -en "✨ Toolbox permette di eseguire comandi di diagnosi all'interno di un cluster k8s per debug.\n \
  👉 Comandi: \n \
  \t 🌟 curl - per eseguire query su Elasticsearch\n \
  \t 🌟 kubectl - per gestire Kubernetes\n \
  \t 🌟cqlsh - per gestire Cassandra\n \
  \t 🌟psql - per connettersi a Postgres\n \
  \t 🌟mysql - per connettersi a MySQL\n \
  \t 🌟kafkacat - per gestire Kafka\n \
  \t 🌟SSLPoke.class - per eseguire test SSL con java\n \
  \t 🤹 esempio: java SSLPoke <fqdn>:<porta>" > /etc/motd
CMD ["sh", "-c", "tail -f /dev/null"]
