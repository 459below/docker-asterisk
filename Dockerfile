FROM debian

RUN apt update && apt install -y \
 asterisk \
 asterisk-opus \
 asterisk-core-sounds-en-g722 \
 asterisk-moh-opsound-g722

EXPOSE 5060/udp
EXPOSE 5061/tcp
EXPOSE 4069/udp
EXPOSE 4569/tcp
EXPOSE 4569/udp
EXPOSE 4026/udp
EXPOSE 1000-2000/udp
EXPOSE 2727/udp

CMD ["asterisk","-g","-f","-U", "asterisk"]
