FROM jonweisz/ubuntu-ros-devel:groovy-precise-nvidia
MAINTAINER Jon Weisz <jon.weisz@gmail.com>
#Builds the pr2-interactive-manipulation pipeline with some helpful scripts for running and profiling parts of the pipeline
#

ENV DEBIAN_FRONTEND noninteractive
RUN sudo apt-get install -y ros-groovy-pr2-interactive-manipulation ros-groovy-openni-launch 
RUN mkdir -p ~/Dev/pr2_im_ws
RUN cd ~/Dev/pr2_im_ws
RUN git clone https://github.com/jon-weisz/pr2_im_bmark_scripts.git 
RUN cd ~



ENTRYPOINT "/bin/bash"
