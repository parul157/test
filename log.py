import time
import os
start = time.time()
end = time.time()

duration = 300
i = 1
while end - start < duration:
  print(f"Log {i}")
  i += 1
  time.sleep(5)
  end = time.time()
