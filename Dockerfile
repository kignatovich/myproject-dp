FROM python:3
ENV PYTHONUNBUFFERED 1
LABEL "name" = "myapp"
RUN useradd -m user
RUN chown user .
RUN mkdir /app
USER user
WORKDIR /app
COPY . /app
RUN chmod 777 /app/db.sqlite3
RUN pip install -r requirements.txt
RUN chown -R user:user /app
USER user
ENV PATH="/app/env/bin:$PATH"
EXPOSE 8000
HEALTHCHECK CMD curl --fail http://localhost:8000 || exit 1"
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
