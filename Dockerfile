# Start by pulling the Python image
FROM python:3.8-alpine

# Copy the requirements file into the image
COPY ./requirements.txt /app/requirements.txt

# Set working directory to /app
WORKDIR /app

# Install the dependencies from the requirements.txt file
RUN pip install -r requirements.txt

# Copy everything from the local directory to the /app directory inside the container
COPY . /app

# Configure the container to run Python as the entry point
ENTRYPOINT [ "python" ]

# Set default argument to be executed by ENTRYPOINT
CMD ["app.py"]

