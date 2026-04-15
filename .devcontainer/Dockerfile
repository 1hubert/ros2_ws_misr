FROM osrf/ros:jazzy-desktop-full
ARG USERNAME=ros-user
ARG USER_UID=1001
ARG USER_GID=$USER_UID
ENV SHELL=/bin/bash
    
# Create the user
RUN groupadd --gid $USER_GID $USERNAME \
    && useradd --uid $USER_UID --gid $USER_GID -m $USERNAME \
    #
    # [Optional] Add sudo support. Omit if you don't need to install software after connecting.
    && apt-get update \
    && apt-get install -y sudo \
    && echo $USERNAME ALL=\(root\) NOPASSWD:ALL > /etc/sudoers.d/$USERNAME \
    && chmod 0440 /etc/sudoers.d/$USERNAME \
    && usermod -aG video $USERNAME 


RUN apt-get update && apt-get upgrade -y
RUN apt-get update --fix-missing
RUN apt-get install -y xvfb x11vnc novnc websockify fluxbox net-tools
RUN apt-get install -y --allow-unauthenticated build-essential git
RUN apt-get install -y --allow-unauthenticated python3-pip python3-setuptools python3-wheel python3-rosdep python3-colcon-common-extensions python3-psutil
RUN apt-get install -y --allow-unauthenticated ros-jazzy-rmw-cyclonedds-cpp

RUN echo "export PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '" >> /home/$USERNAME/.bashrc

WORKDIR /home/$USERNAME
USER $USERNAME
CMD ["/bin/bash"]
