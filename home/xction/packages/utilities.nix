{ pkgs, ... }:

{
  home.packages = with pkgs; [
    graphviz
    qpwgraph
    wl-mirror
    obs-studio
    obsidian
  ];
}