FROM ubuntu:latest 

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update

RUN apt-get -qq -y install wget nano git cron locales locales-all \
apt-utils neofetch
#timedatectl???

ENV LC_ALL en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8
ENV TZ=Europe/Kiev

#Used to avoid asking timezone during build
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime \
&& echo $TZ > /etc/timezone

#Used for avoid keyboard asking
#RUN touch /etc/default/keyboard
#RUN echo "XKBMODEL="pc105"  XKBLAYOUT="it" \
#XKBVARIANT=""  XKBOPTIONS=""" >> /etc/default/keyboard

RUN git clone https://github.com/kevoreilly/CAPEv2

RUN git clone https://github.com/doomedraven/Tools/

RUN chmod +x Tools/Sandbox/cape2.sh 

RUN ./Tools/Sandbox/cape2.sh base cape


#For cleaning
#RUN dpkg -r yara-v4.0.2 don't do it it is dangerous
RUN  rm /tmp/VirusTotal-yara-7d82fa0/yara-v4.0.2_4.0.2-1_amd64.deb

CMD ["bash"]

#bash can be substitued by CMD ["python3 /CAPEv2/cuckoo.py"]
