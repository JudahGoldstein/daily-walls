import QtQuick
import Quickshell
import Quickshell.Io
import qs.Services.UI
import qs.Commons

Item {
    property var pluginApi: null

    Process {
        id: swaybgProc
        command: ["swaybg", "-i", "/home/p15/Pictures/daily-walls/test.jpg"]
        stdout: SplitParser {
            onRead: data => {
                if (data) Logger.i("DailyWalls", "swaybg stdout: " + data);
            }
        }
        stderr: SplitParser {
            onRead: data => {
                if (data) Logger.w("DailyWalls", "swaybg stderr: " + data);
            }
        }
    }

    IpcHandler {
        target: "plugin:daily-walls"
        function setWallpaper() {
            Logger.i("DailyWalls", "Setting wallpaper to: test.jpg");
            swaybgProc.running = true;
            ToastService.showNotice("Wallpaper set to: test.jpg");
        }
    }
}
