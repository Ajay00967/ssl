import numpy as np

# Initial 1D array
arr_1d = np.array([1, 2, 3, 4, 5, 6, 7, 8, 9])

# Initial 2D array (3x3)
arr_2d = np.array([[1, 2, 3], [4, 5, 6], [7, 8, 9]])

# Initial 3D array (2x3x3)
arr_3d = np.array([[[1, 2, 3], [4, 5, 6], [7, 8, 9]],
                   [[10, 11, 12], [13, 14, 15], [16, 17, 18]]])

# Print shape and dimensions

print("1. Shape of 1D array:", arr_1d.shape)
print("2. Dimensions of 1D array:", arr_1d.ndim)
print("3. Shape of 2D array:", arr_2d.shape)
print("4. Dimensions of 2D array:", arr_2d.ndim)
print("5. Shape of 3D array:", arr_3d.shape)
print("6. Dimensions of 3D array:", arr_3d.ndim)

# 1. Reshape (1D -> 2D, 2D -> 3D)
# Reshaping works only if the number of elements remains the same

reshaped_2d = arr_1d.reshape((3, 3))  # 1D to 2D
reshaped_3d = arr_2d.reshape((1, 3, 3))  # 2D to 3D
reshaped_neg1 = arr_1d.reshape(-1, 3)  # Using -1 to infer one dimension
# the above (-1, 3) means convert to an array with 3 columns and as many rows needed.

print("\n7. Reshaped Array (1D to 2D, 3x3):\n", reshaped_2d)
print("\n8. Reshaped Array (2D to 3D, 1x3x3):\n", reshaped_3d)
print("\n9. Reshaped Array using -1 index (1D to 2D, inferred shape):\n", reshaped_neg1)

# Notice that this is not a copy, but a view
print("\n10. Base value (Reshaped 2D):", reshaped_2d.base)
print("\n11. Base value (Reshaped 3D):", reshaped_3d.base)

# 2. Resize (resizing 2D and 3D arrays)
# Unlike reshape, resize can modify the total number of elements
resized_2d = np.resize(arr_2d, (2, 5))  # Resizing 2D array to 2x5
resized_3d = np.resize(arr_3d, (2, 3, 4))  # Resize to a 2x3x4 3D array

print("\n12. Resized Array (2D, 2x5):\n", resized_2d)
print("\n13. Resized Array (3D, 2x3x4):\n", resized_3d)

# 3. Flatten (Convert 2D or 3D to 1D)
flat_2d = arr_2d.flatten()  # Flatten 2D to 1D
flat_3d = arr_3d.flatten()  # Flatten 3D to 1D
print("\n14. Flattened Array (2D to 1D):\n", flat_2d)
print("\n15. Flattened Array (3D to 1D):\n", flat_3d)

# 4. Ravel (Similar to flatten but returns a view)
raveled_2d = arr_2d.ravel()  # Ravel 2D to 1D
raveled_3d = arr_3d.ravel()  # Ravel 3D to 1D
print("\n16. Raveled Array (2D to 1D):\n", raveled_2d)
print("\n17. Raveled 1D array base:\n", raveled_2d.base)  # Shows the original array
print("\n18. Raveled Array (3D to 1D):\n", raveled_3d)
print("\n19. Raveled 2D array base:\n", raveled_3d.base)  # Should still refer to the original array

# 5. Transpose (Swap rows and columns for 2D arrays)
transposed_2d = arr_2d.T  # Transpose 2D array
transposed_3d = arr_3d.transpose(0, 2, 1)  # Transpose 3D array (swap axes 1 and 2)
print("\n20. Transposed Array (2D):\n", transposed_2d)
print("\n21. Transposed Array (3D, axes 1 and 2 swapped):\n", transposed_3d)

# 6. Expand dimensions (Add new axis to make the array 3D or higher)
expanded_2d = np.expand_dims(arr_2d, axis=0)  # Add a new axis at the front (make it 3D)
expanded_3d = np.expand_dims(arr_3d, axis=1)  # Add a new axis in between (make it 4D)
print("\n22. Expanded Array (2D to 3D):\n", expanded_2d)
print("\n22. Array and Expanded Array (2D to 3D) shape:\n", arr_2d.shape, expanded_2d.shape)
print("\n23. Expanded Array (3D to 4D):\n", expanded_3d, expanded_3d.shape)
print("\n23. Array and Expanded Array (3D to 4D) shape:\n", arr_3d.shape, expanded_3d.shape)


# 7. Squeeze (Remove dimensions of size 1 from the array)
squeezed_2d = np.squeeze(expanded_2d)  # Squeeze 3D back to 2D
squeezed_3d = np.squeeze(expanded_3d)  # Squeeze 4D back to 3D
print("\n24. Squeezed Array (3D to 2D):\n", squeezed_2d)
print("\n24. expanded_2d and Squeezed Array (3D to 2D) shape:\n", expanded_2d.shape, squeezed_2d.shape)
print("\n25. Squeezed Array (4D to 3D):\n", squeezed_3d)
print("\n25. expanded_3d and Squeezed Array (4D to 3D) shape:\n", expanded_3d.shape, squeezed_3d.shape)
