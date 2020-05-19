# Use this container image to build off of
FROM python:3.6-slim

# Install requirement file
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copy all the files needed to the docker container
COPY sky_dodge.py .
ADD /images /images
ADD /sound /sound

#Execute the script
#ENTRYPOINT ["python", "sky_dodge.py"]

