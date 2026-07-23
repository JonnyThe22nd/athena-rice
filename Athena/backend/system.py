import psutil


class System:


    def cpu(self):

        return psutil.cpu_percent()



    def memory(self):

        return psutil.virtual_memory().percent



    def disk(self):

        return psutil.disk_usage("/").percent
