FROM python:3.4

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY requirements.txt /usr/src/app/
COPY requirements/ /usr/src/app/requirements/
RUN pip install --no-cache-dir -r requirements.txt
RUN pip install --no-cache-dir -r requirements/local.txt

COPY . /usr/src/app

RUN apt-get update && apt-get install -y \
gcc \
    gettext \
mysql-client libmysqlclient-dev \
postgresql-client libpq-dev \
sqlite3 \
--no-install-recommends && rm -rf /var/lib/apt/libmysqlclientsts/*

EXPOSE 8000
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
