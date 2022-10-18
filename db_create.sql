CREATE TABLE `Post` (
  `Post_ID` int AUTO_INCREMENT,
  `Title` varchar(50) NOT NULL,
  `Author` varchar(30) NOT NULL,
  `Time` datetime NOT NULL,
  `Location_ID` int,
  `Label` varchar(30),
  `Content` longtext NOT NULL,
  `Thumbs` int NOT NULL,
  PRIMARY KEY (`Post_ID`)
);


CREATE TABLE `Response` (
  `Response_ID` int AUTO_INCREMENT,
  `Post_ID` int,
  `Author` varchar(50) NOT NULL,
  `Time` datetime NOT NULL,
  `Content` longtext NOT NULL,
  `Thumbs` int NOT NULL,
  PRIMARY KEY (`Response_ID`),
  FOREIGN KEY (`Post_ID`) REFERENCES `Post`(`Post_ID`) ON DELETE SET NULL
);

CREATE TABLE `Location` (
  `Location_ID` int  AUTO_INCREMENT,
  `Name` varchar(50) NOT NULL,
  `Address` longtext NOT NULL,
  `Map_URL` longtext NOT NULL,
  PRIMARY KEY (`Location_ID`)
);

ALTER TABLE Post
ADD FOREIGN KEY (`Location_ID`) REFERENCES `Location`(`Location_ID`) ON DELETE SET NULL;