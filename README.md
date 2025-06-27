# 🌐 ft_server: A Containerized Web Server Setup

![Language: Shell](https://img.shields.io/badge/Language-Shell-green.svg)
![Technology: Docker](https://img.shields.io/badge/Technology-Docker-blue.svg)
![OS: Debian Buster](https://img.shields.io/badge/OS-Debian_Buster-orange.svg)
![School: 42 Paris](https://img.shields.io/badge/School-42_Paris-orange.svg)
![Grade: 100/100](https://img.shields.io/badge/Grade-100/100-brightgreen.svg)

## ✨ Overview

`ft_server` is a foundational system administration project from 42 Paris, designed to introduce the concept of **containerization using Docker**. The primary objective was to set up a comprehensive web server environment within a single Docker container, capable of hosting multiple services.

This project provided hands-on experience in configuring a full web stack (Nginx, WordPress, MySQL, phpMyAdmin) from scratch inside a container, managing services, and ensuring their interoperability. It was a crucial step in understanding modern deployment practices and basic DevOps principles.

## 🌟 Implemented Features & Services (Mandatory Part)

This project successfully implements a single Docker container hosting a multi-service web server based on Debian Buster. Key functionalities include:

### **1. Web Server (`Nginx`)**

*   Configured `Nginx` as the primary web server and reverse proxy.
*   Handles incoming web requests and directs them to the appropriate backend services.
*   Supports **SSL/TLS protocol** for secure communication (HTTPS).
*   Manages **automatic indexing**, with the ability to toggle it on or off as required.

### **2. Content Management System (`WordPress`)**

*   Deployed and configured a `WordPress` instance for dynamic content management.
*   Integrated seamlessly with the MySQL database for content storage.

### **3. Database Management System (`MySQL`)**

*   Set up `MySQL` (MariaDB) as the relational database server.
*   Ensures persistent data storage for `WordPress` and `phpMyAdmin`.

### **4. Database Administration Tool (`phpMyAdmin`)**

*   Configured `phpMyAdmin` for convenient web-based administration of the `MySQL` database.
*   Provides an interface to manage databases, tables, and users.

### **Core Implementation Details**

*   **Single Container Architecture:** All services are deployed and run within a **single Docker container**, demonstrating efficient resource management and inter-service communication within that boundary.
*   **Debian Buster Base:** The Docker image is built upon a Debian Buster base, requiring custom installation and configuration of all services.
*   **Automated Setup:** The entire server setup, including service installation, configuration, and startup, is automated through **scripts located in the `srcs` directory and defined in the Dockerfile.**

## 🛠️ Technologies Used

*   **Containerization:** Docker (`Dockerfile`)
*   **Web Server:** Nginx
*   **Database:** MySQL (MariaDB)
*   **CMS:** WordPress
*   **Database Management Tool:** phpMyAdmin
*   **Operating System:** Debian Buster
*   **Scripting:** Shell scripting (Bash, within `srcs` directory)
*   **Networking:** SSL/TLS, Port forwarding.

## 🚀 How to Use

1.  **Clone the repository:**
    ```bash
    git clone https://github.com/yourusername/ft_server.git
    cd ft_server
    ```
2.  **Generate SSL Certificates (for HTTPS):**
    If you wish to test HTTPS, you need to generate self-signed SSL certificates. You can place them in your `srcs` directory (e.g., `srcs/nginx.crt` and `srcs/nginx.key`).
    ```bash
    # Example command to generate self-signed certificates:
    openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout srcs/nginx.key -out srcs/nginx.crt
    # Follow the prompts (e.g., Common Name: localhost)
    ```
    *Note: If your Dockerfile expects these files at a different path, adjust accordingly.*

3.  **Build the Docker image:**
    ```bash
    docker build -t ft_server .
    ```
    *Ensure Docker is installed and running on your system.*

4.  **Run the Docker container:**
    ```bash
    docker run -d -p 80:80 -p 443:443 --name ft_server_container ft_server
    ```
    *This command will run the container in detached mode, mapping HTTP (80) and HTTPS (443) ports.*

5.  **Access the services:**
    Once the container is up and running, you can access the services via your web browser:
    *   **WordPress:** `https://localhost/wordpress`
    *   **phpMyAdmin:** `https://localhost/phpmyadmin`
    *   (Your main Nginx default page, if configured): `https://localhost/`
    *   *You might need to accept a security exception in your browser for the self-signed certificate.*


## 🎓 Learning Outcomes

This project was pivotal in deepening my understanding of:

*   **Docker & Containerization:** Practical experience in writing `Dockerfiles`, building Docker images, and running isolated multi-service environments.
*   **System Administration Fundamentals:** Hands-on configuration of core web server components (Nginx, MySQL, PHP).
*   **Web Server Setup:** Configuring Nginx for static/dynamic content, reverse proxying, and SSL.
*   **Database Management:** Setting up and integrating a MySQL database with web applications.
*   **Service Orchestration (within a single container):** Ensuring multiple services run efficiently and communicate correctly within a constrained environment.
*   **Basic Networking & Security:** Implementing HTTPS with SSL certificates.
*   **Scripting for Automation:** Utilizing shell scripts for automated service installation and configuration inside a container.
