FROM postgres:latest

# Set environment variables
ENV POSTGRES_DB=${POSTGRES_DB}
ENV POSTGRES_USER=${POSTGRES_USER}
ENV POSTGRES_PASSWORD=${POSTGRES_PASSWORD}

# Copy the SQL script to the Docker image
COPY init.sql /docker-entrypoint-initdb.d/

