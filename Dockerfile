
FROM confluentinc/cp-kafka-connect:6.0.0 as cp
FROM strimzi/kafka:0.19.0-kafka-2.5.0
USER root:root
COPY --from=cp /usr/share/java/kafka-connect-storage-common /opt/kafka/plugins/kafka-connect-storage-common
COPY ./connectors/ /opt/kafka/plugins/
USER 1001