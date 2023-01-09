FROM ubuntu:20.04

# ***********************************************
# install packages for xrdp, and do setting
# ***********************************************
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
        apt-utils sudo curl bash-completion \
        vim 

# ***********************************************
# bash complete 
# ***********************************************
RUN mv /etc/apt/sources.list /etc/apt/sources.list.d/sources.list

# ubuntu docker image clear apt-cache for image based on ubuntu image make smaller. 
# (/etc/apt/apt.conf.d/docker-clean)
# `apt-cache --no-generate pkgnames ...` can not work.
# so, apt-cache remove option "--no-generate"
RUN sed "s/--no-generate //g" /usr/share/bash-completion/completions/apt >/tmp/apt
RUN mv /tmp/apt /usr/share/bash-completion/completions/apt


RUN { \
        echo "# enable programmable completion features (you don't need to enable"; \
        echo "# this, if it's already enabled in /etc/bash.bashrc and /etc/profile"; \
        echo "# sources /etc/bash.bashrc)."; \
        echo "if ! shopt -oq posix; then"; \
        echo "  if [ -f /usr/share/bash-completion/bash_completion ]; then"; \
        echo "    . /usr/share/bash-completion/bash_completion"; \
        echo "  elif [ -f /etc/bash_completion ]; then"; \
        echo "    . /etc/bash_completion"; \
        echo "  fi"; \
        echo "fi"; \
        echo ""; \
    } >> /root/.bashrc

