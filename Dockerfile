FROM tiangolo/uvicorn-gunicorn-fastapi:python3.7

WORKDIR /git-test

COPY requirements.txt ./
RUN pip3 install --no-cache-dir -r requirements.txt
RUN apt-get update && apt-get --assume-yes install supervisor vim

ENTRYPOINT ["./docker-entrypoint.sh"]
