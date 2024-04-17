FROM python:3.10-alpine

# Set working directory
WORKDIR /code
COPY requirements.txt /code
# Install dependencies (assuming requirements.txt is in the same directory as Dockerfile)
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
