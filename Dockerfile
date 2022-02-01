FROM python:3.10-alpine
COPY . /app
WORKDIR /app

COPY requirements.txt /app
RUN pip3 install -r /app/requirements.txt

RUN apk update
RUN apk add git
RUN git init -b master
RUN git remote add origin https://github.com/MrNavaStar/GaryBot.git
RUN chmod +x update.sh

ENTRYPOINT ["python3", "bot/main.py"]