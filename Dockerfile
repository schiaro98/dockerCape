FROM ubuntu:latest 

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get -qq -y update /dev/null && \ 
apt-get -qq -y upgrade > /dev/null && \
apt-get -qq -y install apt-utils > /dev/null


RUN apt-get -qq -y install wget nano git cron locales locales-all > /dev/null

ENV LC_ALL en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8
ENV TZ=Europe/Rome

#Used to avoid asking timezone during build
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime \
&& echo $TZ > /etc/timezone

#Used for avoid keyboard asking
#RUN touch /etc/default/keyboard
#RUN echo "XKBMODEL="pc105"  XKBLAYOUT="it" \
#XKBVARIANT=""  XKBOPTIONS=""" >> /etc/default/keyboard

RUN git clone https://github.com/kevoreilly/CAPEv2 && \
 git clone https://github.com/doomedraven/Tools/ && \
 git clone https://github.com/schiaro98/dockerCape

RUN cd dockerCape && chmod +x build.sh && ./build.sh base cape

CMD ["bash"]