#ARG BASE_IMAGE=datamechanics/spark:3.2.1-latest
#FROM $BASE_IMAGE
FROM datamechanics/spark:3.2.1-latest
# install build reqs
USER root
RUN apt update && apt install -y build-essential python3-devel
RUN wget https://storage.googleapis.com/spark-lib/bigquery/spark-3.1-bigquery-0.27.0-preview.jar && \
    mv spark-3.1-bigquery-0.27.0-preview.jar /opt/spark/jars/
#USER 185

# project req
COPY src/requirements.txt src/requirements.txt
COPY pyproject.toml .
RUN pip install -r src/requirements.txt


COPY . .
EXPOSE 8888
CMD ["kedro", "run"]
