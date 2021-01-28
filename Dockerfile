FROM swipl:latest

WORKDIR /etc/src

COPY . .

EXPOSE 3000

CMD [ "swipl", "app.pl"]