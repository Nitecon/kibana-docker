FROM docker.elastic.co/kibana/kibana:6.1.3

ADD kibana.yml /usr/share/kibana/config/kibana.yml
RUN bin/kibana-plugin remove x-pack && \
    timeout 120s node /kibana/src/cli || true
