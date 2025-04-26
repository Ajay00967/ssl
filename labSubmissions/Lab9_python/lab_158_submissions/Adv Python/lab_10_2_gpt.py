import numpy as np
from matplotlib import pyplot as plt

# Seeding for reproducibility
np.random.seed(100)
S = 1000000

# Sampling from each of the six distributions
beta = 100 * np.random.beta(4, 20, S)
expo = 100 * np.random.exponential(0.1, S)
gamma = 100 * np.random.gamma(2, 0.1, S)
laplace = 100 * np.random.laplace(0, 0.5, S)
normal = np.random.normal(0, 3, S)
po = np.random.poisson(3, S)

# Plotting histograms
plt.figure(figsize=(12, 10))  # Optional: larger figure for better spacing

plt.subplot(3, 2, 1)
plt.hist(beta, bins=55, range=(-5, 50), color='red')
plt.title("Beta")

plt.subplot(3, 2, 2)
plt.hist(expo, bins=100, range=(-1, 50), color='green', alpha=0.5)
plt.title("Exponential")

plt.subplot(3, 2, 3)
plt.hist(gamma, bins=100, range=(-1, 50), color='black', alpha=0.8)
plt.title("Gamma")

plt.subplot(3, 2, 4)
plt.hist(laplace, bins=50, range=(-1, 50), color='orange', orientation="horizontal")
plt.title("Laplace")

plt.subplot(3, 2, 5)
plt.hist(normal, bins=50, range=(-10, 11), color='blue', alpha=0.7)
plt.title("Normal")

plt.subplot(3, 2, 6)
plt.hist(po, bins=50, range=(-1, 11), color='purple', alpha=0.6)
plt.title("Poisson")

# Adjust layout and save plot before displaying
plt.tight_layout()
plt.savefig('plot.png')
plt.show()
