import time
import os
start = time.time()
end = time.time()
try:
  duration = float(os.environ[“DURATION”])
except KeyError:
  duration = 600
i = 1
while end - start < duration:
  print(f"Log {i}")
  i += 1
  time.sleep(5)
  end = time.time()
