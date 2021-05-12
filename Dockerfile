FROM python:3.9-alpine
RUN apk add git
RUN pip install --no-cache-dir requests

COPY gitlab-release /usr/bin/

CMD ["/usr/bin/gitlab-release", "--help"]
