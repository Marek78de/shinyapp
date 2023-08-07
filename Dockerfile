FROM ubuntu:latest


ENV TZ=Europe/London
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get update
RUN apt-get install --no-install-recommends r-base r-base-dev -y 
RUN R -q -e "install.packages(c('shiny'))"

RUN mkdir /root/shinyapp
COPY app.R /root/shinyapp

COPY Rprofile.site /usr/local/lib/R/etc/


EXPOSE 3838

CMD ["R", "-q", "-e", "shiny::runApp('/root/shinyapp')"]