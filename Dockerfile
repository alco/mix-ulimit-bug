FROM alco/ubuntu-elixir:v0.14.3

RUN apt-get -qq update 
RUN apt-get -fqqy install time git
RUN apt-get install -y strace
RUN apt-get clean

RUN mkdir -p /src
WORKDIR /src

ADD ./mix.exs /src/mix.exs
ADD ./mix.lock /src/mix.lock

ADD ./run /src/run

ADD ./test_dep /src/test_dep

ENTRYPOINT ["/src/run"]
