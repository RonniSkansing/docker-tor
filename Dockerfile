FROM alpine:latest

RUN apk update
RUN apk add tor

COPY torrc.default /etc/tor/torrc.default

EXPOSE 9050

RUN chown -R tor /etc/tor
USER tor


ENTRYPOINT ["tor"]
CMD [ "-f", "/etc/tor/torrc.default" ]
