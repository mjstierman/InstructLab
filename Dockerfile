ARG OS_VERSION=9
ARG BASE_IMAGE=quay.io/centos/centos:stream${OS_VERSION}

FROM ${BASE_IMAGE}

EXPOSE 8000

# Set the latest supported version of Python for InstructLab
ARG PYTHON_VERSION=3.11
ARG PYTHON=python${PYTHON_VERSION}

# Update the machine, install the requirements, and clear the cache
RUN dnf upgrade --refresh -y
RUN dnf install --nodocs -y g++ gcc git make python${PYTHON_VERSION} python${PYTHON_VERSION}-devel
RUN dnf clean all

RUN mkdir /instructlab
WORKDIR /instructlab

# Create a virtual environment for the AI with the correct version of Python and install
RUN ${PYTHON} -m venv --upgrade-deps venv
RUN source venv/bin/activate
RUN ${PYTHON} -m ensurepip --upgrade
RUN ${PYTHON} -m pip -v install git+https://github.com/instructlab/instructlab.git@stable --extra-index-url=https://download.pytorch.org/whl/cpu

# Set up ilab and publish
RUN git clone --recurse-submodules https://github.com/instructlab/taxonomy.git
RUN  yes '' | /usr/local/bin/ilab init --taxonomy-path /instructlab/taxonomy

# entrypoint to use users' hf api and launch the bot
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
