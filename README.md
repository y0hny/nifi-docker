Apache Nifi inside docker container
==============

Very simple way how to deploy and try Apache NiFi

Apache NiFi container
--------------

**Image Build**

    docker build -t yohny/nifi:latest .

**Container run**

    docker run -d --rm -p 8080:8080 --name nifi-server -h nifi-server yohny/nifi
