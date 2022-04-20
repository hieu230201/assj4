create table favorites
(
    id        int auto_increment
        primary key,
    user_id   int      not null,
    video_id  int      not null,
    like_date datetime null,
    viewDate  datetime null
)
    collate = utf8_unicode_ci;

INSERT INTO ass.favorites (id, user_id, video_id, like_date, viewDate) VALUES (1, 4, 2, null, '2021-12-14 17:44:09');
INSERT INTO ass.favorites (id, user_id, video_id, like_date, viewDate) VALUES (2, 4, 5, '2021-12-24 23:30:48', '2021-12-14 17:44:03');
INSERT INTO ass.favorites (id, user_id, video_id, like_date, viewDate) VALUES (5, 7, 2, '2021-12-14 17:44:03', '2021-12-14 17:44:03');
INSERT INTO ass.favorites (id, user_id, video_id, like_date, viewDate) VALUES (10, 4, 3, null, '2021-12-20 18:14:55');
INSERT INTO ass.favorites (id, user_id, video_id, like_date, viewDate) VALUES (11, 4, 4, '2021-12-24 18:51:19', '2021-12-21 22:40:13');
INSERT INTO ass.favorites (id, user_id, video_id, like_date, viewDate) VALUES (12, 4, 6, '2021-12-24 17:15:38', '2021-12-21 22:47:07');
INSERT INTO ass.favorites (id, user_id, video_id, like_date, viewDate) VALUES (13, 4, 8, '2021-12-24 21:48:17', '2021-12-24 21:48:09');
INSERT INTO ass.favorites (id, user_id, video_id, like_date, viewDate) VALUES (14, 4, 10, null, '2021-12-24 23:34:16');
INSERT INTO ass.favorites (id, user_id, video_id, like_date, viewDate) VALUES (15, 21, 6, null, '2021-12-25 00:57:15');
INSERT INTO ass.favorites (id, user_id, video_id, like_date, viewDate) VALUES (16, 21, 5, null, '2021-12-25 01:19:11');
INSERT INTO ass.favorites (id, user_id, video_id, like_date, viewDate) VALUES (17, 21, 8, '2021-12-25 01:36:09', '2021-12-25 01:35:44');
INSERT INTO ass.favorites (id, user_id, video_id, like_date, viewDate) VALUES (18, 21, 2, null, '2021-12-25 10:46:57');
INSERT INTO ass.favorites (id, user_id, video_id, like_date, viewDate) VALUES (19, 22, 2, null, '2021-12-25 10:52:02');
INSERT INTO ass.favorites (id, user_id, video_id, like_date, viewDate) VALUES (20, 22, 6, null, '2021-12-25 10:57:45');
INSERT INTO ass.favorites (id, user_id, video_id, like_date, viewDate) VALUES (21, 4, 11, null, '2021-12-25 15:56:13');
INSERT INTO ass.favorites (id, user_id, video_id, like_date, viewDate) VALUES (22, 23, 2, null, '2021-12-26 23:24:15');
INSERT INTO ass.favorites (id, user_id, video_id, like_date, viewDate) VALUES (23, 23, 3, null, '2021-12-26 23:24:58');
INSERT INTO ass.favorites (id, user_id, video_id, like_date, viewDate) VALUES (24, 23, 14, null, '2021-12-26 23:25:33');
INSERT INTO ass.favorites (id, user_id, video_id, like_date, viewDate) VALUES (25, 23, 8, null, '2021-12-26 23:25:50');
INSERT INTO ass.favorites (id, user_id, video_id, like_date, viewDate) VALUES (26, 23, 4, null, '2021-12-26 23:25:53');
INSERT INTO ass.favorites (id, user_id, video_id, like_date, viewDate) VALUES (27, 4, 20, null, '2022-01-10 21:37:14');
INSERT INTO ass.favorites (id, user_id, video_id, like_date, viewDate) VALUES (28, 4, 12, null, '2022-01-10 21:39:06');
INSERT INTO ass.favorites (id, user_id, video_id, like_date, viewDate) VALUES (29, 4, 13, null, '2022-01-10 21:50:55');
INSERT INTO ass.favorites (id, user_id, video_id, like_date, viewDate) VALUES (30, 7, 13, null, '2022-01-11 23:28:57');
