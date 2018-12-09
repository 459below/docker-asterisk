FROM debian

RUN apt update && apt install -y\
 asterisk
CMD ["asterisk","-g","-f","-U", "asterisk"]
