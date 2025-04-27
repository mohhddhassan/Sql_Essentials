-- 1. GRANT (Grant privileges to a user)
GRANT SELECT, INSERT, UPDATE ON Employees TO user_name;

-- 2. REVOKE (Remove privileges from a user)
REVOKE SELECT, UPDATE ON Employees FROM user_name;
