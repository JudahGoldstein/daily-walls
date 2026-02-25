import QtQuick
import Quickshell
import Quickshell.Io
import qs.Services.UI
import qs.Commons

Item {
    property var pluginApi: null

    IpcHandler {
        target: "plugin:daily-walls"
        function setWallpaper(path: string) {
            Logger.i("DailyWalls", "Setting wallpaper to: " + path);
            WallpaperService.changeWallpaper(path);
        }
    }
}
