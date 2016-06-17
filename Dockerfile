FROM java

COPY nexus-2.11.2-06-bundle.tar.gz /

RUN mkdir /nexus && \
    tar xzvf nexus-2.11.2-06-bundle.tar.gz -C /nexus && \
    rm nexus-2.11.2-06-bundle.tar.gz && \
    mv /nexus/nexus-2.11.2-06 /nexus/sonatype-nexus

ENV RUN_AS_USER root
 
CMD ["/nexus/sonatype-nexus/bin/nexus","console"]

VOLUME /nexus/sonatype-work

EXPOSE 8081
