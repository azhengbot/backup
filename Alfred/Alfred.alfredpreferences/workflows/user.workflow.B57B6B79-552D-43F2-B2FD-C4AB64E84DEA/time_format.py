# coding:utf-8
# python script for alfred workflow

import re
import sys

# from alfred.feedback import Feedback
from workflow import Workflow3
from datetime import datetime


def main():
    time_stamp = sys.argv[1]
    wf = Workflow3()
    # time_stamp = 1654589922095

    time_stamp = int(time_stamp)

    if len(str(time_stamp)) == 13:
        time_stamp = time_stamp / 1000

    t = datetime.fromtimestamp(time_stamp)
    time_str = datetime.strftime(t, "%Y-%m-%d %H:%M:%S")

    kwargs = {"title": time_str, "subtitle": "", "valid": True, "arg": time_str}
    wf.add_item(**kwargs)
    wf.send_feedback()


if __name__ == "__main__":
    main()
