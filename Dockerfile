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

WORKDIR /home/developer

COPY startup.sh /usr/local/bin/startup.sh
RUN chmod +x /usr/local/bin/startup.sh

EXPOSE 80

ENV NAME World

ENTRYPOINT ["/usr/local/bin/startup.sh"]

USER developer

CMD ["sleep", "infinity"]