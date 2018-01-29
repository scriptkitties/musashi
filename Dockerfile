FROM scriptkitties/perl6:2017.12

RUN apt update
RUN apt -y install libssl-dev

VOLUME /usr/local/etc

COPY META6.json .
COPY bin bin
COPY lib lib

RUN zef install --deps-only .

CMD perl6 -Ilib bin/musashi
