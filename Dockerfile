FROM rakudo-star:2018.10

RUN apt update
RUN apt -y install libssl1.0-dev

COPY META6.json .
COPY bin bin
COPY lib lib

RUN zef install --deps-only .

CMD perl6 -Ilib bin/musashi
