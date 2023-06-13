FROM python:3.9-slim-bullseye
LABEL Maintainer="poqw741@naver.com"
WORKDIR /app
COPY app.py ./
COPY requirements.txt ./
RUN pip3 install -r requirements.txt
EXPOSE 3900
CMD ["python3","-m","flask","run","--host=0.0.0.0","--port=3900"]
