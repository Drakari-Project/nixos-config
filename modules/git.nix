{ ... }:

{
  programs.git = {
    enable = true;
    userName = "DrakariDev";
    userEmail = "drakaridev@gmail.com";
    extraConfig = {
      init.defaultBranch = "main";
      safe.directory = "/etc/nixos";
    };
  };
}
