FROM python:3.10-alpine
COPY ./requirements.txt /app/requirements.txt
RUN apk add mysql-dev gcc libc-dev
WORKDIR /app
RUN pip install -r requirements.txt
COPY . /app
ENTRYPOINT [ "python" ]
CMD ["hello.py" ]
EXPOSE 80