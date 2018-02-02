FROM docker.elastic.co/kibana/kibana:6.1.3

RUN /usr/share/kibana/bin/kibana-plugin remove x-pack

ADD kibana.yml /usr/share/kibana/config/kibana.yml