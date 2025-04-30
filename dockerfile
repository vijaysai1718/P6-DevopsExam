



# Use a slim Python base image
FROM python:3.10-slim

# Set the working directory
WORKDIR /app

# Copy backend source code
COPY ./backend /app

# Copy frontend template(s) to the expected Flask location
COPY ./frontend /app/templates

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the Flask port
EXPOSE 5000

# Set environment variables
ENV FLASK_APP=app.py
ENV FLASK_ENV=production

# Start the Flask server
CMD ["flask", "run", "--host=0.0.0.0", "--port=5000"]

