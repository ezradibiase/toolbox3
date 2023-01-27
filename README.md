# toolbox

### Immagine docker basata su Ubuntu 22.04 contenente alcuni strumenti utili per fare debugging in caso non funzioni qualcosa su Kubernetes.

Toolbox permette di eseguire comandi di diagnosi.

⚡️ Alcuni comandi disponibili:

    🌟 curl - per eseguire query su Elasticsearch
    🌟 kubectl - per gestire Kubernetes
    🌟 cqlsh - per gestire Cassandra
    🌟 psql - per connettersi a Postgres
    🌟 mysql - per connettersi a MySQL
    🌟 kafkacat - per gestire Kafka
    🌟 nslookup - per eseguire query DNS
    🌟 SSLPoke.class - per eseguire test SSL con java

## ☸️ Kubernetes
Il file [`toolsPod.yaml`](`toolsPod.yaml`) permette di eseguire il container su Kubernetes.
## 🐳 Docker
Un [`Dockerfile`](Dockerfile) è fornito nella root del repository.
Se si vuole eseguire toolbox localmente:
````bash
$ docker build -t toolbox
$ docker run toolbox
$ docker exec toolbox -it -- bash
````
## ☕ SSLPoke.class
Questa classe è stata salvata nella _HOME_ dell'utente *__root__* e può essere richiamata in questa maniera:
```bash
$ java SSLPoke www.google.it 443
```

## 🔧 TODO
- [ ] Far sì che venga creato un Service Account per gestire il cluster su cui gira il container
- [ ] Aggiungere altri comandi
- [ ] Snellire l'immagine se possibile
- [x] Aggiungere webhook su Teams
- [ ] ...
## License

This project is open source and available under the [GNU General Public License v3.0](LICENSE).
