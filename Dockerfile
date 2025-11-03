# Use an official Python image
FROM python:3.10-slim

# Set working directory inside container
WORKDIR /app

# Copy everything into the container
COPY . /app

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 5000 (Flask default)
EXPOSE 5000

# Run the Flask app
CMD ["python", "app.py"]
