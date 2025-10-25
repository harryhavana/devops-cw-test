FROM python:3.9-slim

# Install dependencies
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copy the rest of the application code
COPY app.py .
COPY ./model/* ./model/
COPY ./templates/* ./templates/

# Expose port 5000
EXPOSE 5000

# Run the app
CMD ["python3", "app.py"]
