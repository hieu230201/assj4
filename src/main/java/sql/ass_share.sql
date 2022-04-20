create table share
(
    id         int auto_increment
        primary key,
    user_id    int          not null,
    video_id   int          not null,
    email      varchar(255) not null,
    share_date date         not null
)
    collate = utf8_unicode_ci;

INSERT INTO ass.share (id, user_id, video_id, email, share_date) VALUES (1, 4, 2, 'hieuop130316@gmail.com', '2021-12-21');
INSERT INTO ass.share (id, user_id, video_id, email, share_date) VALUES (2, 4, 4, 'ngbaongoc3323@gmail.com', '2021-12-21');
INSERT INTO ass.share (id, user_id, video_id, email, share_date) VALUES (3, 4, 2, 'hieuntph15836@fpt.edu.vn', '2021-12-24');
INSERT INTO ass.share (id, user_id, video_id, email, share_date) VALUES (4, 4, 2, 'null', '2022-03-25');
