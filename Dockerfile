# Base image
FROM python:3.12

# Set the working directory
WORKDIR /app

# Copy requirements file
COPY requirements.txt /app/

# Upgrade pip to the latest version
RUN pip install --upgrade pip

# Install scikit-build (if necessary; otherwise, this line can be removed)
RUN pip install scikit-build

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy application code
COPY . /app/

# Collect static files
RUN python manage.py collectstatic --noinput

# Ensure media and static directories exist
RUN mkdir -p /app/media /app/staticfiles

# Command to run the application
CMD ["gunicorn", "inventorySystem.wsgi:application", "--bind", "0.0.0.0:8000"]
