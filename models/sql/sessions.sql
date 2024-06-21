CREATE TABLE sessions (
    id SERIAL PRIMARY KEY,
    user_id INT UNIQUE ON DELETE CASCADE,
    token_hash TEXT UNIQUE NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(id)
        ON DELETE CASCADE
);