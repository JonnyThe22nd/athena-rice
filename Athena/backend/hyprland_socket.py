import os
import socket


class HyprlandSocket:


    def __init__(self):

        runtime = os.getenv(
            "XDG_RUNTIME_DIR"
        )

        signature = os.getenv(
            "HYPRLAND_INSTANCE_SIGNATURE"
        )

        self.path = None
        if runtime and signature:
            self.path = (
                runtime
                +
                "/hypr/"
                +
                signature
                +
                "/.socket2.sock"
            )



    def listen(self, callback):
        if not self.path:
            return

        sock = socket.socket(
            socket.AF_UNIX,
            socket.SOCK_STREAM
        )


        sock.connect(
            self.path
        )


        while True:

            data = sock.recv(
                4096
            )


            if not data:
                break


            event = data.decode(
                "utf-8"
            )


            callback(
                event.strip()
            )