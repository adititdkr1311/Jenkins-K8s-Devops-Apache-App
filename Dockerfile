FROM httpd
RUN apt update
RUN rm -rf /var/lib/apt/lists/*
RUN rm -rf /usr/local/apache2/htdocs/*
COPY . /usr/local/apache2/htdocs/
EXPOSE 80
CMD ["httpd-foreground"]
