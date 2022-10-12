CREATE TABLE `Post` (
  `Post_ID` int,
  `Title` varchar(50) NOT NULL,
  `Author` varchar(30) NOT NULL,
  `Time` datetime NOT NULL,
  `Location_ID` int,
  `Content` longtext NOT NULL,
  `Thumbs` int NOT NULL,
  PRIMARY KEY (`Post_ID`)
);

CREATE TABLE `Response` (
  `Response_ID` int,
  `Post_ID` int,
  `Content` longtext NOT NULL,
  PRIMARY KEY (`Response_ID`, `Post_ID`),
  FOREIGN KEY (`Post_ID`) REFERENCES `Post`(`Post_ID`)
);

CREATE TABLE `Location` (
  `Location_ID` int,
  `Name` varchar(30) NOT NULL,
  `Address` longtext NOT NULL,
  `Map_URL` varchar(30) NOT NULL,
  PRIMARY KEY (`Location_ID`)
);