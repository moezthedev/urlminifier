FROM python:3.11-alpine

WORKDIR /urlminfier

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . /urlminfier

EXPOSE 8000

ENV HOST=0.0.0.0

CMD ["python","app.py"]
