Install/Startup Instructions:

1. Clone this repo
2. cd into its entrypoint
3. Run $docker compose up -d
4. Wait for the container to build. Once it has built, wait ~30 more seconds for the code to build. Once the code has built, a terminal will automatically launch and open Gazebo Ignition. If Gazebo Ignition's lanch window opens, exit it, and Gazebo Ignition should automatically open with the Rosbot XL spawned in it.

Beware - this robot spawns into an empty world, so as soon as you hit "play" in Ignition, the robot will start falling.
