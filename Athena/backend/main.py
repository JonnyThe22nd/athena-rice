import threading

from socket_server import SocketServer
from hyprland import Hyprland
from audio import Audio
from network import Network
from bluetooth import Bluetooth
from media import Media
from system import System
from power import Power
from hyprland_socket import HyprlandSocket
from hyprland_events import HyprlandEventParser


class AthenaBackend:
    def __init__(self):
        self.socket = SocketServer()
        self.hyprland = Hyprland()
        self.audio = Audio()
        self.network = Network()
        self.bluetooth = Bluetooth()
        self.media = Media()
        self.system = System()
        self.power = Power()
        self.hypr_socket = HyprlandSocket()
        self.hypr_parser = HyprlandEventParser()

    def start_hyprland_listener(self):
        def receive(raw):
            event = self.hypr_parser.parse(raw)
            if event:
                self.socket.broadcast(event)

        thread = threading.Thread(
            target=self.hypr_socket.listen,
            args=(receive,),
            daemon=True,
        )
        thread.start()

    def start(self):
        print("Athena backend started")
        self.start_hyprland_listener()
        self.socket.start()


if __name__ == "__main__":
    AthenaBackend().start()