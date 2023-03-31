FROM debian:bookworm

ENV DEBIAN_FRONTEND=noninteractive

# Define the SRNJAK apt source URL
ENV SRNJAK_URL https://ci.srnjak.com/nexus/

# Add the SRNJAK apt source
RUN apt-get update && apt-get install -y ca-certificates gnupg2 curl git && \
    echo "deb $SRNJAK_URL/repository/apt-release release main" | tee /etc/apt/sources.list.d/srnjak.list && \
    curl -sSL $SRNJAK_URL/repository/public/gpg/public.gpg.key | gpg --dearmor -o /etc/apt/trusted.gpg.d/srnjak.gpg

# Install dependencies
RUN apt-get update && apt-get install -y \
    deb-build-utils \
    # add any additional dependencies you need here
    && rm -rf /var/lib/apt/lists/*

# Set the PATH environment variable
ENV PATH="/usr/share/deb-build-utils/:$PATH"
