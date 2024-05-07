{ pkgs, ... }:

{
  home.packages = [
    pkgs.emulationstation
    pkgs.dolphin-emu
    pkgs.steam-run
    pkgs.input-remapper
  ];
}
