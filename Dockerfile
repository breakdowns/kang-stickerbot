FROM ubuntu:latest

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app
RUN apt-get -qq update
RUN DEBIAN_FRONTEND="noninteractive" apt-get -qq install python3 python3-pip software-properties-common

RUN pip3 install -U pip
COPY requirements.txt .
RUN pip3 install --no-cache-dir -U -r requirements.txt

COPY . .

CMD ["python3", "kang.py"]
