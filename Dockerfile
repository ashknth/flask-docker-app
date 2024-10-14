# Use an official Python runtime as the base image
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy the requirements file and install dependencies
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copy the rest of the app's source code
COPY . .

# Expose the port the app will run on
EXPOSE 5000

# Run the application
CMD ["python", "app.py"]

