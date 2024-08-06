# Use a Python base image
FROM python:3.12

# Install MySQL client library
RUN python -m pip install --upgrade pip && \
    pip install mysqlclient

# Create and activate a Python virtual environment
RUN python -m venv /opt/venv
ENV PATH="/opt/venv/bin:$PATH"

# Set the working directory
WORKDIR /app

# Copy requirements file and install dependencies
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

# Copy application code
COPY . /app

# Run the application
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
