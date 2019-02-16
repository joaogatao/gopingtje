import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    // The effective value will be restricted by ApplicationWindow.allowedOrientations
    allowedOrientations: Orientation.All

    property int ping: 0
    property int kan: 1

    // To enable PullDownMenu, place our content in a SilicaFlickable
    SilicaFlickable {
        anchors.fill: parent

        // Tell SilicaFlickable the height of its content.
        contentHeight: column.height

        Image {
            id: start
            source: "pics/F"+ping.toString()+".png"
            width: page.width
            height: page.height

            MouseArea{
                anchors.fill: parent
                onClicked:{
                    ping =  ping + 1
                }
            }
        }





    }
}
