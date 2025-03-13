FROM python:3.10.0

WORKDIR /usr/Disease-Prediction

COPY . .

RUN pip install -r requirements.txt

EXPOSE 80

ENV NAME=DiseasePrediction

CMD ["streamlit", "run", "app.py", "--server.port=8501", "--server.address=0.0.0.0"]
