# import time
# import os
# # import logging
# # start = time.time()
# # end = time.time()

# # log = logging.getLogger('parul')
# # log.setLevel(logging.DEBUG)

# duration = 30
# i = 1
# while(i <= duration):
#   time.sleep(0.5)
# #   log.debug("parul")
#   print(i)
#   i += 1

import time
import os
start = time.time()
end = time.time()

duration = 20
i = 1
while end - start < duration:
  print(f"Log {i}")
  i += 1
  time.sleep(0.5)
  end = time.time()
