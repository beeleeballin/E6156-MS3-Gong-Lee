CREATE TABLE `Post` (
  `Post_ID` int AUTO_INCREMENT,
  `Title` varchar(50) NOT NULL,
  `User_ID` varchar(30) NOT NULL,
  `Time` datetime NOT NULL,
  `Location_ID` int,
  `Label` varchar(30),
  `Content` longtext NOT NULL,
  `Edited` boolean default 0,
  PRIMARY KEY (`Post_ID`)
);

CREATE TABLE `Response` (
  `Response_ID` int AUTO_INCREMENT,
  `Post_ID` int,
  `User_ID` varchar(30) NOT NULL,
  `Time` datetime NOT NULL,
  `Content` longtext NOT NULL,
  `Edited` boolean default 0,
  PRIMARY KEY (`Response_ID`),
  FOREIGN KEY (`Post_ID`) REFERENCES `Post`(`Post_ID`) ON DELETE SET NULL
);

CREATE TABLE `Location` (
  `Location_ID` int  AUTO_INCREMENT,
  `Name` varchar(50) UNIQUE NOT NULL,
  `Address` longtext NOT NULL,
  `Map_URL` longtext NOT NULL,
  PRIMARY KEY (`Location_ID`)
);

CREATE TABLE `Post_Thumbs` (
  `PT_ID` int AUTO_INCREMENT,
  `Post_ID` int,
  `User_ID` varchar(50) NOT NULL,
  PRIMARY KEY (`PT_ID`),
  UNIQUE (Post_ID, USER_ID),
  FOREIGN KEY (Post_ID) REFERENCES `Post`(`Post_ID`) ON DELETE SET NULL
);

CREATE TABLE `Response_Thumbs` (
  `RT_ID` int AUTO_INCREMENT,
  `Response_ID` int,
  `User_ID` varchar(50) NOT NULL,
  PRIMARY KEY (`RT_ID`),
  UNIQUE (Response_ID, USER_ID),
  FOREIGN KEY (Response_ID) REFERENCES `Response`(`Response_ID`) ON DELETE SET NULL
);

ALTER TABLE Post
ADD FOREIGN KEY (`Location_ID`) REFERENCES `Location`(`Location_ID`) ON DELETE SET NULL;

CREATE DATABASE ms3;
USE ms3;

ALTER TABLE Post
DROP CONSTRAINT post_ibfk_1;
ALTER TABLE Response_Thumbs
DROP CONSTRAINT Response_Thumbs_ibfk_1;
DROP TABLE Location;
DROP TABLE Response;
ALTER TABLE Post_Thumbs
DROP CONSTRAINT Post_Thumbs_ibfk_1;
DROP TABLE Post;
DROP TABLE Post_Thumbs;
DROP TABLE Response_Thumbs;