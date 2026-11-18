DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS addresses;

CREATE TABLE addresses
(
    id      UUID PRIMARY KEY DEFAULT uuidv7(),
    addr_l1 VARCHAR(255),
    addr_l2 VARCHAR(255),
    street  VARCHAR(255),
    city    VARCHAR(255),
    county  VARCHAR(255),
    country VARCHAR(255),
    eircode VARCHAR(255)
);

CREATE TABLE users
(
    id         UUID PRIMARY KEY DEFAULT uuidv7(),
    email      UNIQUE VARCHAR(255),
    password   VARCHAR(255),
    first_name VARCHAR(255),
    last_name  VARCHAR(255),
    address_id UUID,

    CONSTRAINT fk_users_address
        FOREIGN KEY (address_id)
            REFERENCES addresses (id)
);

CREATE INDEX idx_users_address_id ON users (address_id);
