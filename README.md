# NixOS-Server


NixOS config files for my home server


## How to use

1. Install NixOS [https://nixos.org/download.html#nixos-iso](https://nixos.org/download.html#nixos-iso)
2. Move the files in this repo to `/etc/nixos`.  Take care to preserve your `boot`, localization, and `system.stateVersion` settings in your original `configuration.nix` and not to just take mine blindly
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
5. Check `networking.nix` and `packages.nix` to customize to your liking
6. As root, `nixos-rebuild switch`
7. Reboot
8. Enjoy

