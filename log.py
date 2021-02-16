import time
import os
import logging
start = time.time()
end = time.time()

log = logging.getLogger('parul')
log.setLevel(logging.DEBUG)

duration = 30
i = 1
while(i <= duration):
  time.sleep(0.5)
  log.debug("parul")
  i += 1
