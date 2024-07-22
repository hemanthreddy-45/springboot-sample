# Use a slim Python 3.9 image
# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . .

# Upgrade pip to the latest version
RUN pip install --upgrade pip

RUN pip install mkdocs-material
RUN pip install mkdocstrings
RUN pip install mkdocs-glightbox
RUN ip install mkdocstrings-python
 

# Install any needed packages specified in requirements.txt
RUN pip install -r requirements.txt

# Run your application
CMD ["python", "app.py"]
