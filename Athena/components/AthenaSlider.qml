import QtQuick
import QtQuick.Controls


Slider {


    id:
        slider



    background:

        Rectangle {


            height:
                6



            radius:
                3



            color:
                AthenaTheme.surfaceLight


        }



    handle:

        Rectangle {


            width:
                16



            height:
                16



            radius:
                8



            color:
                AthenaTheme.accent

        }

}