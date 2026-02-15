{
  pkgs,
  lib,
  config,
  ...
}:
{
  packages = with pkgs; [
    qt6.qtdeclarative
    qt6.qttools
    qt6.qtdeclarative.dev
    kdePackages.qtquick3d
    jsonfmt
  ];

  languages = {
    cplusplus.enable = true;
  };

  env = {
    QML_IMPORT_PATH = "${pkgs.qt6.qtdeclarative}/lib/qt-6/qml";
    QT_PLUGIN_PATH = "${pkgs.qt6.qtdeclarative}/lib/qt-6/plugins";
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
