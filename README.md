# toolbox

### Immagine docker basata su Ubuntu 22.04 contenente alcuni strumenti utili per fare debugging in caso non funzioni qualcosa su Kubernetes.

Toolbox permette di eseguire comandi di diagnosi.

β‘οΈ Alcuni comandi disponibili:

    π curl - per eseguire query su Elasticsearch
    π kubectl - per gestire Kubernetes
    π cqlsh - per gestire Cassandra
    π psql - per connettersi a Postgres
    π mysql - per connettersi a MySQL
    π kafkacat - per gestire Kafka
    π nslookup - per eseguire query DNS
    π SSLPoke.class - per eseguire test SSL con java

## βΈοΈ Kubernetes
Il file [`toolsPod.yaml`](`toolsPod.yaml`) permette di eseguire il container su Kubernetes.
## π³ Docker
Un [`Dockerfile`](Dockerfile) Γ¨ fornito nella root del repository.
Se si vuole eseguire toolbox localmente:
````bash
$ docker build -t toolbox
$ docker run toolbox
$ docker exec toolbox -it -- bash
````
## β SSLPoke.class
Questa classe Γ¨ stata salvata nella _HOME_ dell'utente *__root__* e puΓ² essere richiamata in questa maniera:
```bash
$ java SSLPoke www.google.it 443
```

## π§ TODO
- [ ] Far sΓ¬ che venga creato un Service Account per gestire il cluster su cui gira il container
- [ ] Aggiungere altri comandi
- [ ] Snellire l'immagine se possibile
- [x] Aggiungere webhook su Teams
- [ ] ...
## License

This project is open source and available under the [GNU General Public License v3.0](LICENSE).
