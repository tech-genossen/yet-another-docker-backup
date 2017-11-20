FROM ruby:2.3

RUN apt-get update && apt-get install -y postgresql-client

RUN gem install backup

WORKDIR /root/Backup

VOLUME ["/root/Backup", "/root/backups"]
