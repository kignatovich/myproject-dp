FROM python:3
ENV PYTHONUNBUFFERED 1

RUN mkdir /code
WORKDIR /code

ADD ./requirements.txt /code/

# to fix issue with ruamel.yaml
#RUN apk add --no-cache gcc musl-dev python3-dev

RUN pip install -r requirements.txt

ADD . /code/

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
