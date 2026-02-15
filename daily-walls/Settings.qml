import QtQuick
import QtQuick.Layouts
import qs.Commons
import qs.Widgets

ColumnLayout {
    id: root

    // Plugin API (injected by the settings dialog system)
    property var pluginApi: null

    // Local state for editing
    property string editValue: pluginApi?.pluginSettings?.myValue || ""

    spacing: Style.marginM

    // Your settings controls here

    // Required: Save function called by the dialog
    function saveSettings() {
        pluginApi.pluginSettings.myValue = root.editValue;
        pluginApi.saveSettings();
    }
}
