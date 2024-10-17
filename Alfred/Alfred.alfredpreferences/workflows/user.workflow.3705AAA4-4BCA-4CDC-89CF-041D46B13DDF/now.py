# coding:utf-8
# python script for alfred workflow

import sys
from datetime import datetime

from workflow import Workflow

# from alfred.feedback import Feedback
# from workflow import Workflow3


def main():
    time_stamp = sys.argv[1]
    wf = Workflow()
    # time_stamp = 1654589922095

    ts = int(datetime.now().timestamp())
    kwargs = {"title": ts, "subtitle": "", "valid": True, "arg": ts}
    wf.add_item(**kwargs)
    wf.send_feedback()


if __name__ == "__main__":
    main()
