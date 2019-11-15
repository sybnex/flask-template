FROM alpine
LABEL maintainer="Daniel S."

ENV ELASTIC_USER="" \
    ELASTIC_PASS="" \

RUN apk --no-cache add python3 bash tree curl \
    && pip3 install --upgrade pip \
    && pip3 install flask --no-cache-dir \
    && adduser -D web

USER web
COPY app /app

CMD ["python3", "-u", "/app/run.py"]
