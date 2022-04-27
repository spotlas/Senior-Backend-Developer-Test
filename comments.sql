create table comments
(
    id                serial
        constraint comments_pk
            primary key,
    text              text not null,
    parent_comment_id integer
        constraint comments_comments_id_fk
            references comments
);

INSERT INTO comments (id, text, parent_comment_id) VALUES (1, 'Hello, how are you?', null);
INSERT INTO comments (id, text, parent_comment_id) VALUES (2, 'Interesting!', null);
INSERT INTO comments (id, text, parent_comment_id) VALUES (3, 'Good, thanks', 1);
INSERT INTO comments (id, text, parent_comment_id) VALUES (4, 'Great', 3);
INSERT INTO comments (id, text, parent_comment_id) VALUES (5, 'Do you have any plans tomorrow?', 3);
INSERT INTO comments (id, text, parent_comment_id) VALUES (6, 'No, I''m free', 5);
INSERT INTO comments (id, text, parent_comment_id) VALUES (7, 'Coming', null);
INSERT INTO comments (id, text, parent_comment_id) VALUES (8, 'Me too', 7);
