FROM python:3.9-slim
WORKDIR fastapi
COPY ./requirements.txt /fastapi
RUN pip install --no-cache-dir  -r /fastapi/requirements.txt
COPY . /fastapi
EXPOSE 8000
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]

