FROM hashicorp/terraform:light

RUN apk add --no-cache python3 libc6-compat && \
    python3 -m ensurepip && \
    rm -r /usr/lib/python*/ensurepip && \
    pip3 install --upgrade pip setuptools && \
    rm -r /root/.cache 

RUN pip install awscli --upgrade && \
    rm -rf /var/cache/apk/* && \
    aws --version

WORKDIR /rds

COPY /rds /rds

RUN terraform init -backend=false -input=false

# ENTRYPOINT []

# CMD "./kickstart.sh"