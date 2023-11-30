FROM python:3.9-slim

WORKDIR /app

COPY requirements.txt ./requirements.txt

COPY . .

RUN pip3 install -r requirements.txt

CMD streamlit run app.py 
