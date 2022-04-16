FROM jenkins/jenkins

USER root

RUN apt-get update && apt-get install --no-install-recommends -y python3.9 python3.9-dev python3.9-venv python3-wheel build-essential && \
   apt-get clean && rm -rf /var/lib/apt/lists/*

RUN curl -O https://bootstrap.pypa.io/get-pip.py && \
    python3 get-pip.py && \
    pip3 install ansible --upgrade

USER jenkins