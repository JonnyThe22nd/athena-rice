import subprocess


class Power:


    def shutdown(self):

        subprocess.run(
            [
                "systemctl",
                "poweroff"
            ]
        )



    def reboot(self):

        subprocess.run(
            [
                "systemctl",
                "reboot"
            ]
        )

