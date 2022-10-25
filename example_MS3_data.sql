INSERT INTO Location (Name, Address, Map_URL) VALUES ('CUMC 50 Haven Athletic Center', '50 Haven Ave LL3, New York, NY 10032', 'https://goo.gl/maps/XPWfQeZTJAQk35td6' );
INSERT INTO Location (Name, Address, Map_URL) VALUES ('Morningside Dodge Fitness Center', '3030 Broadway, New York, NY 10027', 'https://goo.gl/maps/SAQEFMUKrDQksufXA' );
INSERT INTO Location (Name, Address, Map_URL) VALUES ('NYBC Manhattan Badminton Club', '351 W 18th St, New York, NY 10011', 'https://goo.gl/maps/6FUdW2Wwwaa7FD7E8' );

INSERT INTO Post (Title, User_ID, Time, Label, Content) VALUES ('Welcome to the blog!', 'Yiru Gong', '2022-10-13 14:34:25', 'Administrative', "This is our first post. Enjoy the thread!");
INSERT INTO Post (Title, User_ID, Time, Location_ID, Content) VALUES ('Friday night badminton?', 'Keviant Kong', '2022-10-14 07:15:22', 1, "I'm going to play this evening. Who's coming?");
INSERT INTO Post (Title, User_ID, Time, Location_ID, Label, Content) VALUES ('Found a green water bottle', 'Zhoulun Huang', '2022-10-14 22:03:49', 1, 'Lost and Found', "Did somebody leave their water bottle by the bench? Reach out if it's yours!");
INSERT INTO Post (Title, User_ID, Time, Location_ID, Label, Content) VALUES ('Badminton at Blue Gym', 'Zheyan Liu', '2022-10-16 11:57:34', 2, 'Call for Partners', "I'm thinking of playing on Monday over at the main campus. Let's team up if you're thinking of going too.");

INSERT INTO Response (Post_ID, User_ID, Time, Content) VALUES (1, 'Brian Lee', '2022-10-13 15:41:34', "Great work! I'm excited about this :)");
INSERT INTO Response (Post_ID, User_ID, Time, Content) VALUES (1, 'Zhoulun Huang', '2022-10-13 21:48:12', "Finally an official thread for announcements");
INSERT INTO Response (Post_ID, User_ID, Time, Content) VALUES (2, 'Zhoulun Huang', '2022-10-14 11:13:18', "I'll see you there");
INSERT INTO Response (Post_ID, User_ID, Time, Content) VALUES (3, 'Yiru Gong', '2022-10-15 09:26:20', "I think it might be Zheyan's");
INSERT INTO Response (Post_ID, User_ID, Time, Content) VALUES (3, 'Zheyan Liu', '2022-10-15 13:28:45', "No it's not I have a pink bottle");
INSERT INTO Response (Post_ID, User_ID, Time, Content) VALUES (4, 'Brian Lee', '2022-10-16 21:35:14', "I'll be on main campus too. Want to grab dinner?");

INSERT INTO Post_Thumbs (Post_ID, User_ID) VALUES (1, 'Brian Lee');
INSERT INTO Post_Thumbs (Post_ID, User_ID) VALUES (1, 'Keviant Kong');
INSERT INTO Post_Thumbs (Post_ID, User_ID) VALUES (1, 'Zheyan Liu');
INSERT INTO Post_Thumbs (Post_ID, User_ID) VALUES (1, 'Zhuolun Huang');
INSERT INTO Post_Thumbs (Post_ID, User_ID) VALUES (2, 'Zhuolun Huang');
INSERT INTO Post_Thumbs (Post_ID, User_ID) VALUES (2, 'Brian Lee');
INSERT INTO Post_Thumbs (Post_ID, User_ID) VALUES (2, 'Zheyan Liu');
INSERT INTO Post_Thumbs (Post_ID, User_ID) VALUES (3, 'Yiru Gong');
INSERT INTO Post_Thumbs (Post_ID, User_ID) VALUES (4, 'Brian Lee');
INSERT INTO Post_Thumbs (Post_ID, User_ID) VALUES (4, 'Keviant Kong');

INSERT INTO Response_Thumbs (Response_ID, User_ID) VALUES (1, 'Zheyan Liu');
INSERT INTO Response_Thumbs (Response_ID, User_ID) VALUES (2, 'Keviant Kong');
INSERT INTO Response_Thumbs (Response_ID, User_ID) VALUES (2, 'Yiru Gong');
INSERT INTO Response_Thumbs (Response_ID, User_ID) VALUES (2, 'Zhuolun Huang');
INSERT INTO Response_Thumbs (Response_ID, User_ID) VALUES (3, 'Zhuolun Huang');
INSERT INTO Response_Thumbs (Response_ID, User_ID) VALUES (3, 'Brian Lee');
INSERT INTO Response_Thumbs (Response_ID, User_ID) VALUES (5, 'Keviant Kong');
INSERT INTO Response_Thumbs (Response_ID, User_ID) VALUES (5, 'Zhuolun Huang');
INSERT INTO Response_Thumbs (Response_ID, User_ID) VALUES (5, 'Yiru Gong');
INSERT INTO Response_Thumbs (Response_ID, User_ID) VALUES (5, 'Brian Lee');
INSERT INTO Response_Thumbs (Response_ID, User_ID) VALUES (6, 'Zheyan Liu');

