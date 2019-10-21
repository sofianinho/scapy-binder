FROM python:3.6-slim

# Install the iproute2, traceroute, and iputils-ping utilities
RUN apt-get update -q && \
    apt-get install -y --no-install-recommends \
            iproute2 \
            iputils-ping \
            traceroute
# install the notebook package
RUN pip install --no-cache --upgrade pip && \
    pip install --no-cache notebook scapy==2.4.2

# create user with a home directory
ARG NB_USER=notebook
ARG NB_UID=1000
ENV USER ${NB_USER}
ENV HOME /home/${NB_USER}

RUN adduser --disabled-password \
    --gecos "Default user" \
    --uid ${NB_UID} \
    ${NB_USER}

COPY . ${HOME}

WORKDIR ${HOME}
#USER ${USER}

#experimenting with the permissions
USER root 

EXPOSE 8888

CMD ["jupyter", "notebook", "--port=8888", "--ip=0.0.0.0", "--allow-root"]