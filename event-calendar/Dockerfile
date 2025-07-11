
# Use a Windows base image
FROM mcr.microsoft.com/windows/servercore:ltsc2022

# Set environment variables for Python installation
ENV PYTHON_VERSION=3.11.7
ENV PYTHON_INSTALL_DIR=c:/Python

# Download and install Python
ADD https://www.python.org/ftp/python/3.11.7/python-3.11.7-amd64.exe c:/python-installer.exe

RUN c:/python-installer.exe /quiet InstallAllUsers=1 PrependPath=1 Include_test=0
# RUN del c:/python-installer.exe

# Verify Python and pip installation
RUN python --version
RUN pip --version


# Copy the local project directory to the container
COPY . c:/eventcalendar/

# RUN mkdir -p c:/eventcalendar
WORKDIR c:/eventcalendar

# ####
# # These will be handled in the entrypoint script
# ####

# # Configure DNS in the Container
# RUN powershell -Command "Set-DnsClientServerAddress -InterfaceAlias 'Ethernet' -ServerAddresses ('8.8.8.8', '8.8.4.4')"

# # Install module dependencies
# RUN pip install --no-cache-dir -r requirements.txt

# # Make migrations, as described in the install tutorial from the original repository
# RUN python manage.py makemigrations && python manage.py migrate

# # Set the default command to run the Django dev server
# CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]

# Expose the port for public access
ENV DJANGO_DEV_SERVER_PORT 8000
EXPOSE $DJANGO_DEV_SERVER_PORT
# Expose websocket server port
EXPOSE 5000
# Expose chatbot server port
EXPOSE 8001