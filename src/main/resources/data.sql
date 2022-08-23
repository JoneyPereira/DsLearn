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

INSERT INTO tb_offer (edition, start_Moment, end_Moment, course_id) VALUES ('1.0', TIMESTAMP WITH TIME ZONE '2021-08-13T20:00:00Z', TIMESTAMP WITH TIME ZONE '2022-08-13T20:00:00Z', 1);
INSERT INTO tb_offer (edition, start_Moment, end_Moment, course_id) VALUES ('1.0', TIMESTAMP WITH TIME ZONE '2021-08-13T20:00:00Z', TIMESTAMP WITH TIME ZONE '2022-08-13T20:00:00Z', 2);
INSERT INTO tb_offer (edition, start_Moment, end_Moment, course_id) VALUES ('1.0', TIMESTAMP WITH TIME ZONE '2021-08-13T20:00:00Z', TIMESTAMP WITH TIME ZONE '2022-08-13T20:00:00Z', 3);
INSERT INTO tb_offer (edition, start_Moment, end_Moment, course_id) VALUES ('1.0', TIMESTAMP WITH TIME ZONE '2021-08-13T20:00:00Z', TIMESTAMP WITH TIME ZONE '2022-08-13T20:00:00Z', 4);

INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Trilha java', 'Trilha principal', 1, 'https://www.publicdomainpictures.net/pictures/190000/nahled/travel-background-1469438328pLI.jpg', 1, 1);
INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Forum', 'Tire suas duvidas', 2, 'https://www.publicdomainpictures.net/pictures/190000/nahled/travel-background-1469438328pLI.jpg', 2, 1);
INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Live', 'Live do curso', 3, 'https://www.publicdomainpictures.net/pictures/190000/nahled/travel-background-1469438328pLI.jpg', 0, 1);

INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Capítulo 1', 'Neste vamos entender o principio de tudo', 1, 'https://www.publicdomainpictures.net/pictures/190000/nahled/travel-background-1469438328pLI.jpg', 1, null);
INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Capítulo 2', 'Neste vamos entender mais um pouco', 2, 'https://www.publicdomainpictures.net/pictures/190000/nahled/travel-background-1469438328pLI.jpg', 1, 1);
INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Capítulo 3', 'Neste vamos entender mais um pouco', 3, 'https://www.publicdomainpictures.net/pictures/190000/nahled/travel-background-1469438328pLI.jpg', 1, 2);

INSERT INTO tb_enrollment (user_id, offer_id, enroll_Moment, refund_Moment, available, only_Update) VALUES (1, 1, TIMESTAMP WITH TIME ZONE '2022-08-20T20:00:00Z', null, true, false);
INSERT INTO tb_enrollment (user_id, offer_id, enroll_Moment, refund_Moment, available, only_Update) VALUES (2, 1, TIMESTAMP WITH TIME ZONE '2022-08-20T20:00:00Z', null, true, false);

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 1 - primeiro capitulo', 1, 1);
INSERT INTO tb_content (text_Content, video_Uri, id) VALUES ('Material de apoio do capitulo', 'https://youtu.be/D4frmIHAxEY', 1);

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 2 - primeiro capitulo', 2, 1);
INSERT INTO tb_content (text_Content, video_Uri, id) VALUES ('Material de apoio do capitulo', 'https://youtu.be/D4frmIHAxEY', 2);

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 3 - primeiro capitulo', 3, 1);
INSERT INTO tb_content (text_Content, video_Uri, id) VALUES ('Material de apoio do capitulo', 'https://youtu.be/D4frmIHAxEY', 3);

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Tarefa do capitulo 3', 4, 1);
INSERT INTO tb_task (id, description, question_Count, approval_Count, weight, due_Date) VALUES (4, 'Fazer a implementação do capitulo', 5, 4, 1.0, TIMESTAMP WITH TIME ZONE '2021-08-25T20:00:00Z');

INSERT INTO tb_lessons_done (lesson_id, user_id, offer_id) VALUES (1, 1, 1);
INSERT INTO tb_lessons_done (lesson_id, user_id, offer_id) VALUES (2, 1, 1);