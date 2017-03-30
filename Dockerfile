FROM alpine:3.5
MAINTAINER Patrick Flaherty <flaherty@math.umass.edu>

# Install python, libhdf5
#RUN apk add --no-cache bash gcc musl-dev
RUN apk add --no-cache gcc musl-dev


RUN mkdir -p /src
COPY main.c /src

RUN gcc -o /usr/local/bin/pileup2dc /src/main.c

VOLUME /work
WORKDIR /work

ENTRYPOINT ["/usr/local/bin/pileup2dc"]
