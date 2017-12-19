# use an official Python runtime as parent image
FROM python:2.7-slim

# application dir
WORKDIR /app

# copy current dir contents into container at /app
ADD . /app

# Set proxy server, replace host:port with values for your servers
# ENV http_proxy host:port
# ENV https_proxy host:port

# install any packages specified in requirements.txt
RUN pip install --trusted-host pypi.python.org -r requirements.txt

# make port 80 available
EXPOSE 80

# Define environment variable
ENV NAME World

# run app.py when container launches
CMD ["python", "app.py"]

