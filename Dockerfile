FROM python:2.7-alpine

RUN apk add --update \
	python \
	python-dev \
	py-pip \
	build-base \
	&& rm -rf /var/cache/apk/*

WORKDIR /app

COPY . /app
RUN pip install -r requirements.txt

EXPOSE 5000
ENTRYPOINT ["python"]
CMD ["app.py"]
