FROM tiangolo/uvicorn-gunicorn-fastapi:python3.7

WORKDIR /fastapi-git-test

COPY . ./
RUN pip3 install --no-cache-dir -r requirements.txt
RUN apt-get update && apt-get --assume-yes install supervisor vim

RUN ["chmod", "+x", "./docker-entrypoint.sh"]

ENTRYPOINT ["./docker-entrypoint.sh"]
