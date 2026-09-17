{ ... }:

{
  imports = [
    ./packages/cli.nix
    ./packages/terminal.nix
    ./packages/desktop.nix
    ./packages/browsers.nix
    ./packages/editors.nix
    ./packages/development.nix
    ./packages/media.nix
    ./packages/file-managers.nix
    ./packages/communication.nix
    ./packages/utilities.nix
    ./packages/office.nix
    #./packages/video-editor.nix
  ];
}