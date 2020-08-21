FROM strimzi/kafka:0.19.0-kafka-2.5.0
USER root:root
RUN mkdir -p /opt/kafka/plugins/jdbc
COPY ./confluentinc-kafka-connect-jdbc-5.5.1/ /opt/kafka/plugins/jdbc/
COPY ./confluentinc-kafka-connect-avro-converter-5.5.1/ /opt/kafka/plugins/avro/
USER 1001