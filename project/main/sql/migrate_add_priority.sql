-- Add priority column to favmangas table if it doesn't exist
ALTER TABLE favmangas ADD COLUMN priority INT NOT NULL DEFAULT 0 AFTER user_user_id;
