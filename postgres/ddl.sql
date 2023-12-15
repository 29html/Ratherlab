CREATE TABLE currency (
    currency_id SERIAL PRIMARY KEY,
    code VARCHAR(10) NOT NULL UNIQUE,
    description VARCHAR(50)
);

CREATE TABLE transaction_type (
    transaction_type_id SERIAL PRIMARY KEY,
    type VARCHAR(50) NOT NULL UNIQUE,
    description VARCHAR(100)
);

CREATE TABLE market (
    market_id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL UNIQUE,
    description VARCHAR(100)
);

CREATE TABLE financial_data (
    id SERIAL PRIMARY KEY,
    timestamp TIMESTAMP NOT NULL,
    price DECIMAL NOT NULL,
    volume BIGINT NOT NULL,
    currency_id INT NOT NULL,
    transaction_type_id INT NOT NULL,
    market_id INT NOT NULL,
    FOREIGN KEY (currency_id) REFERENCES currency(currency_id),
    FOREIGN KEY (transaction_type_id) REFERENCES transaction_type(transaction_type_id),
    FOREIGN KEY (market_id) REFERENCES market(market_id)
);

CREATE INDEX idx_timestamp ON financial_data (timestamp);
CREATE INDEX idx_currency ON financial_data (currency_id);
CREATE INDEX idx_transaction_type ON financial_data (transaction_type_id);
CREATE INDEX idx_market ON financial_data (market_id);