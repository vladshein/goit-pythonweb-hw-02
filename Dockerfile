# Use an official Python base image
FROM python:3.10

# Set working directory inside the container
WORKDIR /app

# Copy requirements.txt first (to leverage Docker cache)
COPY . .

# Install dependencies
RUN pip install -r requirements.txt

# Optional: specify default command
ENTRYPOINT ["python", "main.py"]