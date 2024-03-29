import QtQuick 2.5

Image {
    id: root
    source: "images/background.png"

    property int stage

    onStageChanged: {
        if (stage == 1) {
            introAnimation.running = true
        }
    }

    Item {
        id: content
        anchors.fill: parent
        opacity: 0
        TextMetrics {
            id: units
            text: "M"
            property int gridUnit: boundingRect.height
            property int largeSpacing: units.gridUnit
            property int smallSpacing: Math.max(2, gridUnit/4)
        }

        Image {
            id: flyingman
            anchors.centerIn: parent
            width: 200
            height: 200
            property int currentImageIndex: 0
            opacity: 1

            source: formatImageName(currentImageIndex)

            function formatImageName(index) {
                return "images/EU_" + ("000" + index).slice(-3) + ".png"
            }

            // Animation for cycling the images (I have 12 images)
            Timer {
                interval: 1000/12 // 1 second to do the loop
                running: true
                repeat: true
                onTriggered: {
                    flyingman.currentImageIndex = (flyingman.currentImageIndex % 12) + 1; // will cycle from 1 to 12
                    flyingman.source = flyingman.formatImageName(flyingman.currentImageIndex)
                }
            }
        }



        Image {
            id: logo
            property real size: units.gridUnit * 12
            anchors.centerIn: parent
            //source: "images/sweetlogo.png"
            sourceSize.width: 135
            sourceSize.height: 135

            ParallelAnimation {
                running: true

                ScaleAnimator {
                    target: logo
                    from: 0
                    to: 1
                    duration: 700
                }

                SequentialAnimation {
                    loops: Animation.Infinite

                    OpacityAnimator {
                        target: logo
                        from: 0.75
                        to: 1
                        duration: 1200
                    }
                    OpacityAnimator {
                        target: logo
                        from: 1
                        to: 0.75
                        duration: 1200
                    }
                }
            }
        }

        Image {
            id: busyIndicator
            //source: "images/busy.svg"
            anchors.centerIn: parent
            sourceSize.height: 200
            sourceSize.width: 200
            RotationAnimator on rotation {
                id: rotationAnimator
                from: 0
                to: 360
                duration: 2000
                loops: Animation.Infinite
            }
        }
    }

    OpacityAnimator {
        id: introAnimation
        running: false
        target: content
        from: 0
        to: 1
        duration: 1000
        easing.type: Easing.InOutQuad
    }
}
