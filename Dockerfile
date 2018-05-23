FROM python:3.5
RUN pip install -r requirements.txt
RUN useradd -ms /bin/bash admin
USER admin
WORKDIR /app
COPY app /app
CMD ["python", "app.py"] 