# Use an official Python runtime as a parent image
FROM python:latest

# Set environment variables
ENV PYTHONUNBUFFERED=1

# Create a working directory
WORKDIR /app

# Copy the requirements.txt file into the container
COPY requirements.txt .

# Install the requirements
RUN pip install -r requirements.txt

# Expose the Jupyter Notebook port
EXPOSE 8080

# Start Jupyter Notebook when the container runs
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8080", "--no-browser", "--allow-root"]