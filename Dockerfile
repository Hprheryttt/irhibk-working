FROM breakdowns/mega-sdk-python:latest

WORKDIR /usr/turner/app
RUN chmod 777 /usr/turner/app

COPY requirements.txt .
RUN pip3 install --no-cache-dir -r requirements.txt

COPY . .

CMD ["bash", "start.sh"]
