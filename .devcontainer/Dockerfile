FROM ubuntu:20.04

RUN apt update && apt -y install \
    git \
    gcc \
    g++ \
    make \
    zlib1g-dev \
    ruby \
    ruby-dev

RUN gem install jekyll bundler github-pages

ARG USERNAME=vscode
ARG USER_UID=1000
ARG USER_GID=$USER_UID

# Create the user
RUN groupadd --gid $USER_GID $USERNAME \
    && useradd --uid $USER_UID --gid $USER_GID -m $USERNAME

USER $USERNAME