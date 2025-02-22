SELECT 'CREATE USER n8n WITH ENCRYPTED PASSWORD ''Qq13azxc'''
WHERE NOT EXISTS (SELECT FROM pg_catalog.pg_user WHERE usename = 'n8n')\gexec

ALTER USER n8n WITH PASSWORD 'Qq13azxc';

SELECT 'CREATE DATABASE n8n WITH OWNER n8n ENCODING UTF8 CONNECTION LIMIT -1' 
WHERE NOT EXISTS (SELECT FROM pg_database WHERE datname = 'n8n')\gexec
GRANT ALL ON DATABASE n8n TO n8n;
