#!/usr/bin/env python
import os
import signal
import subprocess

lock_cmd = 'xautolock -detectsleep -time 10 -locker "betterlockscreen -l dim" -notify 30 -notifier "notify-send -u critical -t 10000 -- \'LOCKING screen in 30 seconds\'" &'

def check_process():
    p = subprocess.Popen(['pgrep', 'xautolock'], stdout=subprocess.PIPE)
    pid = p.stdout.readline().decode('utf-8')
    if pid != '':
        return pid
    else:
        return None

# if check_process() is None:
    # os.system(lock_cmd)
    # print("ran xautolock first time")

bsp = subprocess.Popen(["bspc", "subscribe", "node"], stdout=subprocess.PIPE)

while True:
    line = bsp.stdout.readline().decode('utf-8')
    if "fullscreen on" in line:
        pid = check_process()
        print("pid: ", pid)
        os.kill(int(pid), signal.SIGKILL)
        print("killed xautolock")
    # elif "fullscreen off" in line:
       # os.system(lock_cmd) 
       # print("started xautolock")
