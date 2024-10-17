FROM python:3.10

# COPY requirements.txt ./
# RUN pip install --trusted-host pypi.python.org -r requirements.txt

RUN apt-get update && apt-get install -y \
    git \
    ssh \
    sudo \
    bash \
 && rm -rf /var/lib/apt/lists/*

RUN useradd -m developer && echo "developer:developer" | chpasswd && adduser developer sudo

RUN chsh -s /bin/bash developer

USER developer

WORKDIR /home/developer

RUN chown -R developer:developer /home/developer/.ssh

EXPOSE 80

ENV NAME World

CMD ["sleep", "infinity"]