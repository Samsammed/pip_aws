# Use an official Python runtime as the base image
FROM python

# Set the working directory in the container to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install the required packages
RUN pip install -r requirements.txt

# Set the environment variable for Flask to run in production
ENV FLASK_ENV=production

# Expose port 8080 to the host machine
EXPOSE 8081

# Run the command to start the Flask app
CMD ["flask", "run", "--host=0.0.0.0", "--port=8081"]
