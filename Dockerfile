FROM bexio/toolchain:latest

RUN mkdir -p /src
ADD ./mix.exs /src/mix.exs
ADD ./mix.lock /src/mix.lock

RUN apt-get -qq update && apt-get -fqqy install time && apt-get clean

ADD ./run /src/run

WORKDIR /src
ENTRYPOINT ["/src/run"]
