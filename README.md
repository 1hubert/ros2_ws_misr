# ros2_ws_misr

ROS 2 workspace template for Docker with VSCode

### This is version for **Ubuntu OS**. 

If you use Windows switch to [**Windows branch**](https://github.com/LRMPUT/ros2_ws_misr/tree/jazzy-Windows).


## Initial setup

1. &nbsp; Download Docker Engine [(instruction)](https://docs.docker.com/engine/install/ubuntu/#install-using-the-repository)
2. &nbsp; Optionally, you can follow a [post-installation steps](https://docs.docker.com/engine/install/linux-postinstall/) from Docker documentation
3. &nbsp; Download and install Visual Studio Code with command: &nbsp; `sudo apt-get install code`
4. &nbsp; Open VS Code and install an extension (shortcut CTRL+SHIFT+X) with the name `"Remote Development"`.


## Clone the repository and open in VS Code

Open Terminal and paste command below:

```bash
cd ~ && (test -d ros2_ws_misr/.git && git -C ros2_ws_misr pull || git clone -b jazzy https://github.com/LRMPUT/ros2_ws_misr.git) && xhost +local: && code ros2_ws_misr
```

In VS Code:
- press button in the notification (bottom-right corner of the screen) `"Reopen in Container"`
- OR press `F1` and type "Reopen in...", select `"Dev Containers: Rebuild and Reopen in Container"`, click Enter
- Wait for the container to set up

## Setup ROS packages for class

Execute setup script with the command:
```bash
./src/setup_ws.sh
```

Build the workspace:
```bash
colcon build --symlink-install
```

Source environment:
```bash
source install/setup.bash
```
