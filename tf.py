from tensorflow.python.client import device_lib
device_lib.list_local_devices()

print(device_lib.list_local_devices())

import os
import tensorflow as tf

# os.environ['CUDA_VISIBLE_DEVICES']='1'
print(tf. __version__)
print(tf.config.list_physical_devices('GPU'))

tf.debugging.set_log_device_placement(True)

# Create some tensors
a = tf.constant([[1.0, 2.0, 3.0], [4.0, 5.0, 6.0]])
b = tf.constant([[1.0, 2.0], [3.0, 4.0], [5.0, 6.0]])
c = tf.matmul(a, b)

print(c)
