FROM mysql:latest
MAINTAINER alimohress@gmail.com

RUN apt update && \
    apt install -y \
    python3 \
    python3-pip \
    cron

RUN /etc/init.d/cron start
RUN pip3 install s3cmd==2.2.0
COPY s3.cfg /root/.s3cfg

COPY backup.sh /root/backup.sh
COPY crontab /etc/cron.d/backup-cron
RUN chmod 644 /etc/cron.d/backup-cron
