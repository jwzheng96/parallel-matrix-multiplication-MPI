import os
import numpy as np
import matplotlib.pyplot as plt
from decimal import Decimal

# m1000_result = [3.12, 2.25, 1.31, 0.93, 0.77]
# m2000_result = [45.56, 24.97, 13.48, 10.87, 6.73]
# m3000_result = [184.20, 98.03, 52.70, 43.44, 26.53]
# m4000_result = [401.15, 215.98, 113.55, 92.45, 69.44]
# m5000_result = [897.65, 466.62, 244.23, 213.56, 194.65]
# m6000_result = [1581.80, 832.72, 435.02, 402.10, 389.20]
# p = [1, 2, 4, 8, 16]
# plt.plot(p, m1000_result, label='m = 1000')
# plt.plot(p, m2000_result, label='m = 2000')
# plt.plot(p, m3000_result, label='m = 3000')
# plt.plot(p, m4000_result, label='m = 4000')
# plt.plot(p, m5000_result, label='m = 5000')
# plt.plot(p, m6000_result, label='m = 6000')
# plt.legend()
# plt.ylabel("time/s")
# plt.xlabel("p")
# plt.show()


m1000_result = [1, 1.39, 2.38, 3.35, 4.05]
m2000_result = [1, 1.82, 3.38, 4.19, 6.77]
m3000_result = [1, 1.88, 3.50, 4.24, 6.94]
m4000_result = [1, 1.86, 3.53, 4.34, 5.78]
m5000_result = [1, 1.92, 3.68, 4.20, 4.61]
m6000_result = [1, 1.90, 3.64, 3.93, 4.06]
p = [1, 2, 4, 8, 16]
plt.plot(p, m1000_result, label='m = 1000')
plt.plot(p, m2000_result, label='m = 2000')
plt.plot(p, m3000_result, label='m = 3000')
plt.plot(p, m4000_result, label='m = 4000')
plt.plot(p, m5000_result, label='m = 5000')
plt.plot(p, m6000_result, label='m = 6000')
plt.legend()
plt.ylabel("ratio")
plt.xlabel("p")
plt.show()