# Base image for Python 3.10 with Alpine Linux
FROM python:3.10-alpine

# Set working directory
WORKDIR /code

# Install dependencies
RUN pip3 install -r requirements.txt

# Copy your application code
COPY . /code

# Install development tools (optional)
RUN apk update && apk add git bash

# Create user and group for development (optional)
RUN apk add --no-cache shadow gettext \
  && addgroup -S docker \
  && adduser -S --shell /bin/bash --ingroup docker vscode

# Define entrypoint and command
ENTRYPOINT ["python3"]
CMD ["app.py"]
