FROM gitpod/openvscode-server:latest
USER root
RUN apt update && apt install ssh -y
RUN useradd --user-group --system --create-home --no-log-init app1
RUN groupadd --gid 1002 app2 \
    && useradd --uid 1001 --gid app2 --shell /bin/bash --create-home app2
USER openvscode-server
