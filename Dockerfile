# 1. Use Python base image
FROM python:3.10-slim

# 2. Set work directory
WORKDIR /app

# 3. Copy files
COPY . /app

# 4. Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# 5. Expose port
EXPOSE 5000

# 6. Run app
CMD ["python", "app.py"]

