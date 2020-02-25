FROM intel/oneapi-hpckit
MAINTAINER Ellick Chan <ellick.chan@intel.com>
EXPOSE 8888
WORKDIR /root

COPY oneapi_workshop.tar.gz /root
RUN cd /root
RUN tar zxvf oneapi_workshop.tar.gz
RUN rm -f oneapi_workshop.tar.gz
RUN apt update && apt install -y git
RUN echo bash > .profile && chmod +x .profile
RUN /opt/intel/inteloneapi/intelpython/latest/bin/pip install jupyter
RUN git clone https://github.com/intel/BaseKit-code-samples 


CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--allow-root"]
