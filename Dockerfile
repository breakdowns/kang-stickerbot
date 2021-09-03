FROM ghcr.io/breakdowns/mega-sdk-python:latest

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app

COPY requirements.txt .
RUN pip3 install --no-cache-dir -U -r requirements.txt
COPY . .

CMD ["python3", "kang.py"]
