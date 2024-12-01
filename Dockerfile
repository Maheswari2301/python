# Use an official Python runtime as a parent image
FROM python:3.8-slim

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy the current directory contents into the container at /usr/src/app
COPY . .

# Install any dependencies from requirements.txt (if present)
RUN pip install --no-cache-dir -r requirements.txt

# Run the Python application when the container starts
CMD ["python", "app.py"]
