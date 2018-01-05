CREATE USER 'cls'@'%' IDENTIFIED BY 'cls';
CREATE USER 'sessionlog'@'%' IDENTIFIED BY 'sessionlog';
CREATE USER 'clsmail'@'%' IDENTIFIED BY 'clsmail';
CREATE USER 'lor'@'%' IDENTIFIED BY 'lor';

GRANT ALL PRIVILEGES ON cls.* TO 'cls'@'%';
GRANT ALL PRIVILEGES ON clsmail.* TO 'cls'@'%';
GRANT ALL PRIVILEGES ON sessionlog.* TO 'cls'@'%';
 
GRANT ALL PRIVILEGES ON cls.* TO 'clsmail'@'%';
GRANT ALL PRIVILEGES ON clsmail.* TO 'clsmail'@'%';
GRANT ALL PRIVILEGES ON sessionlog.* TO 'clsmail'@'%';
 
GRANT ALL PRIVILEGES ON cls.* TO 'sessionlog'@'%';
GRANT ALL PRIVILEGES ON clsmail.* TO 'sessionlog'@'%';
GRANT ALL PRIVILEGES ON sessionlog.* TO 'sessionlog'@'%';

GRANT ALL PRIVILEGES ON cls.* TO 'lor'@'%';
GRANT ALL PRIVILEGES ON clsmail.* TO 'lor'@'%';
GRANT ALL PRIVILEGES ON sessionlog.* TO 'lor'@'%';

FLUSH privileges;