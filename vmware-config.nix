{ config, lib, pkgs, modulesPath, ... }:

{  
  #Installs vmware tools
  virtualisation.vmware.guest.enable = true;
  #reinstall video drivers - https://discourse.nixos.org/t/nixos-inside-vmware-dual-monitor-stopped-working/19646
  services.xserver.videoDrivers = [ "vmware" ];
  # allow for auto-login (its in a VM, so I am only going to have it up when I am using it)
  services.xserver.displayManager.autoLogin.enable = true;
  services.xserver.displayManager.autoLogin.user = "displaygfx"; 
}
