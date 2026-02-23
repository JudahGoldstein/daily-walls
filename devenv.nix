{
  pkgs,
  lib,
  config,
  ...
}:
{
  packages = with pkgs; [
    quickshell
    kdePackages.qtdeclarative
    kdePackages.qttools
    jsonfmt
  ];

  languages = {
    cplusplus.enable = true;
  };

  env = {
    NOCTALIA_DEBUG = 1;
  };

  scripts = {
    start-noctalia-debug = {
      exec = ''
        noctalia-shell kill
        noctalia-shell
      '';
    };
  };
}
