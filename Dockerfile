# Use this container image to build off of
FROM python:3.6-slim

# Install pygame module
RUN pip install pygame

# Copy all the files needed to the docker container
COPY sky_dodge.py .
ADD /images /images
ADD /sound /sound

#Execute the script
#ENTRYPOINT ["python", "sky_dodge.py"]

