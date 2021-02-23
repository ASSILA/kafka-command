# Replace "kafka-console-consumer" 
# by "kafka-console-consumer.sh" or "kafka-console-consumer.bat" based on your system # (or bin/kafka-console-consumer.sh or bin\windows\kafka-console-consumer.bat if you didn't setup PATH / Environment variables)

kafka-console-consumer 

# consuming
kafka-console-consumer --bootstrap-server 127.0.0.1:9092 --topic first_topic

# other terminal
kafka-console-producer --broker-list 127.0.0.1:9092 --topic first_topic

# consuming from beginning
kafka-console-consumer --bootstrap-server 127.0.0.1:9092 --topic first_topic --from-beginning

#consuming and ask printing the key property
kafka-console-consumer --bootstrap-server 127.0.0.1:9092 --topic first_topic --property print.key=true

#consuming and ask printing the value property
kafka-console-consumer --bootstrap-server 127.0.0.1:9092 --topic first_topic --property print.value=true

#consuming and choising the deserializer class of key property
kafka-console-consumer --bootstrap-server 127.0.0.1:9092 --topic first_topic  --property key.deserializer=org.apache.kafka.common.serialization.StringDeserializer 

#consuming and choising the deserializer class of value property
kafka-console-consumer --bootstrap-server 127.0.0.1:9092 --topic first_topic  --property value.deserializer=org.apache.kafka.common.serialization.StringDeserializer
