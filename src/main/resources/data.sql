INSERT INTO authorities (name, endpoint) values ('User_Write', 'POST:/api/user/');
INSERT INTO authorities (name, endpoint) values ('User_Read', 'GET:/api/user/');
INSERT INTO authorities (name, endpoint) values ('UserById_Read', 'GET:/api/user/{id}/');
INSERT INTO authorities (name, endpoint) values ('User_Delete', 'DELETE:/api/user/{id}/');
INSERT INTO authorities (name, endpoint) values ('User_Update', 'PUT:/api/user/{id}/');
INSERT INTO authorities (name, endpoint) values ('User_PartialUpdate', 'PATCH:/api/user/{id}/');

INSERT INTO authorities (name, endpoint) values ('Role_Write', 'POST:/api/role/');
INSERT INTO authorities (name, endpoint) values ('Role_Read', 'GET:/api/role/');
INSERT INTO authorities (name, endpoint) values ('RoleById_Read', 'GET:/api/role/{id}/');
INSERT INTO authorities (name, endpoint) values ('Role_Delete', 'DELETE:/api/role/{id}/');
INSERT INTO authorities (name, endpoint) values ('Role_Update', 'PUT:/api/role/{id}/');
INSERT INTO authorities (name, endpoint) values ('Role_PartialUpdate', 'PATCH:/api/role/');

INSERT INTO authorities (name, endpoint) values ('Authority_Write', 'POST:/api/authority/');
INSERT INTO authorities (name, endpoint) values ('Authority_Read', 'GET:/api/authority/');
INSERT INTO authorities (name, endpoint) values ('AuthorityById_Read', 'GET:/api/authority/{id}/');
INSERT INTO authorities (name, endpoint) values ('Authority_Delete', 'DELETE:/api/authority/{id}/');
INSERT INTO authorities (name, endpoint) values ('Authority_Update', 'PUT:/api/authority/{id}/');
INSERT INTO authorities (name, endpoint) values ('Authority_PartialUpdate', 'PATCH:/api/authority/{id}/');
INSERT INTO authorities (name, endpoint) values ('AuthorityByUser_Read', 'GET:/api/authority/byuser/{id}/');

INSERT INTO authorities (name, endpoint) values ('Request_write', 'POST:/api/request/');
INSERT INTO authorities (name, endpoint) values ('Request_read', 'GET:/api/request/');
INSERT INTO authorities (name, endpoint) values ('RequestById_read', 'GET:/api/request/{id}/');
INSERT INTO authorities (name, endpoint) values ('Request_delete', 'DELETE:/api/request/{id}/');
INSERT INTO authorities (name, endpoint) values ('Request_update', 'PUT:/api/request/{id}/');
INSERT INTO authorities (name, endpoint) values ('Request_partialUpdate', 'PATCH:/api/request/{id}/');

INSERT INTO authorities (name, endpoint) values ('AnteProjectPdf_write', 'POST:/api/AnteProjectPdf/write/');
INSERT INTO authorities (name, endpoint) values ('AnteProjectPdf_download', 'GET:/api/anteProjectPdf/{id}/');
INSERT INTO authorities (name, endpoint) values ('AnteProjectPdf_upload', 'POST:/api/anteProjectPdf/upload/');

INSERT INTO authorities (name, endpoint) values ('RequestPdf_write', 'POST:/api/requestPdf/write/');
INSERT INTO authorities (name, endpoint) values ('RequestPdf_download', 'GET:/api/requestPdf/{id}/');
INSERT INTO authorities (name, endpoint) values ('RequestPdf_upload', 'POST:/api/requestPdf/RequestPdf/upload/');






INSERT INTO roles (name) values ('ROLE_ADMIN');

INSERT INTO roles_authorities (role_id, authority_id) (select (SELECT id FROM roles where name = 'ROLE_ADMIN')  AS role_id, e.id from authorities e );

INSERT INTO users (name, username, password, looked, expired, enabled) VALUES ('Admin', 'admin', '$2a$10$TwROhi2MZsOTt8igkE7Yyec0WfjK7NlgdX9apOu0b6cY4SxzHLvCq', false, false, true);

INSERT INTO users_roles (user_id, role_id) VALUES ((SELECT id FROM users where username = 'admin'), (SELECT id FROM roles where name = 'ROLE_ADMIN'));


-- {
--         "name": "ROLE_STUDENT",
--         "enabled": true,
--         "authorities": [
--             {"id": 20},
--             {"id": 21},
--             {"id": 22},
--             {"id": 23},
--             {"id": 25},
--             {"id": 26},
--             {"id": 27},
--             {"id": 28},
--             {"id": 29}
--         ]
-- }


-- {
--         "name": "ROLE_TEACHER",
--         "enabled": true,
--         "authorities": [
--             {"id": 21},
--             {"id": 22},
--             {"id": 25},
--             {"id": 26},
--             {"id": 28}
--         ]
-- }



-- {
--         "name": "ROLE_COORDINATOR",
--         "enabled": true,
--         "authorities": [
--             {"id": 21},
--             {"id": 22},
--             {"id": 26},
--             {"id": 28}
--         ]
-- }