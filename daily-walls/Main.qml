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
        // returns the URL of the most recent wallpaper from Bing
        function getBingURL() {
            Logger.i("DailyWalls", "TODO: get Bing URL");
        }
        // downlaods wallpaper from url and saves it to the local file system
        function downloadWallpaper(url: string) {
            Logger.i("DailyWalls", "TODO: download wallpaper from URL: " + url);
        }
        // returns path of the most recent wallpaper in the local file system
        function mostRecentWallpaper() {
            Logger.i("DailyWalls", "TODO: get most recent local wallpaper");
        }
        // deletes files that are older than the specified number of days
        function cleanWallpaperFolder(days: int) {
            Logger.i("DailyWalls", "TODO: clean wallpaper folder, deleting files older than " + days + " days");
        }
    }
}
