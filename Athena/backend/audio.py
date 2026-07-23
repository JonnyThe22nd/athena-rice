import subprocess


class Audio:


    def volume(self):

        result = subprocess.check_output(
            [
                "wpctl",
                "get-volume",
                "@DEFAULT_AUDIO_SINK@"
            ]
        )


        return result.decode()



    def set_volume(self, value):

        subprocess.run(
            [
                "wpctl",
                "set-volume",
                "@DEFAULT_AUDIO_SINK@",
                str(value)
            ]
        )
