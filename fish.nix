{ config, pkgs, ... }:

{
  programs.fish = {
    enable = true;
    shellAliases = {
    };
    shellAbbrs = {
	
	### NIXOS

	# NIXOS GENERAL
	# list active channel
	chls = "sudo nix-channel --list";
	# delete old stuff
	clean = "sudo nix-collect-garbage --delete-older-than 3d";
	# look when something is being delete
	lst = "systemctl list-timers";
	# list generations
	lsgen = "sudo nix-env --list-generations --profile /nix/var/nix/profiles/system";

	# WITHOUT FLAKES
	#up = "sudo nix-channel --update"
	#rs = "sudo nixos-rebuild switch"

	# WITH FLAKES
	# update nix flake, has to be in the directory of the flake.lock file
	up = "cd ~/nixos-config; nix flake update;";
	# update the system
	rs = "sudo nixos-rebuild switch --flake ~/nixos-config";
    };
  };

}
