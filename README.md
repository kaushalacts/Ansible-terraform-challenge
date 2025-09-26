# Day 31 - JustVisualise: Ansible + Terraform Automation

## Overview
This repository contains the automation for Day 31 of the **#justvisualise** DevOps challenge.  
The challenge focuses on automating a simple task across multiple Linux servers using **Ansible**.  

Instead of manually provisioning servers, this project uses **Terraform** to create the infrastructure on AWS, then applies configuration using **Ansible**.

---

## Challenge Objective
Automate the following tasks across multiple servers:

- 👤 Create a new user
- 🌐 Install Nginx
- 📂 Copy a test file to `/tmp`

**Expected Outcome:**
- New user is present on all servers
- Nginx is installed and running
- Test file exists in `/tmp`

---

## Technologies Used
- **Terraform** - Infrastructure provisioning (AWS EC2, Security Groups)
- **Ansible** - Configuration management
- **AWS** - Cloud provider (EC2, Security Groups)
- **Python/WSL** - Environment for Ansible on Windows

---

├── ansible/
│ ├── inventory.ini # Inventory file with dynamic/static hosts
│ └── playbook.yml # Ansible playbook to configure servers
├── terraform/
│ ├── main.tf # Terraform configuration for EC2 instances & security groups
│ └── outputs.tf # Terraform outputs for server IPs
├── README.md





---

## Setup & Usage

### 1. Terraform - Provision Infrastructure
```bash
cd terraform
terraform init
terraform plan
terraform apply




## Repository Structure
