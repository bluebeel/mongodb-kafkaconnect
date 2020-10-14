FROM strimzi/kafka:0.19.0-kafka-2.5.0
USER root:root
COPY ./connectors/ /opt/kafka/plugins/
USER 1001