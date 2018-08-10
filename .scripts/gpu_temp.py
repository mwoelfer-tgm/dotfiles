#!/usr/bin/env python3

import subprocess
from time import sleep

sp = subprocess.Popen(['optirun','nvidia-smi', '-q', '-d','temperature'], stdout=subprocess.PIPE, stderr=subprocess.PIPE)

out_str = sp.communicate()
out_list = out_str[0].decode("utf-8").split('\n')

out_dict = {}
for item in out_list:
    try:
        key, val = item.split(':')
        key, val = key.strip(), val.strip()
        out_dict[key] = val
    except:
        pass

#print(out_list)
#print(out_dict)
try:
    print(out_dict.get("GPU Current Temp")[:2] + "°C")
except:
    print("")
