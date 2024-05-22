# Honeyd-deployment-script

This script automates the installation steps for Honeyd, a tool for creating virtual honeypots, along with its necessary dependencies.

Supported Systems:

  Ubuntu-based distributions (tested on Ubuntu)

Prerequisites:

  Root or sudo privileges

-Installation Instructions-

Download honeyd_install.sh from this repository.

In your terminal, navigate to the directory containing the script and run:
  chmod +x honeyd_install.sh

Execute the script with root privileges:
  sudo ./honeyd_install.sh

The script will guide you through the installation process, providing informative messages about each step.

-Explanation of Steps-

Installing Dependencies:
The script updates the package list (sudo apt-get update) and then installs the required dependencies for Honeyd:
  libevent-dev: Provides event notification libraries.
  libdumbnet-dev: Offers packet creation and manipulation functionalities.
  libpcap-dev: Enables packet sniffing capabilities.
  libpcre3-dev: Includes a Perl regular expression library (optional for subsystems).
  libedit-dev, bison, flex, libtool, and automake: Tools used during the Honeyd build process.

Installing Git:
  Honeyd utilizes Git for version control. The script installs Git using sudo apt-get install -y git.
  
Cloning Honeyd:
  The script clones the official Honeyd repository from GitHub using git clone https://github.com/DataSoft/Honeyd (replace with the correct URL if using a different repository).
  
Building and Installing Honeyd:
  The script navigates to the cloned Honeyd directory (cd Honeyd || exit).
  
It then executes the build commands:
  ./autogen.sh (if necessary)
  ./configure
  make
  sudo make install to install Honeyd system-wide.
  
-Additional Notes-
  Refer to the official Honeyd documentation (https://github.com/DataSoft/Honeyd) for further configuration and usage instructions.
  This script is provided as a convenience and may require adjustments based on your specific system or preferences.
