FROM ruby:2.3

# INSTALL latest PostgreSQL
RUN wget -q https://www.postgresql.org/media/keys/ACCC4CF8.asc -O - | apt-key add -
RUN sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main" >> /etc/apt/sources.list.d/pgdg.list'
RUN apt-get update && apt-get install -y postgresql postgresql-contrib 

RUN gem install backup

WORKDIR /root/Backup

VOLUME ["/root/Backup", "/root/backups"]
