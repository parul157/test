import time
import os
start = time.time()
end = time.time()

duration = 20
i = 1
while(i <= duration):
  time.sleep(0.5)
  print("{0}".format(i))
  i += 1
