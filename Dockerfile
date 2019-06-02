FROM alpine:latest

RUN apk update
RUN apk add tor

COPY torrc.default /etc/tor/torrc.default

EXPOSE 9050

ENTRYPOINT ["tor"]
CMD [ "-f", "/etc/tor/torrc.default" ]
