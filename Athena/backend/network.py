import subprocess


class Network:


    def status(self):

        result = subprocess.check_output(
            [
                "nmcli",
                "-t",
                "-f",
                "active,ssid",
                "dev",
                "wifi"
            ]
        )


        return result.decode()

