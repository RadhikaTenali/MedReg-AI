# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Install system dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    curl \
    software-properties-common \
    && rm -rf /var/lib/apt/lists/*

# Copy the requirements file into the container
COPY requirements.txt .

# Install Python dependencies
# Adding streamlit if it's not in your requirements.txt
RUN pip install --no-cache-dir -r requirements.txt
RUN pip install streamlit google-cloud-aiplatform

# Copy the rest of the application code
COPY . .

# Expose port 8080 (Required for Cloud Run)
EXPOSE 8080

# Command to run the app
# Streamlit runs on 8501 by default, but Cloud Run expects 8080
CMD ["streamlit", "run", "streamlit_app.py", "--server.port=8080", "--server.address=0.0.0.0"]
