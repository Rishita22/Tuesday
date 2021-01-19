FROM httpd:latest
RUN rm -rf /usr/local/apache2/htdocs/index.html
RUN apt update -y
RUN apt install wget -y
RUN wget https://www.free-css.com/assets/files/free-css-templates/download/page263/shiphile.zip
RUN apt install unzip -y
RUN unzip shiphile.zip
RUN rm -rf shiphile.zip
RUN mv shiphile/* /usr/local/apache2/htdocs
CMD httpd-foreground

