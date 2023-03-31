# Docker Image for Debian Package Builder

This Docker image provides a simple environment for building Debian packages.

## Getting Started

Before using this Docker image, you must have Docker installed on your system. 
You can download and install Docker from the official website: https://www.docker.com/get-started

## Building the Docker Image

To build the Docker image, run the following command:

    docker build -t debian-package-builder .

This command will build a Docker image with the tag debian-package-builder.

## Running the Docker Image

To run the Docker image, use the following command:

    docker run -it debian-package-builder

This will start a container with the debian-package-builder image and open a terminal session within the container.

## Building Debian Packages

To simplify the process of building Debian packages, you can use the scripts provided in the `deb-build-utils` package. This package includes the following useful scripts:

- `version-updater.sh`: This script updates the version number in a project's `project.properties` file.
- `generate_control_file.sh`: This script generates the debian/control file for your package.
- `deb_structure.sh`: This script sets up the basic structure of your package directory.
- `builder.sh`: This script automates the process of building your package.

These scripts can save you time and effort when building and maintaining Debian packages. 
For more information, you can refer to the deb-build-utils repository on GitHub: https://github.com/srnjak/deb-build-utils