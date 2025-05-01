#!/bin/python

import sys
import shutil

configs = {
    "dualh": "horizontal.conf",
    "dualv": "vertical.conf",
}

shutil.copy(
    f"/home/clix/.config/hypr/scripts/{configs[sys.argv[1]]}",
    "/home/clix/.config/hypr/monitors_windows_workspaces.conf",
)
