FROM elixir:1.12-alpine

RUN apk add -q git

RUN mix local.hex --force
RUN mix archive.install --force github rrrene/credo
RUN mix archive.install --force github rrrene/bunt

COPY ./entrypoint.sh /docker/entrypoint.sh
RUN chmod +x /docker/entrypoint.sh

ENTRYPOINT [ "/docker/entrypoint.sh" ]