{ ... }:

{
  programs.git = {
    enable = true;
    userName = "DrakariDev";
    userEmail = "drakaridev@gmail.com";
    extraConfig = {
      init.defaultBranch = "main";
      safe.directory = "/etc/nixos";
      credential.helper = "store";
    };
    delta.enable = true;
  };
}
