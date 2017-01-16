import json

class JsonLineReader(object):
    def read_file(self, path):
        stream = open(path, "r")
        # FIXME: error handling
        for line in stream:
            cleaned = self.clean_line(line)
            parsed = json.loads(cleaned)
            yield parsed

    def clean_line(self, line):
        return line.rstrip("\n,")
