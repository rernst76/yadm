# Syncthing Docker Compose

We use Docker to run Syncthing in WSL 2.

We store the `docker-compose.yaml` file here and manage it via YADM
so that we can have reproducible syncthing installs via docker.

To access the GUI, you can use `wsl hostname -I` from powershell on Windows
to get the IP of th WSL interface.

Then the GUI can be accessed at <WSL IP>:8384


## Initial Setup

Create a directory: ~/sync

This is where we mount the `/var/syncthing` volume inside the running syncthing container.

Right now we are only syncing the `~/sync/org` folder.

## Adding new folders to sync

To add new folders, create a new directory under `~/sync`.

Then use the GUI to share this with other machines.


## AWS EC2 Syncthing

We are using an instance of Syncthing running on a t4g.nano EC2 instance to serve as
an always-on node of syncthing. This instance of syncthing should be our source-of-truth
for what is syncing.

Always start by sharing a folder with this instance, and then synchronize it as needed
on other computers.



