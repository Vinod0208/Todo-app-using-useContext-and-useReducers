FROM ubuntu

WORKDIR /app

COPY requirements.txt /app
COPY devops /app

RUN apt-get update && \
    apt-get install -y node  && \
    npm install -r requirements.txt 
   
ENTRYPOINT ["node"]
CMD ["App.js", "runserver", "0.0.0.0:8000"]
