CREATE DATABASE basicjsp;

use basicjsp;


CREATE table USER(
userID VARCHAR(20) PRIMARY KEY,
userPassword VARCHAR(20),
userEmail VARCHAR(20),
userName VARCHAR(20),
userGender VARCHAR(20),
userPhone VARCHAR(20),
userAge INT,
userAddress VARCHAR(30)
);

CREATE TABLE EVALUATION(
evaluationID int PRIMARY KEY AUTO_INCREMENT, #평가번호
userID VARCHAR(50),
items VARCHAR(50),
size VARCHAR(50),
category VARCHAR(50),
PurchaseDate VARCHAR(50),
day VARCHAR(50),
evaluationTitle VARCHAR(50),
evaluationContent VARCHAR(2048),
totalScore VARCHAR(10),
design VARCHAR(10),
priceScore VARCHAR(10),
itemsScore VARCHAR(10),
likeCount int
);

CREATE TABLE LIKEY (
userID VARCHAR(50),
evaluationID INT,
userIP VARCHAR(50)
);
