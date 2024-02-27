# Use a base image
FROM alpine:latest

# Set a default value for the environment variable
ENV MY_VARIABLE=default_value

# Print the value of the environment variable when the container starts
CMD echo "The value of MY_VARIABLE is: $MY_VARIABLE"
