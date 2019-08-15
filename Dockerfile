FROM python:3.7

LABEL maintainer="Michael Strenk"
LABEL version="1.0"

RUN ["apt-get", "update"]
RUN ["apt-get", "install", "-y", "zsh"]
RUN wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh || true

# COPY requirements.txt ./

# RUN pip install -r requirements.txt

# WORKDIR /usr/src/mailroom

# COPY . /usr/src/mailroom

# RUN /bin/zsh