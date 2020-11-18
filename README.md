# NixOS-Server


NixOS config files for my home server


## How to use

1. Install NixOS [https://nixos.org/download.html#nixos-iso](https://nixos.org/download.html#nixos-iso)
2. Move the files in this repo to `/etc/nixos`
3. Create users.nix with the following format:

```
{ config, ... }:
{
  ---STEP 4 STUFF HERE---

  users.group.plex = {};
  users.group.plex.name = "plex";
  users.groups.plex.members = [ "user1" "user2" ];
  users.group.plex.gid = 4138;
}
```

4. Add users for the server as shown at [https://nixos.org/manual/nixos/stable/index.html#sec-user-management]([https://nixos.org/manual/nixos/stable/index.html#sec-user-management)
5. As root, `nixos-rebuild switch`
6. Reboot
7. Enjoy

