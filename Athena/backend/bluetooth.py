import subprocess


class Bluetooth:


    def devices(self):

        result = subprocess.check_output(
            [
                "bluetoothctl",
                "devices"
            ]
        )


        return result.decode()
