import QtQuick


ListView {


    id:
        list



    property string filter:
        ""



    model:

        ApplicationService.search(
            filter
        )



    delegate:

        ApplicationDelegate {

            width:
                list.width



            height:
                55



            app:
                modelData


        }


}