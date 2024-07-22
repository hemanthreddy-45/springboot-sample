# Use a base image
FROM maven:3.6.0-jdk-11-slim AS build
COPY src /home/app/src
COPY pom.xml /home/app
RUN mvn -f /home/app/pom.xml clean package
RUN pip install mkdocs-material
RUN pip install mkdocstrings
RUN pip install mkdocs-glightbox
RUN pip install mkdocs-mkdocstrings-python
# Set a default value for the environment variable
ENV MY_VARIABLE=default_value

# Print the value of the environment variable when the container starts
CMD echo "The value of MY_VARIABLE is: $MY_VARIABLE"
