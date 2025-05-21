ALTER USER 'root'@'localhost' IDENTIFIED BY 'mike';
CREATE DATABASE univ_information_sys;
GRANT ALL PRIVILEGES ON univ_information_sys.* TO 'root'@'localhost';
FLUSH PRIVILEGES;