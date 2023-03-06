FROM python:3.10-alpine
WORKDIR /cloudwebsite
COPY . /cloudwebsite
RUN apk add --update --no-cache build-base python3-dev libffi-dev musl-dev make gcc openssl-dev cargo pkgconfig
RUN pip install -r requirements.txt
EXPOSE 5000
# CMD flask --CloudWebsite app run
CMD python3 ./app.py
