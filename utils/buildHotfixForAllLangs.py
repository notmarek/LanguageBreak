#!/bin/python
from glob import glob
import re
import subprocess
import os
import sys
langs = []
for x in glob("mnt/opt/amazon/ebook/config/locales/??.properties"):
    with open(x, "r") as f:
        for line in f.readlines():
            if lang := re.match("^locales.supported=(.*?)$", line):
                langs.extend(lang.group(1).split(","))

with open("utils/install-languagebreak-cleanup.sh", "r") as og:
    lines = og.readlines()

for x in langs:
    with open("newHotfix/install-languagebreak-cleanup.sh", "w") as f:
        linesPatched = []
        for line in lines:
            linesPatched.append(line.format(lang_code=x))
        f.writelines(linesPatched)
    os.chmod("newHotfix/install-languagebreak-cleanup.sh", 0o755)
    subprocess.Popen(("utils/buildHotfix.sh", sys.argv[1] if len(sys.argv) > 1 else "", x)).wait()