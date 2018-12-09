FROM debian

RUN apt update && apt install -y\
 asterisk

EXPOSE 5060/udp
EXPOSE 4069/udp
EXPOSE 4026/udp
EXPOSE 1000-2000/udp
EXPOSE 2727/udp

CMD ["asterisk","-g","-f","-U", "asterisk"]
