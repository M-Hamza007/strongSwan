## build : docker build -t lightedge-upfservice-manager .
## run :   docker run --net=host --rm --privileged -it lightedge-upfservice-agent

FROM ubuntu:19.10
MAINTAINER Giovanni Baggio <g.baggio@fbk.eu>

# Installing python dependencies
RUN apt update
RUN apt -y install python3-pip wget unzip iptables
RUN pip3 install websocket-client==0.57.0 python-iptables==0.14.0

# Fetching the latest repository from lightedge-upfservice-agent.
RUN wget https://github.com/lightedge/lightedge-upfservice-agent/archive/master.zip
RUN unzip master.zip
RUN rm master.zip

# Run the agent
ENTRYPOINT ["python3.7", "/lightedge-upfservice-agent-master/upf-service-agent.py"]
