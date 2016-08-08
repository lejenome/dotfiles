#!/usr/bin/env python3
from xmlrpc.client import ServerProxy

try:
    with ServerProxy('http://127.0.0.1:6800/rpc') as proxy:
        stat = proxy.aria2.getGlobalStat()
        print("""
        {{"full_text":"{}","color":"#949494","separator":false,"separator_block_width":1}},
        {{"full_text":"/","color":"#949494","separator":false,"separator_block_width":1}},
        {{"full_text":"{}","color":"#909737","separator":false,"separator_block_width":1}},
        {{"full_text":"/","color":"#949494","separator":false,"separator_block_width":1}},
        {{"full_text":"{}","color":"#b27d12","separator":false,"separator_block_width":6}},
        """
              .format(stat['numStopped'],
                      stat['numActive'], stat['numWaiting']))
except:
    print('{"full_text":"N","color":"#924020","separator":false,'
          '"separator_block_width":6},')
