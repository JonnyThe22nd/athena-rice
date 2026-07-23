import subprocess


class Hyprland:


    def command(self, command):

        subprocess.run(
            [
                "hyprctl",
                "dispatch",
                command
            ]
        )



    def workspace(self, number):

        self.command(
            f"workspace {number}"
        )



    def fullscreen(self):

        self.command(
            "fullscreen"
        )

