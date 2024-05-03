{ pkgs, ... }:

{

  home.packages = [
    pkgs.thefuck    
    pkgs.neofetch
    pkgs.zoxide
    pkgs.eza
    pkgs.bat
    pkgs.sl # L
  ];

  programs.bash = {
    enable = true;

    shellAliases = {
      update = "sudo nixos-rebuild switch --flake /etc/nixos#default";
      ls = "eza";
      cd = "z";
      sr = "sudo reboot";
      ssn = "sudo shutdown now";
    };

    initExtra = ''
      neofetch
      eval "$(zoxide init bash)"

      if [ $(tty) = /dev/tty1 ]; then
        startx
      fi
    '';
  };
  
}
