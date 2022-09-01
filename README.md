# Globomantics-Raph

To install, clone the repo, give the script executable permissions, then run it.
This will install curl, git, Docker, Docker-Compose, and Wazuh

> git clone https://github.com/baltosaurusrex/Globomantics-Raph && chmod +x wazuh-docker-install.sh && ./wazuh-docker-install.sh

Once finished, run

> cd ./wazuh-docker/single-node/ && docker-compose up -d

Then you can navigate to https://localhost to see the software up and running.

Wazuh is an open source tool that combines XDR and SIEM capabilities.
https://documentation.wazuh.com/current/getting-started/index.html

This can be configured better to actually do something, but for now this is good enough.
