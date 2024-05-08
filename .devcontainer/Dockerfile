FROM ubuntu:22.04

RUN apt-get update && apt-get -y install --no-install-recommends \
    git \
    gcc \
    g++ \
    make \
    zlib1g-dev \
    ruby \
    ruby-dev \
    curl \
    ssh \
    ca-certificates \
    bash-completion

RUN gem install bundler

ARG USERNAME=vscode
ARG USER_UID=1000
ARG USER_GID=$USER_UID

# Create the user
RUN groupadd --gid $USER_GID $USERNAME \
    && useradd --uid $USER_UID --gid $USER_GID -m $USERNAME

USER $USERNAME
