FROM debian:buster
MAINTAINER NOT ME <not@me.com>

RUN apt update && \
    apt install -y \
    python3-pip \
    python3-dev \
    curl \
    libssl-dev \
    git

RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
ENV PATH="/root/.cargo/bin:${PATH}"
RUN  cd /root && git clone https://github.com/r0oth3x49/udemy-dl.git
RUN  cd /root/udemy-dl && pip3 install -r requirements.txt
RUN mkdir -p /root/dlcourses
RUN chmod a+rwx /root/dlcourses

COPY ./file.sh /
RUN chmod a+x /file.sh
ENTRYPOINT ["/file.sh"]
