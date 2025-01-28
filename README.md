# 3D Face Interpolation

This project extracts 3D landmarks from facial images and performs interpolation to build a 3D face model.

## Features
- Extracts 3D facial landmarks using Python.
- Visualizes the landmarks using a 3D scatter plot.
- Contains MATLAB code for interpolation to generate 3D models.

## Files
- **`main.py`**: Python script for extracting and visualizing 3D landmarks.
- **`FACEInterpolation.m`**: MATLAB file for cubic interpolation.
- **`facemarkpdf.pdf`**: Project documentation.

## Requirements
- Python 3.x
- Libraries: 
  - `face-alignment`
  - `scikit-image`
  - `numpy`
  - `matplotlib`
- MATLAB (for `.m` file processing)

## Usage
### Python Script
1. Install the required Python packages:
    ```bash
    pip install face-alignment scikit-image numpy matplotlib
    ```
2. Run the script:
    ```bash
    python main.py
    ```
   Replace the image path with the path to your image.

### MATLAB
1. Load the `FACEInterpolation.m` file
2. Perform cubic interpolation using MATLAB's built-in functions.

## Authors
- **Danial Farshbaf**
