import face_alignment
from skimage import io
import numpy as np
import matplotlib.pyplot as plt

def main(image_path, output_file='landmarks.txt'):
    # Initialize the face alignment model for 3D landmarks using CPU
    fa = face_alignment.FaceAlignment(face_alignment.LandmarksType.THREE_D, flip_input=False, device='cpu')

    # Load the image
    input_image = io.imread(image_path)

    # Get 3D landmarks
    preds = fa.get_landmarks(input_image)

    # Check if any landmarks were detected
    if preds is not None and len(preds) > 0:
        # Take the first detected face landmarks
        landmarks = preds[0]  # This is an Nx3 array of (x, y, z) coordinates

        # Save the landmarks to a text file
        np.savetxt(output_file, landmarks, fmt='%.6f', delimiter=',', header='x,y,z')

        print(f'Landmarks saved to {output_file}')

        # Plot the 3D landmarks
        plot_3d_landmarks(landmarks)
    else:
        print("No faces detected in the image.")

def plot_3d_landmarks(landmarks):
    # Create a 3D scatter plot
    fig = plt.figure()
    ax = fig.add_subplot(111, projection='3d')

    # Extract x, y, z coordinates
    x = landmarks[:, 0]
    y = landmarks[:, 1]
    z = landmarks[:, 2]

    # Plot the points
    ax.scatter(x, y, z, c='r', marker='o')

    # Set labels
    ax.set_xlabel('X Label')
    ax.set_ylabel('Y Label')
    ax.set_zlabel('Z Label')
    ax.set_title('3D Face Landmarks')

    # Show the plot
    plt.show()


# Specify the path to your image here
image_path = r"C:\Users\Center\Pictures\front.jpg"  # Replace with your image path
main(image_path)