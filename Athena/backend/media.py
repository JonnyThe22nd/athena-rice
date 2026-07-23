import subprocess


class Media:


    def status(self):

        result = subprocess.check_output(
            [
                "playerctl",
                "metadata"
            ]
        )


        return result.decode()



    def play(self):

        subprocess.run(
            [
                "playerctl",
                "play"
            ]
        )



    def pause(self):

        subprocess.run(
            [
                "playerctl",
                "pause"
            ]
        )
