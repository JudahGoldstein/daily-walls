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
    jsonfmt
  ];

  languages = {
    cplusplus.enable = true;
  };

  env = {
    QML_IMPORT_PATH = "${pkgs.qt6.qtdeclarative}/lib/qt-6/qml";
    QT_PLUGIN_PATH = "${pkgs.qt6.qtdeclarative}/lib/qt-6/plugins";
  };

  enterShell = ''
    echo "QML Development Environment Loaded"
    echo "Running qml version: $(qml --version)"
  '';
}
