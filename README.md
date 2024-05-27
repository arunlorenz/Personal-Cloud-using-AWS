# Personal Cloud Storage in AWS

This project sets up a personal cloud storage solution using OwnCloud on an AWS EC2 instance with Ubuntu 22.04, Apache, and PostgreSQL.

## Prerequisites

- AWS account
- EC2 instance running Ubuntu 22.04
- Domain name for the OwnCloud server (optional but recommended)

## Setup

1. **Launch an EC2 Instance**

   - Launch an EC2 instance with Ubuntu 22.04.
   - Open necessary ports (e.g., HTTP, HTTPS) in the security group.

2. **Connect to Your EC2 Instance**

   ```sh
   ssh -i path-to-your-key.pem ubuntu@your-ec2-public-dns

3. **Clone the Repository**

   ```sh
    git clone https://github.com/your-username/Personal-Cloud-Storage-in-AWS.git
    cd Personal-Cloud-Storage-in-AWS
    
4. **Run the Setup Script**

   ```sh
    chmod +x owncloud-setup.sh
    sudo ./owncloud-setup.sh

5. **Access OwnCloud**

    Open your web browser and navigate to http://your-ec2-public-dns/owncloud or http://cloud.your-domain.com if you have configured a domain.
    
    
## Configuration Details
  -  Apache Configuration: owncloud.conf in the repository is copied to /etc/apache2/sites-available/owncloud.conf.
  -  Database:
        - Database Name: ownclouddb
        - Database User: ownclouduser
        - Password: Set during the script execution.
        
## Post-Installation
After completing the setup, visit the OwnCloud web interface to complete the installation process. You will need to provide the database details created during the setup.
