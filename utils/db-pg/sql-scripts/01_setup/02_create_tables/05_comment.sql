DROP DOMAIN IF EXISTS domain_comment_email CASCADE;
CREATE DOMAIN domain_comment_email TEXT CONSTRAINT constraint_comment_email NOT NULL CHECK (
    VALUE ~ '^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$'
);
DROP TABLE IF EXISTS comment CASCADE;
CREATE TABLE IF NOT EXISTS comment (
    id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name TEXT NOT NULL,
    -- email domain_comment_email,
    email TEXT,
    message TEXT NOT NULL,
    sys_period TSTZRANGE NOT NULL DEFAULT TSTZRANGE(CURRENT_TIMESTAMP(0), null)
);
DROP TABLE IF EXISTS comment_history CASCADE;
CREATE TABLE comment_history (LIKE comment);
CREATE INDEX IF NOT EXISTS idx_comment_name ON comment(name);
CREATE INDEX IF NOT EXISTS idx_comment_email ON comment(email);
CREATE INDEX IF NOT EXISTS idx_comment_sys_period ON comment(sys_period);