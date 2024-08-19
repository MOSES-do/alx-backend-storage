-- Creates a table with unique users.
-- country column enforces only three countries
-- if a value is not set it defaults to US
-- if a value is set outside three allowed countries, defaults to US
DROP TABLE IF EXISTS users;
CREATE TABLE users (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255) NOT NULL UNIQUE,
    name VARCHAR(255),
    country ENUM('US', 'CO', 'TN') DEFAULT 'US'
);
