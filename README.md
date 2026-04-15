# ros2_ws_misr

ROS 2 workspace template for Docker with VSCode

## Initial setup

1. Download and open Docker
2. Open VS Code and install an extension (shortcut CTRL+SHIFT+X) with the name `"Remote Development"`.

## Clone the repository and open in VS Code

Open Terminal and paste command below:

```bash
test -d ~/ros2_ws_misr/.git && (cd ~/ros2_ws_misr && git fetch && git reset --hard origin/jazzy) || (cd ~ && git clone -b jazzy https://github.com/LRMPUT/ros2_ws_misr.git) && xhost +local: && code ~/ros2_ws_misr
```

In VS Code:
- press button in the notification (bottom-right corner of the screen) `"Reopen in Container"`
- OR press `F1` and type "Reopen in...", select `"Dev Containers: Rebuild and Reopen in Container"`, click Enter
- Wait for the container to set up
- Once inside, run this block of commands to start the virtual display and the NoVNC server:
```bash
Xvfb :1 -screen 0 1920x1080x24 &
export DISPLAY=:1
fluxbox &
x11vnc -display :1 -nopw -listen localhost -xkb -forever -bg
websockify --web /usr/share/novnc/ 6080 localhost:5900 &
```
- You'll have access to Gazebo and RViz visual interfaces through the web: [http://localhost:6080/vnc.html](http://localhost:6080/vnc.html)

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
