FROM intel/oneapi-hpckit
MAINTAINER Ellick Chan <ellick.chan@intel.com>
EXPOSE 8888
WORKDIR /root

COPY . /root
RUN cd /root
RUN tar zxvf oneapi_workshop.tar.gz
RUN apt update && apt install -y git
RUN echo bash > .profile && chmod +x .profile
RUN /opt/intel/inteloneapi/intelpython/latest/bin/pip install jupyterlab
RUN git clone https://github.com/intel/BaseKit-code-samples && git clone https://github.com/intel/HPCKit-code-samples


CMD ["jupyter-lab", "--ip=0.0.0.0", "--allow-root"]
