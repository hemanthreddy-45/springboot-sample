# Use a slim Python 3.9 image
FROM python:3.13.0b4-slim
 
# Install required Python packages
#RUN pip install mkdocs-material mkdocstrings mkdocs-glightbox mkdocstrings-python
 
RUN pip install --upgrade pip
#RUN pip install --no-cache-dir mkdocs-material
 
# Install mkdocs and required extensions sequentially to avoid resource issues
RUN pip install mkdocs-material
RUN pip install mkdocstrings
RUN pip install mkdocs-glightbox
RUN ip install mkdocstrings-python
 
# Set the working directory
WORKDIR /docs
 
# Copy the documentation files from the local directory into the container
COPY . /docs
 
# Set the default command to run MkDocs
ENTRYPOINT ["mkdocs", "serve", "-a", "0.0.0.0:9091"]
