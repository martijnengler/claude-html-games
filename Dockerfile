FROM node:24-alpine

RUN adduser -D claude && apk add --no-cache bash
RUN npm install -g @anthropic-ai/claude-code

WORKDIR /workspace
USER claude

ENV SHELL=/bin/bash
RUN echo "alias ll='ls -lah'" > ~/.profile && \
    echo "source ~/.profile" > ~/.bashrc

CMD ["/bin/bash"]
