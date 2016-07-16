ALTER TABLE sys_user ADD COLUMN sex CHAR(1) COMMENT "性别";

INSERT INTO sys_role (id,role_name) VALUE (2,"appUser");