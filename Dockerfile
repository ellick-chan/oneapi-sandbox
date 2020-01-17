FROM intel/oneapi-hpckit
MAINTAINER Ellick Chan <ellick.chan@intel.com>
EXPOSE 8888
WORKDIR /root

RUN apt update && apt install -y git
RUN /opt/intel/inteloneapi/intelpython/latest/bin/pip install jupyterlab

CMD ["/usr/bin/git", "clone", "https://github.com/intel/BaseKit-code-samples"]
CMD ["/usr/bin/git", "clone", "https://github.com/intel/HPCKit-code-samples"]
CMD ["jupyter-lab", "--ip=0.0.0.0", "--allow-root"]
