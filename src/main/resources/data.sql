INSERT INTO tb_user (name, email, password) VALUES ('Alex', 'alex@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Maria', 'maria@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Bob', 'bob@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');

INSERT INTO tb_role (authority) VALUES ('ROLE_STUDENT');
INSERT INTO tb_role (authority) VALUES ('ROLE_INSTRUCTOR');
INSERT INTO tb_role (authority) VALUES ('ROLE_ADMIN');

INSERT INTO tb_user_role (user_id, role_id) VALUES (1, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 3);

INSERT INTO tb_course (name, img_Uri, img_Gray_Uri) VALUES ('Bootcamp Spring', 'https://www.publicdomainpictures.net/pictures/190000/nahled/travel-background-1469438328pLI.jpg', 'https://www.publicdomainpictures.net/pictures/190000/nahled/travel-background-1469438328pLI.jpg');
INSERT INTO tb_course (name, img_Uri, img_Gray_Uri) VALUES ('Bootcamp HTML', 'https://www.publicdomainpictures.net/pictures/190000/nahled/travel-background-1469438328pLI.jpg', 'https://www.publicdomainpictures.net/pictures/190000/nahled/travel-background-1469438328pLI.jpg');
INSERT INTO tb_course (name, img_Uri, img_Gray_Uri) VALUES ('Bootcamp Java', 'https://www.publicdomainpictures.net/pictures/190000/nahled/travel-background-1469438328pLI.jpg', 'https://www.publicdomainpictures.net/pictures/190000/nahled/travel-background-1469438328pLI.jpg');
INSERT INTO tb_course (name, img_Uri, img_Gray_Uri) VALUES ('Bootcamp CSS', 'https://www.publicdomainpictures.net/pictures/190000/nahled/travel-background-1469438328pLI.jpg', 'https://www.publicdomainpictures.net/pictures/190000/nahled/travel-background-1469438328pLI.jpg');