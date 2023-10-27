import json
import sys
import re
devices = json.load(open("utils/devices.json", "r"))
devs = []
deviceNames = []

if "ALL" in sys.stdin.readline():
    deviceNames = [f"{x}\n" for x in devices]
    devs = [devices[x] for x in devices]
else:
    for line in sys.stdin:
        match = re.search("^Device\s(.*?)$", line)
        if match is not None:
            deviceNames.append(match.group(1).strip(" ") + "\n")
            devs.append(devices[match.group(1).strip(" ")])

with open("build/DEVICES.txt", "w") as f:
    f.writelines(deviceNames)
strdevs = ""
for x in devs:
    strdevs += f"-d {hex(x)} "
print(strdevs)