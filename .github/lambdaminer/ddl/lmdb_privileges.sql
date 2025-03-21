-- SPDX-FileCopyrightText: 2024 Helmholtz Centre for Environmental Research GmbH - UFZ
--
-- SPDX-License-Identifier: LicenseRef-UFZ-GPL-3.0-or-later

--
-- Roles
--

-- Read-Write role
CREATE ROLE read_write;
GRANT CONNECT ON DATABASE lmdb TO read_write;
GRANT USAGE ON SCHEMA public TO read_write;
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA public TO read_write;

-- Read-only role
CREATE ROLE read_only;
GRANT CONNECT ON DATABASE lmdb TO read_only;
GRANT USAGE ON SCHEMA public TO read_only;
GRANT SELECT ON ALL TABLES IN SCHEMA public TO read_only;

--
-- Users
--

-- Administrator
GRANT ALL PRIVILEGES ON DATABASE lmdb TO lmdb_adm;

-- Read-Write user
CREATE USER lmdb_rw WITH ENCRYPTED PASSWORD 'SSeTjhTE42ba9kgjDrUY';
GRANT read_write TO lmdb_rw;

-- Read-Only user
CREATE USER lmdb_ro WITH ENCRYPTED PASSWORD 'z7zDjfZbTQq8QU6dTHGL';
GRANT read_only TO lmdb_ro;
