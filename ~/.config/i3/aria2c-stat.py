#!/usr/bin/env python3
from xmlrpc.client import ServerProxy

try:
    with ServerProxy('http://127.0.0.1:6800/rpc') as proxy:
        stat = proxy.aria2.getGlobalStat()
        perc = ''
        if int(stat['numActive']) > 0:
            actives = proxy.aria2.tellActive(
                ['completedLength', 'totalLength'])
            cl = 0
            tl = 0
            for it in actives:
                cl = cl + int(it['completedLength'])
                tl = tl + int(it['totalLength'])
            perc = ' ({}%)'.format(int((cl / tl) * 100))
        print("""
        {{"full_text":"{}","color":"#949494","separator":false,"separator_block_width":1}},
        {{"full_text":"/","color":"#949494","separator":false,"separator_block_width":2}},
        {{"full_text":"{}{}","color":"#909737","separator":false,"separator_block_width":2}},
        {{"full_text":"/","color":"#949494","separator":false,"separator_block_width":1}},
        {{"full_text":"{}","color":"#b27d12","separator":false,"separator_block_width":6}},
        """
              .format(stat['numStopped'],
                      stat['numActive'], perc, stat['numWaiting']))
except:
    print('{"full_text":"N","color":"#924020","separator":false,'
          '"separator_block_width":6},')
