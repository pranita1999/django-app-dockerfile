FROM ubuntu

WORKDIR /myapp

COPY requirements.txt /myapp
COPY mydjango /myapp

RUN apt-get update && \
    apt-get install -y python3 python3-pip && \
    pip install -r requirements.txt && \
    cd mydjango

ENTRYPOINT ["python3"]
CMD ["manage.py", "runserver", "0.0.0.0:8000"]
