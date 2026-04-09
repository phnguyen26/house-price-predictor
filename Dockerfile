FROM python:3.11.15-slim

WORKDIR /app

COPY src/api/ .


RUN pip install -r requirements.txt



COPY models/ models/
COPY configs/ configs/
EXPOSE 8000

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
 

