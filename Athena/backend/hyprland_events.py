from events import Event


class HyprlandEventParser:


    def parse(self, message):


        parts = message.split(
            ">>"
        )


        name = parts[0]


        value = (
            parts[1]
            if len(parts) > 1
            else ""
        )



        if name == "workspace":

            return {

                "type":
                    Event.WORKSPACE_CHANGED,

                "workspace":
                    value

            }



        if name == "activewindow":

            return {

                "type":
                    Event.WINDOW_CHANGED,

                "window":
                    value

            }



        if name == "openwindow":

            return {

                "type":
                    Event.WINDOW_CHANGED,

                "window":
                    value

            }



        if name == "closewindow":

            return {

                "type":
                    Event.WINDOW_CHANGED,

                "window":
                    value

            }



        return None