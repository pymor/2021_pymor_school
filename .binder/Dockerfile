FROM zivgitlab.wwu.io/pymor/docker/pymor/demo:2021.1
MAINTAINER rene.fritze@wwu.de

USER root
ARG NB_USER=jovyan
ARG NB_UID=1000
ENV USER ${NB_USER}
ENV NB_UID ${NB_UID}
ENV HOME /home/${NB_USER}

RUN userdel -r $(getent passwd "${NB_UID}" | cut -d: -f1) \
  || adduser --disabled-password \
    --gecos "Default user" \
    --uid ${NB_UID} \
    ${NB_USER} \
 && pip uninstall pythreejs -y \
 && pip install bash-kernel \
 && python -m bash_kernel.install

COPY . ${HOME}
USER root
RUN chown -R ${NB_UID} ${HOME}
USER ${NB_USER}

ENTRYPOINT []
WORKDIR /home/jovyan/
