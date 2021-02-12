import time
import os
start = time.time()
end = time.time()

duration = 20
i = 1
while i <= duration:
  print(f"Log {i}")
  i += 1
  time.sleep(0.5)
