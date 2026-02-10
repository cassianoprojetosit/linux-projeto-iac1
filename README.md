Linux Directory and User Management Script

Description: This Bash script automates the creation of directories, user groups, and users in a Linux environment with specific permissions and security settings. It's designed to set up an organized directory structure for different departments (Administrative, Sales, and Secretarial) with appropriate access controls.

Features:

- Creates four main directories: /publico, /adm, /ven, and /sec
- Creates three user groups: GRP_ADM, GRP_VEN, and GRP_SEC
- Creates nine users divided into three departments
- Sets up forced password change on first login for all users
- Configures directory permissions with group-based access control

User Creation Details:

- Administrative Users (GRP_ADM group)

     * carlos: Default password: Senha123
     * maria: Default password: Senha123
     * joao: Default password: Senha123

- Sales Users (GRP_VEN group)
  
     * debora: Default password: Senha123
     * sebastiana: Default password: Senha123
     * roberto: Default password: Senha123

- Secretarial Users (GRP_SEC group)
  
     * josefina: Default password: Senha123
     * amanda: Default password: Senha123
     * rogerio: Default password: Senha123

Directory Permissions:

- Directory	Owner	Group	Permissions	Description

  /publico	root	root	777	Public directory accessible to everyone
  /adm	root	GRP_ADM	770	Administrative directory - only accessible by GRP_ADM members
  /ven	root	GRP_VEN	770	Sales directory - only accessible by GRP_VEN members
  /sec	root	GRP_SEC	770	Secretarial directory - only accessible by GRP_SEC members

Security Features:

- All users are created with the /bin/bash shell
- Passwords are encrypted using openssl passwd
- Forced password change on first login (chage -d 0)
- Group-based permissions ensure proper access segregation

Usage:

-Prerequisites
-Linux operating system
- Root/sudo privileges
- openssl package installed

Execution:

- Make the script executable: chmod +x script_name.sh
- Run the script with sudo: sudo ./script_name.sh

Post-Execution: 

- Users must change their passwords on first login
- Each department has exclusive access to their respective directory
- The /publico directory is accessible to all users for read, write, and execute operations

Notes:

- All users are created with home directories (-m flag)
- Default password for all users is Senha123 (should be changed in production environments)
- The script uses pipe (|) syntax for user creation which may need adjustment based on your shell environment
- Consider modifying password complexity and implementing a password policy for production use

File Structure After Execution: 

  /  
  ├── publico/    (rwx for everyone)
  ├── adm/        (rwx for GRP_ADM only)
  ├── ven/        (rwx for GRP_VEN only)
  └── sec/        (rwx for GRP_SEC only)
