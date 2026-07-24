import socket
import json
import threading
import os


class SocketServer:


    def __init__(self, path="/tmp/athena.sock"):

        self.path = path

        self.clients = []



    def start(self):
        if os.path.exists(self.path):
            os.unlink(self.path)
        server = socket.socket(
            socket.AF_UNIX,
            socket.SOCK_STREAM
        )


        server.bind(
            self.path
        )


        server.listen()


        while True:

            client, _ = server.accept()

            self.clients.append(
                client
            )



            thread = threading.Thread(
                target=self.handle,
                args=(client,)
            )

            thread.start()



    def handle(self, client):

        while True:

            data = client.recv(4096)

            if not data:
                break


            message = json.loads(
                data.decode()
            )


            print(
                "Command:",
                message
            )



    def broadcast(self, event):

        payload = json.dumps(
            event
        ).encode()


        disconnected = []
        for client in self.clients:
            try:
                client.send(payload)
            except OSError:
                disconnected.append(client)
        for client in disconnected:
            if client in self.clients:
                self.clients.remove(client)