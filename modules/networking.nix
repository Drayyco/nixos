{ ... }:

{
  networking = {
    hostName = "draynix";
    networkmanager.enable = true;
    firewall.allowedTCPPorts = [ 22 ];
  };
}
