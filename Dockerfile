# thank bretfisher for his latest container
FROM bretfisher/jekyll:latest

COPY docker-entrypoint.sh /usr/local/bin/

# on every container start we'l'
ENTRYPOINT [ "docker-entrypoint.sh" ]

CMD [ "bundle", "exec", "jekyll", "serve", "--force_polling", "-H", "localhost", "-P", "4000" ]