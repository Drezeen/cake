# Base image
FROM python:3.12

# Set the working directory
WORKDIR /app

# Copy requirements file
COPY requirements.txt /app/

# Upgrade pip to the latest version
RUN pip install --upgrade pip

# Install scikit-build
RUN pip install scikit-build

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy application code
COPY . /app/

# Command to run the application (if applicable)
CMD ["python", "your_app.py"]
