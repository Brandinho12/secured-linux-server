# Lab Setup and Security Controls

## 1. Project Overview

This document describes the setup and security controls of the secured Linux server project. The project was implemented in a controlled virtual lab using Oracle VirtualBox.

The lab used Ubuntu Server as the system being secured and Kali Linux as the testing machine.

## 2. Lab Environment

| Component | Purpose |
|---|---|
| Oracle VirtualBox | Runs the virtual machines |
| Ubuntu Server 24.04 LTS | Secured server |
| Kali Linux | Security testing client |
| Virtual network | Enables communication between the virtual machines |

The project focused on Linux server security rather than deployment to a public cloud provider.

## 3. Security Controls

### User and Access Management

User and group accounts, file permissions, and role-based access controls were configured to restrict access to system resources.

### SSH Security

OpenSSH was used for remote administration. SSH configuration and access were included in the server-hardening and testing activities.

### Firewall

UFW was used to manage firewall rules and control network traffic permitted to reach the server.

### Intrusion Prevention

Fail2Ban was configured to help protect against repeated failed authentication attempts.

### Security Auditing

Lynis was used to assess the Linux system's security configuration and identify potential improvements.

### Security Automation

A Bash script named `security_check.sh` was developed to collect security-related system information and generate reports. Cron was used for scheduled execution.

## 4. Testing and Evidence

The repository's `screenshots/` folder contains selected evidence related to:

- UFW firewall configuration
- Fail2Ban configuration and verification
- SSH security testing
- Security-check scripting and automation

These screenshots document selected project activities. They should not be interpreted as proof that every possible security weakness was eliminated.

## 5. Limitations

- The project was implemented in a local virtualized lab.
- It was not deployed to AWS, Microsoft Azure, or Google Cloud.
- Security testing was limited to the lab environment and the tests documented in the academic project.
- Further testing and validation would be needed before using a similar configuration in production.

## 6. Future Work

- Recreate and document the implementation scripts.
- Improve log monitoring and security reporting.
- Validate scheduled automation.
- Explore equivalent security controls in AWS.
- Add infrastructure-as-code and automated security testing.

