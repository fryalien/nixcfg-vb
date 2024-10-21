{ config, pkgs, ... }:

{
   virtualisation.virtualbox.host.enable = true;
   users.extraGroups.vboxusers.members = [ "y" ];

   # Extensions
   virtualisation.virtualbox.host.enableExtensionPack = true;
}
