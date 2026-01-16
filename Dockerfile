FROM python:3.12-slim

# Set working directory
WORKDIR /workspace

# System dependencies
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    git \
    wget \
    curl \
    unzip \
    libffi-dev \
    libssl-dev \
    python3-dev \
    libzmq3-dev \
    && rm -rf /var/lib/apt/lists/*

# Upgrade pip to latest version
RUN pip install --upgrade pip

# Install Qiskit, Jupyter, and visualization libraries
RUN pip install --no-cache-dir \
    qiskit \
    qiskit-aer \
    matplotlib \
    numpy \
    pandas \
    scipy \
    notebook \
    jupyterlab \
    ipywidgets \
    plotly \
    pylatexenc \
    seaborn

# Optional: Enable ipywidgets extensions (skip if fails)
# For JupyterLab >=3, widgets are auto-enabled, no nbextension needed

# Expose Jupyter port
EXPOSE 8888

# Run Jupyter Lab without token
CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root", "--LabApp.token=''"]
