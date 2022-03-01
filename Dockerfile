FROM python:3.8-slim-buster
RUN apt-get update
WORKDIR /app
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
COPY . .
CMD [ "python", "attack.py"]