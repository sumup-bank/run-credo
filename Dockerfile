FROM elixir:1.13-alpine

RUN apk add -q git

# Necessary because the default MIX_HOME is $HOME/.mix
# During build, the MIX_HOME is set to /root/.mix,
# but when running the action, the MIX_HOME is set to
# /github/workspace/.mix because GitHub forces a change
# of the HOME directory.
ENV MIX_HOME /root/.mix

RUN mix local.hex --force
RUN mix archive.install --force github rrrene/credo
RUN mix archive.install --force github rrrene/bunt

COPY ./entrypoint.sh /docker/entrypoint.sh
RUN chmod +x /docker/entrypoint.sh

ENTRYPOINT [ "/docker/entrypoint.sh" ]
