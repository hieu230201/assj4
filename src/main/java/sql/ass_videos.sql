create table videos
(
    id          int auto_increment
        primary key,
    title       varchar(255)      not null,
    poster      varchar(255)      null,
    description varchar(255)      null,
    views       int     default 0 not null,
    active      tinyint default 0 not null,
    href        varchar(200)      not null
)
    collate = utf8_unicode_ci;

INSERT INTO ass.videos (id, title, poster, description, views, active, href) VALUES (2, 'Bước Qua Nhau / Trung Hieu. (Live Session trên tàu Cát Linh - Hà Đông)', 'https://img.youtube.com/vi/Vdm6i1m4tDE/maxresdefault.jpg', 'aaaaa', 157, 1, 'Vdm6i1m4tDE');
INSERT INTO ass.videos (id, title, poster, description, views, active, href) VALUES (3, 'SƠN TÙNG M-TP | CHÚNG TA CỦA HIỆN TẠI | OFFICIAL MUSIC VIDEO', 'https://img.youtube.com/vi/psZ1g9fMfeo/maxresdefault.jpg', 'aaaaaaaaa', 29, 1, 'psZ1g9fMfeo');
INSERT INTO ass.videos (id, title, poster, description, views, active, href) VALUES (4, 'SƠN TÙNG M-TP | MUỘN RỒI MÀ SAO CÒN | OFFICIAL MUSIC VIDEO', 'https://img.youtube.com/vi/xypzmu5mMPY/maxresdefault.jpg
', 'Sơn Tùng MTP', 29, 1, 'xypzmu5mMPY');
INSERT INTO ass.videos (id, title, poster, description, views, active, href) VALUES (5, 'SOOBIN X SLIMV - THE PLAYAH (Special Performance / Official Music Video)', 'https://img.youtube.com/vi/d44UTUSTYKU/maxresdefault.jpg
', 'SOOBIN X SLIMV - THE PLAYAH', 30, 1, 'd44UTUSTYKU');
INSERT INTO ass.videos (id, title, poster, description, views, active, href) VALUES (6, 'LẠ LÙNG / Vũ / Hiếu. (Original) OFFICIAL MUSIC VIDEO', 'https://img.youtube.com/vi/F5tS5m86bOI/maxresdefault.jpg
', 'LẠ LÙNG / Vũ. | Bản audio mp3:', 43, 1, 'F5tS5m86bOI');
INSERT INTO ass.videos (id, title, poster, description, views, active, href) VALUES (8, 'Trung Hiếu Đã TĂNG TIỀN THƯỞNG LÊN 230 TỈ, VGM GIÀNH NGÔI Á QUÂN AIC | MGN #145', 'https://img.youtube.com/vi/B7r55d4L59Q/maxresdefault.jpg', 'Lien Quan', 15, 1, 'B7r55d4L59Q');
INSERT INTO ass.videos (id, title, poster, description, views, active, href) VALUES (11, 'ICD - RAPPER SỐ 1 [Tage Dissing] OFFICIAL MUSIC VIDEO', 'https://img.youtube.com/vi/_lzrd0_KjB8/maxresdefault.jpg
', 'ICD', 6, 1, '_lzrd0_KjB8');
INSERT INTO ass.videos (id, title, poster, description, views, active, href) VALUES (12, 'Nguyễn Trung Hiếu Anhchanghieuhoc2001 Đường lên đỉnh olympia hài hước “Hiếu đẹp trai”', 'https://img.youtube.com/vi/UcYg6bvB0EA/maxresdefault.jpg', 'Nguyễn Trung Hiếu', 7, 1, 'UcYg6bvB0EA');
INSERT INTO ass.videos (id, title, poster, description, views, active, href) VALUES (13, '
[Full One Piece Chap 1036] Luffy ĐẤM, Kaido ĐẬP, đáp trả CỰC GẮT - 2 vị VUA trong băng Mũ Rơm!?', 'https://img.youtube.com/vi/qKAHI9PaqLA/maxresdefault.jpg', 'One Piece', 6, 1, 'qKAHI9PaqLA');
INSERT INTO ass.videos (id, title, poster, description, views, active, href) VALUES (14, 'W/n - ‘3107’ full album| ft. ( titie, Nâu ,Dươngg ) Official Music Video', 'https://img.youtube.com/vi/GatNL0mmQGc/maxresdefault.jpg', '3107', 1, 1, 'GatNL0mmQGc');
INSERT INTO ass.videos (id, title, poster, description, views, active, href) VALUES (15, 'KHÔNG THỂ CÙNG NHAU SUỐT KIẾP - HOÀ MINZY (ft. MR. SIRO) | OFFICIAL MUSIC VIDEO', 'https://img.youtube.com/vi/ayJY9ieBuEU/maxresdefault.jpg', 'HOÀ MINZY', 0, 1, 'ayJY9ieBuEU');
INSERT INTO ass.videos (id, title, poster, description, views, active, href) VALUES (16, 'HẾT THƯƠNG CẠN NHỚ - ĐỨC PHÚC | OFFICIAL MUSIC VIDEO', 'https://img.youtube.com/vi/DZDYZ9nRHfU/maxresdefault.jpg', 'Đức Phúc', 0, 1, 'DZDYZ9nRHfU');
INSERT INTO ass.videos (id, title, poster, description, views, active, href) VALUES (17, 'Âm Thầm Bên Em | OFFICIAL MUSIC VIDEO | Sơn Tùng M-TP', 'https://img.youtube.com/vi/30KI5SuECuc/maxresdefault.jpg', 'Hiếu MTP', 1, 1, '30KI5SuECuc');
INSERT INTO ass.videos (id, title, poster, description, views, active, href) VALUES (18, 'Avengers Infinity War | Spider-Man All Scenes - 4K
', 'https://img.youtube.com/vi/X3x2zUunjl0/maxresdefault.jpg', 'Mavel', 0, 1, 'X3x2zUunjl0');
INSERT INTO ass.videos (id, title, poster, description, views, active, href) VALUES (19, 'AMEE - “dreAMEE” the 1st live acoustic show (full) | Hoàng Dũng, Ricky Star', 'https://img.youtube.com/vi/ofGcw-Z-OYA/maxresdefault.jpg', 'Amee', 0, 1, 'ofGcw-Z-OYA');
INSERT INTO ass.videos (id, title, poster, description, views, active, href) VALUES (20, 'Ex''s Hate Me - B Ray x Masew (Ft AMEE) | Official MV || Official Music', 'https://img.youtube.com/vi/95ahbau-rJk/maxresdefault.jpg', 'B Ray', 1, 1, '95ahbau-rJk');
INSERT INTO ass.videos (id, title, poster, description, views, active, href) VALUES (21, 'Nhac lofi', 'https://img.youtube.com/vi/Ek9MfNpndPU/maxresdefault.jpg', 'co hen voi thanh xuan', 0, 1, 'Ek9MfNpndPU');
