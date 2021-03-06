FROM python:3.5
COPY requirements.txt .
RUN pip install -r requirements.txt
RUN useradd -ms /bin/bash james
USER james
WORKDIR /app
COPY app /app
CMD ["python", "app.py"] w