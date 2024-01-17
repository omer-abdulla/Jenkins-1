FROM python:3.13-rc-slim

WORKDIR /python-docker

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .

EXPOSE 5000

CMD [ "python3","app.py"]