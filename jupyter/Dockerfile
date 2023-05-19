# Base image with CUDA support
FROM ${IMAGE_NAME}:12.1.1-runtime-ubuntu20.04 as base

# Install Python and necessary dependencies
RUN apt-get update && apt-get install -y python3 python3-pip

# Set up JupyterLab
RUN pip3 install jupyterlab

# Install CUDA drivers and libraries
RUN apt-get install -y cuda

# Set environment variables for CUDA
ENV PATH="/usr/local/cuda/bin:${PATH}"
ENV LD_LIBRARY_PATH="/usr/local/cuda/lib64:${LD_LIBRARY_PATH}"

# Set the working directory
WORKDIR /app

# Copy requirements file
COPY requirements.txt .

# Install Python dependencies
RUN pip3 install -r requirements.txt

# Expose JupyterLab port
EXPOSE 8888

# Launch JupyterLab
CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8888", "--no-browser"]
