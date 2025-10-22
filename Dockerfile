FROM python:3.9-slim

<<<<<<< HEAD
# Set the working directory in the container
WORKDIR /app

# Install dependencies
RUN pip install Flask gunicorn

# Copy the rest of the application code
COPY . .
=======
# Install dependencies
RUN pip install flask gunicorn
RUN pip install numpy
RUN pip install scikit-learn

# Copy the rest of the application code
COPY app.py .
COPY ./model/* ./model/
COPY ./templates/* ./templates/

# Expose port 5000
EXPOSE 5000
>>>>>>> 9a4b493 (Dockerfile now working & removed erroneous dockerfile)

# Run the app
CMD ["python3", "app.py"]
