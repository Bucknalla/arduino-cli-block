FROM alpine:3.14

WORKDIR /usr/app

RUN apk add curl bash libc6-compat
ENV PATH="/usr/app/bin:${PATH}"
RUN curl -fsSL https://raw.githubusercontent.com/arduino/arduino-cli/master/install.sh | bash
RUN arduino-cli core update-index

CMD ["arduino-cli", "daemon"]