# Use official Python image as the base
FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy app files
COPY app.py requirements.txt ./

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 5000
EXPOSE 5000

# Command to run the application
CMD ["python", "app.py"]
