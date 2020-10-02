  drop table IF EXISTS PlayerPerformance;
  drop table IF EXISTS TeamPerformance;
  drop table IF EXISTS Match; 
  drop table IF EXISTS teamroster;
  drop table IF EXISTS player;
  drop table IF EXISTS Team;
  drop table IF EXISTS Manager;
  drop table IF EXISTS Coach;
  drop table IF EXISTS Referee;
  drop table IF EXISTS Stadium;
  

  

 
 CREATE TABLE player 
(
  ID INT PRIMARY KEY,
  CurrentTeamID INT,
  FirstName VARCHAR(20),
  LastName VARCHAR(20),
  Nationality VARCHAR(20),
  Role VARCHAR(20),
  Email VARCHAR(40),
  Birthdate DATE
 );
 
 CREATE TABLE teamroster
 (
	TeamID INT,
	PlayerID INT,
	StartingContractDate DATE,
	EndingContractDate DATE,
	ShirtNumber INT,
	Status VARCHAR(20),
	PRIMARY KEY (TeamID, PlayerID)
);
	
CREATE TABLE PlayerPerformance(
  PlayerID INT,
  MatchID INT,
  NumberGoal INT,
  NumberAssist INT,
  YellowCard INT,
  RedCard INT,
  MinutesPlayed INT,
  PRIMARY KEY (PlayerID, MatchID));

  CREATE TABLE Manager (
    ManagerID int NOT NULL PRIMARY KEY,
    LastName varchar(50) NOT NULL,
    FirstName varchar(50),
    Email varchar(50)
);

CREATE TABLE Team (
TeamID int NOT NULL PRIMARY KEY,
CoachID int,
ManagerID int,
StadiumID int,
Name VARCHAR(50)
);

CREATE TABLE Coach (
CoachID int NOT NULL PRIMARY KEY,
FirstName varchar(50) NOT NULL,
LastName varchar(50),
Email varchar(50)
);

CREATE TABLE Stadium(
  StadiumID INT,
  StadiumName VARCHAR(30),
  Capacity INT,
  StadiumAddress VARCHAR(50),
  City VARCHAR(20),
  PRIMARY KEY (StadiumID));

  CREATE TABLE Match (
  MatchID INT primary key identity,
  StadiumID INT,
  MatchDate DATE,
  MatchHour TIME,
  HomeTeamID INT,
  AwayTeamID INT,
  Referee INT);

CREATE TABLE Referee (
  RefereeID INT primary key identity,
  FirstName VARCHAR(15),
  LastName VARCHAR(15),
  Email VARCHAR(32));

CREATE TABLE TeamPerformance (
  TeamID INT,
  MatchID INT,
  NumberKick INT,
  NumberGoal INT,
  Result CHAR,
  Possession INT
  PRIMARY KEY (TeamID, MatchID)
  );
INSERT INTO player (ID, CurrentTeamID, FirstName, LastName, Nationality, Role, Email, Birthdate)
VALUES (1, 2, 'Kun', 'Aguero', 'Argentina', 'Centre Forward', 'kun.aguero@gmail.com', '1988-06-02');
INSERT INTO teamroster (TeamID, PlayerID, StartingContractDate, EndingContractDate, ShirtNumber, Status)
VALUES (2, 1, '2011-07-01', null, 10, 'healthy');

INSERT INTO player (ID, CurrentTeamID, FirstName, LastName, Nationality, Role, Email, Birthdate)
VALUES (2, 13, 'Teemu', 'Pukki', 'Finland', 'Centre Forward', 'teemu.pukki@gmail.com', '1990-03-29');
INSERT INTO teamroster (TeamID, PlayerID, StartingContractDate, EndingContractDate, ShirtNumber, Status)
VALUES (13, 2, '2018-07-01', null, 22, 'healthy');

INSERT INTO player (ID, CurrentTeamID, FirstName, LastName, Nationality, Role, Email, Birthdate)
VALUES (3, 2,'Raheem', 'Sterling', 'England', 'Right Winger', 'raheem.sterling@gmail.com', '1994-12-08');
INSERT INTO teamroster (TeamID, PlayerID, StartingContractDate, EndingContractDate, ShirtNumber, Status)
VALUES (2, 3,'2015-07-01', null, 7, 'injured');

INSERT INTO player (ID, CurrentTeamID, FirstName, LastName, Nationality, Role, Email, Birthdate)
VALUES (4, 6, 'Tammy', 'Abraham', 'England', 'Centre Forward', 'tammy.abraham@gmail.com', '1997-10-02');
INSERT INTO teamroster (TeamID, PlayerID, StartingContractDate, EndingContractDate, ShirtNumber, Status)
VALUES (6, 4,'2015-07-01', null, 9, 'healthy');


INSERT INTO player (ID, CurrentTeamID, FirstName, LastName, Nationality, Role, Email, Birthdate)
VALUES (5, 14, 'Ashley', 'Barnes', 'England', 'Centre Forward', 'ashley.barnes@gmail.com', '1989-10-30');
INSERT INTO teamroster (TeamID, PlayerID, StartingContractDate, EndingContractDate, ShirtNumber, Status)
VALUES (14, 5,'2014-01-01', null, 10, 'healthy');

INSERT INTO player (ID, CurrentTeamID, FirstName, LastName, Nationality, Role, Email, Birthdate)
VALUES (6, 7, 'Pierre-Emerick', 'Aubameyang', ' Gabon', 'Centre Forward', 'pierre-emerick.aubameyang@gmail.com', '1989-06-18');
INSERT INTO teamroster (TeamID, PlayerID, StartingContractDate, EndingContractDate, ShirtNumber, Status)
VALUES (7, 6,'2018-01-01', null, 14, 'injured');

INSERT INTO player (ID, CurrentTeamID, FirstName, LastName, Nationality, Role, Email, Birthdate)
VALUES (7, 8, 'SÃ©bastien', 'Haller', ' France', 'Centre Forward', 'sebastien.haller@gmail.com', '1994-06-22');
INSERT INTO teamroster (TeamID, PlayerID, StartingContractDate, EndingContractDate, ShirtNumber, Status)
VALUES (8, 7,'2019-07-01', null, 22, 'healthy');

INSERT INTO player (ID, CurrentTeamID, FirstName, LastName, Nationality, Role, Email, Birthdate)
VALUES (8, 4, 'Daniel', 'James', ' England', 'Offensive Midfielder', 'daniel.james@gmail.com', '1997-11-10');
INSERT INTO teamroster (TeamID, PlayerID, StartingContractDate, EndingContractDate, ShirtNumber, Status)
VALUES (4, 8,'2019-07-01', null, 21, 'healthy');

INSERT INTO player (ID, CurrentTeamID, FirstName, LastName, Nationality, Role, Email, Birthdate)
VALUES (9, 3, 'Harry', 'Kane', ' England', 'Centre Forward', 'harry.kane@gmail.com', '1993-07-28');
INSERT INTO teamroster (TeamID, PlayerID, StartingContractDate, EndingContractDate, ShirtNumber, Status)
VALUES (3, 9,'2013-07-01', null, 10, 'healthy');

INSERT INTO player (ID, CurrentTeamID, FirstName, LastName, Nationality, Role, Email, Birthdate)
VALUES (10, 1, 'Mohammed', 'Salah', 'Egypt', 'Right Winger', 'mohammed.salah@gmail.com', '1992-06-15');
INSERT INTO teamroster (TeamID, PlayerID, StartingContractDate, EndingContractDate, ShirtNumber, Status)
VALUES (1, 10,'2017-07-01', null, 11, 'injured');

INSERT INTO player (ID, CurrentTeamID, FirstName, LastName, Nationality, Role, Email, Birthdate)
VALUES (11, 5, 'Jamie', 'Vardy', 'England', 'Centre Forward', 'jamie.vardy@gmail.com', '1987-11-01');
INSERT INTO teamroster (TeamID, PlayerID, StartingContractDate, EndingContractDate, ShirtNumber, Status)
VALUES (5, 11,'2012-07-01', null, 9, 'healthy');

INSERT INTO player (ID, CurrentTeamID, FirstName, LastName, Nationality, Role, Email, Birthdate)
VALUES (12, 12, 'Jordan', 'Ayew', 'Ghana', 'Centre Forward', 'jordan.ayew@gmail.com', '1991-09-11');
INSERT INTO teamroster (TeamID, PlayerID, StartingContractDate, EndingContractDate, ShirtNumber, Status)
VALUES (12, 12, '2018-08-01', null, 14, 'healthy');

INSERT INTO player (ID, CurrentTeamID, FirstName, LastName, Nationality, Role, Email, Birthdate)
VALUES (13, 19, 'RaÃºl', 'JimÃ©nez', 'Mexico', 'Centre Forward', 'raul.jimenez@gmail.com', '1991-05-05');
INSERT INTO teamroster (TeamID, PlayerID, StartingContractDate, EndingContractDate, ShirtNumber, Status)
VALUES (19, 13,'2018-07-01', null, 9, 'healthy');

INSERT INTO player (ID, CurrentTeamID, FirstName, LastName, Nationality, Role, Email, Birthdate)
VALUES (14, 7, 'Alexandre', 'Lacazette', 'France', 'Centre Forward', 'alexandre.lacazette@gmail.com', '1991-05-28');
INSERT INTO teamroster (TeamID, PlayerID, StartingContractDate, EndingContractDate, ShirtNumber, Status)
VALUES (7, 14,'2017-07-01', null, 9, 'healthy');

INSERT INTO player (ID, CurrentTeamID, FirstName, LastName, Nationality, Role, Email, Birthdate)
VALUES (15, 1,'Sadio', 'Mane', 'Senegal', 'Left Winger', 'sadio.mane@gmail.com', '1992-04-10');
INSERT INTO teamroster (TeamID, PlayerID, StartingContractDate, EndingContractDate, ShirtNumber, Status)
VALUES (1, 15,'2016-07-01', null, 10 , 'healthy');

INSERT INTO player (ID, CurrentTeamID, FirstName, LastName, Nationality, Role, Email, Birthdate)
VALUES (16, 4, 'Anthony', 'Martial', 'Senegal', 'Left Winger', 'anthony.martial@gmail.com', '1995-12-05');
INSERT INTO teamroster (TeamID, PlayerID, StartingContractDate, EndingContractDate, ShirtNumber, Status)
VALUES (4, 16,'2015-07-01', null, 9, 'healthy');


INSERT INTO PlayerPerformance (PlayerID, MatchID, NumberGoal, NumberAssist, YellowCard, RedCard, MinutesPlayed)
VALUES (1, 17, 1, 0, 0, 0, 66)

INSERT INTO PlayerPerformance (PlayerID, MatchID, NumberGoal, NumberAssist, YellowCard, RedCard, MinutesPlayed)
VALUES (2, 15, 3, 0, 0, 0, 90)

INSERT INTO PlayerPerformance (PlayerID, MatchID, NumberGoal, NumberAssist, YellowCard, RedCard, MinutesPlayed)
VALUES (3, 17, 1, 1, 0, 0, 90);

INSERT INTO PlayerPerformance (PlayerID, MatchID, NumberGoal, NumberAssist, YellowCard, RedCard, MinutesPlayed)
VALUES (4, 19, 0, 0, 0, 0, 21);

INSERT INTO PlayerPerformance (PlayerID, MatchID, NumberGoal, NumberAssist, YellowCard, RedCard, MinutesPlayed)
VALUES (5, 11, 1, 0, 1, 0, 90);

INSERT INTO PlayerPerformance (PlayerID, MatchID, NumberGoal, NumberAssist, YellowCard, RedCard, MinutesPlayed)
VALUES (6, 11, 1, 0, 1, 0, 90);

INSERT INTO PlayerPerformance (PlayerID, MatchID, NumberGoal, NumberAssist, YellowCard, RedCard, MinutesPlayed)
VALUES (7, 13, 0, 0, 0, 0, 0);

INSERT INTO PlayerPerformance (PlayerID, MatchID, NumberGoal, NumberAssist, YellowCard, RedCard, MinutesPlayed)
VALUES (8, 20, 0, 0, 1, 0, 89);

INSERT INTO PlayerPerformance (PlayerID, MatchID, NumberGoal, NumberAssist, YellowCard, RedCard, MinutesPlayed)
VALUES (9, 17, 0, 0, 0, 0, 90);

INSERT INTO PlayerPerformance (PlayerID, MatchID, NumberGoal, NumberAssist, YellowCard, RedCard, MinutesPlayed)
VALUES (10, 16, 0, 0, 0, 0, 79);

INSERT INTO PlayerPerformance (PlayerID, MatchID, NumberGoal, NumberAssist, YellowCard, RedCard, MinutesPlayed)
VALUES (11, 19, 0, 0, 0, 0, 90);

INSERT INTO PlayerPerformance (PlayerID, MatchID, NumberGoal, NumberAssist, YellowCard, RedCard, MinutesPlayed)
VALUES (12, 18, 0, 0, 0, 0, 0);

INSERT INTO PlayerPerformance (PlayerID, MatchID, NumberGoal, NumberAssist, YellowCard, RedCard, MinutesPlayed)
VALUES (13, 20, 0, 0, 0, 0, 90);

INSERT INTO PlayerPerformance (PlayerID, MatchID, NumberGoal, NumberAssist, YellowCard, RedCard, MinutesPlayed)
VALUES (14, 11, 1, 0, 0, 0, 71);

INSERT INTO PlayerPerformance (PlayerID, MatchID, NumberGoal, NumberAssist, YellowCard, RedCard, MinutesPlayed)
VALUES (15, 16, 1, 1, 0, 0, 90);

INSERT INTO PlayerPerformance (PlayerID, MatchID, NumberGoal, NumberAssist, YellowCard, RedCard, MinutesPlayed)
VALUES (16, 20, 1, 0, 0, 0, 90);


INSERT INTO Manager (ManagerID, LastName, FirstName, Email)
 VALUES
 (1, 'Tom', 'Werner', 'tom.werner@gmail.com'),
 (2, 'Khaldoon', 'Al Mubarak', 'Al.Mubarak@gmail.com'),
 (3, 'Daniel', 'Levy', 'daniel.levy@gmail.com'),
 (4, 'Aiyawatt', 'Srivaddhanaprabha', 'Srivaddhanaprabha@gmail.com'),
 (5, 'Joel', 'Glazer', 'Gla.zer@gmail.com'),
 (6, 'Bruce', 'Buck', 'Buck@gmail.com'),
 (7, 'Chips', 'Keswick', 'Keswick@gmail.com'),
 (8, 'David', 'Sullivan', 'Sullivan@gmail.com'),
 (9, 'Jeff', 'Mostyn', 'Mostyn@gmail.com'),
 (10, 'Gao ', 'isheng', 'isheng@gmail.com'),
 (11, 'Jason', 'Wong', 'Wong@gmail.com'),
 (12, 'Jason', 'Wong', 'Wong@gmail.com'),
 (13, 'Ed', 'Balls', 'Ed.Balls@gmail.com'),
 (14, 'Barry', 'Kilby', 'Kilby@gmail.com'),
 (15, 'Kevin', 'McCabe', 'McCabe@gmail.com'),
 (16, 'Tony', 'Bloom', ' Bloom@gmail.com'),
 (17, 'Nassef', 'Sawiris', 'Sawiris@gmail.com'),
 (18, ' Mike', 'Ashley', 'Ashley@gmail.com'),
 (19, 'Jeff', 'Shi', 'Jeff.Shi@gmail.com'),
 (20, 'Scott', 'Duxbury', 'Duxbury@gmail.com')
 ;


INSERT INTO Coach ( CoachID, FirstName, LastName, Email)
VALUES
(1,'Jürgen', 'Klopp', 'Klopp@gmail.com'),
(2,'Pep ', 'Guardiola', 'Guardiola@gmail.com'),
(3,'Mauricio ', 'Pochettino', 'Pochettino@gmail.com'),
(4,' Brendan', 'Rodgers', 'Rodgers@gmail.com'),
(5,' Ole Gunnar', 'Solskjær', 'Solskjær@gmail.com'),
(6,' Frank', 'Lampard', 'Lampard@gmail.com'),
(7,' Unai', 'Emery', 'Emery@gmail.com'),
(8,'Manuel', 'Pellegrini', 'Pellegrini@gmail.com'),
(9,'Eddie', 'Howe', 'Howe@gmail.com'),
(10,'Ralph', 'Hasenhüttl', 'Hasenhüttl@gmail.com'),
(11,'Marco', 'Silva', 'Silva@gmail.com'),
(12,'Roy', 'Hodgson', 'Hodgson@gmail.com'),
(13,'Daniel', 'Farke', 'Farke@gmail.com'),
(14,' Sean', 'Dyche', 'Dyche@gmail.com'),
(15,'Jim', 'Phipps', 'Phipps@gmail.com'),
(16,'Graham', 'Potter', 'Potter@gmail.com'),
(17,' Dean', 'Smith', 'Smith@gmail.com'),
(18,'Steve', 'Bruce', 'Bruce@gmail.com'),
(19,' Nuno', 'Espírito Santo', 'Espírito.Santo@gmail.com'),
(20,'Quique', 'Sánchez Flores', 'Sánchez.Flores@gmail.com');

-- Populate tables with data
INSERT INTO Stadium VALUES(01, 'Emirates Stadium', 60260, '75 Drayton Park', 'London');
INSERT INTO Stadium VALUES(02, 'Villa Park', 42682, 'Trinity Road', 'Birmingham');
INSERT INTO Stadium VALUES(03, 'Vitality Stadium', 11360, 'Dean Court', 'Bournemouth');
INSERT INTO Stadium VALUES(04, 'Amex Stadium', 30750, 'Village Way', 'Brighton');
INSERT INTO Stadium VALUES(05, 'Turf Moor', 22546, 'Harry Potts Way', 'Burnley');
INSERT INTO Stadium VALUES(06, 'Stamford Bridge', 40853 , 'Fulham Road', 'London');
INSERT INTO Stadium VALUES(07, 'Selhurst Park', 25486, 'Holmesdale Road', 'London');
INSERT INTO Stadium VALUES(08, 'Goodison Park', 39221, 'Goodison Road', 'Liverpool');
INSERT INTO Stadium VALUES(09, 'King Power Stadium', 32273, 'Filbert Way', 'Leicester');
INSERT INTO Stadium VALUES(10, 'Anfield', 53394, 'Anfield Road', 'Liverpool');
INSERT INTO Stadium VALUES(11, 'Etihad Stadium', 55017, 'Etihad Campus', 'Manchester');
INSERT INTO Stadium VALUES(12, 'Old Trafford', 74879, 'Old Trafford', 'Manchester');
INSERT INTO Stadium VALUES(13, 'St.James Park', 52305, 'Strawberry Place', 'Newcastle Upon Tyne');
INSERT INTO Stadium VALUES(14, 'Carrow Road', 27244, 'Carrow Road', 'Norwich');
INSERT INTO Stadium VALUES(15, 'Bramall Lane', 32702, 'Bramall Lane', 'Sheffield');
INSERT INTO Stadium VALUES(16, 'St.Mary s Stadium', 32384, 'Britannia Road', 'Southampton');
INSERT INTO Stadium VALUES(17, 'Tottenham Hotspur Stadium', 62062, '782 High Road', 'London');
INSERT INTO Stadium VALUES(18, 'Vicarage Road', 21000, 'Vicarage Road Stadium', 'Watford');
INSERT INTO Stadium VALUES(19, 'London Stadium', 60000, 'Queen Elizabeth Olympic Park', 'London');
INSERT INTO Stadium VALUES(20, 'Molineux Stadium', 32050, 'Waterloo Rd', 'Wolverhampton');

INSERT INTO PlayerPerformance VALUES(1, 2, 1, 0, 0, 0, 21);
INSERT INTO PlayerPerformance VALUES(2, 1, 1, 0, 0, 0, 83);
INSERT INTO PlayerPerformance VALUES(3, 2, 3, 0, 1, 0, 90);
INSERT INTO PlayerPerformance VALUES(4, 10, 0, 0, 1, 0, 66);
INSERT INTO PlayerPerformance VALUES(5, 4, 2, 0, 0, 0, 84);
INSERT INTO PlayerPerformance VALUES(6, 9, 1, 0, 0, 0, 90);
INSERT INTO PlayerPerformance VALUES(7, 2, 0, 0, 0, 0, 90);
INSERT INTO PlayerPerformance VALUES(8, 10, 1, 0, 0, 0, 16);
INSERT INTO PlayerPerformance VALUES(9, 7, 2, 0, 0, 0, 90);
INSERT INTO PlayerPerformance VALUES(10, 1, 1, 1, 0, 0, 90);
INSERT INTO PlayerPerformance VALUES(11, 8, 0, 0, 0, 0, 90);
INSERT INTO PlayerPerformance VALUES(12, 5, 0, 0, 0, 0, 65);
INSERT INTO PlayerPerformance VALUES(13, 7, 0, 0, 0, 0, 90);
INSERT INTO PlayerPerformance VALUES(14, 9, 0, 0, 0, 0, 0);
INSERT INTO PlayerPerformance VALUES(15, 1, 0, 0, 0, 0, 74);
INSERT INTO PlayerPerformance VALUES(16, 10, 1, 0, 1, 0, 90);

INSERT INTO Team ( TeamID, CoachID, ManagerID, StadiumID, Name)
VALUES
(1,1,1,10,'Liverpool'),
(2,2,2,11,'Manchester city'),
(3,3,3,17,'Tottenham'),
(4,4,4,12,'Manchester United'),
(5,5,5,09,'Leicester'),
(6,6,6,06,'Chelsea'),
(7,7,7,01,'Arsenal'),
(8,8,8,19,'West Ham'),
(9,9,9,03,'Bournemouth'),
(10,10,10,16,'Southampton'),
(11,11,11,08,'Everton'),
(12,12,12,07,'Cristal Palace'),
(13,13,13,14,'Norwich'),
(14,14,14,05,'Burnley'),
(15,15,15,15,'Sheffield'),
(16,16,16,04,'Brighton'),
(17,17,17,02,'Aston Villa'),
(18,18,18,13,'Newcastle'),
(19,19,19,20,'Wolverhampton'),
(20,20,20,18,'Watford')
;

  --Populate tables with data
 
  INSERT INTO TeamPerformance VALUES (1, 1, 15, 4, 'w', 58)
  INSERT INTO TeamPerformance VALUES (13, 1, 12, 1, 'l', 42)
  INSERT INTO TeamPerformance VALUES (8, 2, 5, 0, 'l', 42)
  INSERT INTO TeamPerformance VALUES (2, 2, 14, 5, 'w', 58)
  INSERT INTO TeamPerformance VALUES (12, 3, 6, 0, 'd', 35)
  INSERT INTO TeamPerformance VALUES (11, 3, 10, 0, 'd', 65)
  INSERT INTO TeamPerformance VALUES (14, 4, 10, 3, 'w', 46)
  INSERT INTO TeamPerformance VALUES (10, 4, 11, 0, 'l', 54)
  INSERT INTO TeamPerformance VALUES (20, 5, 11, 0, 'l', 48)
  INSERT INTO TeamPerformance VALUES (16, 5, 5, 3, 'w', 52)
  INSERT INTO TeamPerformance VALUES (9, 6, 13, 1, 'd', 53)
  INSERT INTO TeamPerformance VALUES (15, 6, 8, 1, 'd', 48)
  INSERT INTO TeamPerformance VALUES (3, 7, 31, 3, 'w', 71)
  INSERT INTO TeamPerformance VALUES (17, 7, 7, 1, 'l', 29)
  INSERT INTO TeamPerformance VALUES (5, 8, 16, 0, 'd', 70)
  INSERT INTO TeamPerformance VALUES (19, 8, 8, 0, 'd', 30)
  INSERT INTO TeamPerformance VALUES (18, 9, 9, 0, 'l', 38)
  INSERT INTO TeamPerformance VALUES (7, 9, 8, 1, 'w', 62)
  INSERT INTO TeamPerformance VALUES (4, 10, 11, 4, 'w', 46)
  INSERT INTO TeamPerformance VALUES (6, 10, 18, 0, 'l', 54)
  INSERT INTO TeamPerformance VALUES (7, 11, 15, 2, 'w', 68)
  INSERT INTO TeamPerformance VALUES (14, 11, 18, 1, 'l', 32)
  INSERT INTO TeamPerformance VALUES (10, 12, 14, 1, 'w', 36)
  INSERT INTO TeamPerformance VALUES (1, 12, 15, 2, 'l', 64)
  INSERT INTO TeamPerformance VALUES (16, 13, 16, 1, 'd', 58)
  INSERT INTO TeamPerformance VALUES (8, 13, 8, 1, 'd', 42)
  INSERT INTO TeamPerformance VALUES (11, 14, 12, 1, 'w', 44)
  INSERT INTO TeamPerformance VALUES (20, 14, 8, 0, 'l', 56)
  INSERT INTO TeamPerformance VALUES (13, 15, 15, 3, 'w', 64)
  INSERT INTO TeamPerformance VALUES (18, 15, 12, 1, 'l', 36)
  INSERT INTO TeamPerformance VALUES (17, 16, 21, 1, 'l', 63)
  INSERT INTO TeamPerformance VALUES (10, 16, 12, 2, 'w', 37)
  INSERT INTO TeamPerformance VALUES (2, 17, 30, 2, 'd', 56)
  INSERT INTO TeamPerformance VALUES (3, 17, 3, 2, 'd', 44)
  INSERT INTO TeamPerformance VALUES (15, 18, 15, 1, 'w', 42)
  INSERT INTO TeamPerformance VALUES (12, 18, 6, 0, 'l', 58)
  INSERT INTO TeamPerformance VALUES (6, 19, 14, 1, 'd', 51)
  INSERT INTO TeamPerformance VALUES (5, 19, 12, 1, 'd', 49)
  INSERT INTO TeamPerformance VALUES (19, 20, 6, 1, 'd', 34)
  INSERT INTO TeamPerformance VALUES (4, 20, 9, 1, 'd', 66)
 
  INSERT INTO Referee VALUES ('Anthony','Taylor','anthony.taylor@gmail.com');
  INSERT INTO Referee VALUES ('Martin','Atkinson','martin.atkinson@gmail.com');
  INSERT INTO Referee VALUES ('Chris','Kavanagh','chris.kavanagh@gmail.com');
  INSERT INTO Referee VALUES ('Paul','Tierney','paul.tierney@gmail.com');
  INSERT INTO Referee VALUES ('Graham','Scott','graham.scott@gmail.com');
  INSERT INTO Referee VALUES ('Jonathan','Moss','jonathan.moss@gmail.com');
  INSERT INTO Referee VALUES ('Peter','Bankes','peter.bankes@gmail.com');
  INSERT INTO Referee VALUES ('Kevin','Friend','kevin.friend@gmail.com');
  INSERT INTO Referee VALUES ('Stuart','Attwell','stuart.attwell@gmail.com');
  INSERT INTO Referee VALUES ('Mike','Dean','mike.dean@gmail.com'); 
  INSERT INTO Referee VALUES ('Andre','Marriner','andre.marriner.gmail.com');
  INSERT INTO Referee VALUES ('Craig','Pawson','craig.pawson@gmail.com');
  INSERT INTO Referee VALUES ('Andy','Madley','andy.madley@gmail.com');
  INSERT INTO Referee VALUES ('Michael','Oliver','micheal.oliver@gmail.com');
  INSERT INTO Referee VALUES ('David','Coote','david.coote@mail.com');
  INSERT INTO Referee VALUES ('Lee','Mason','lee.mason@gmail.com');

  INSERT INTO Match VALUES (10,'2019-08-06','15:00',1,13,14);
  INSERT INTO Match VALUES (19,'2019-08-10','07:30',8,2,10);
  INSERT INTO Match VALUES (7,'2019-08-10','10:00',12,11,8);
  INSERT INTO Match VALUES (5,'2019-08-10','10:00',14,10,5);
  INSERT INTO Match VALUES (18,'2019-08-10','10:00',20,16,6);
  INSERT INTO Match VALUES (3,'2019-08-10','10:00',9,15,12);
  INSERT INTO Match VALUES (17,'2019-08-10','12:30',3,17,3);
  INSERT INTO Match VALUES (9,'2019-08-11','09:00',5,19,10);
  INSERT INTO Match VALUES (13,'2019-08-11','09:00',18,7,2);
  INSERT INTO Match VALUES (12,'2019-08-11','11:30',4,6,1);
  INSERT INTO Match VALUES (1,'2019-08-17','07:30',7,14,10);
  INSERT INTO Match VALUES (16,'2019-08-17','10:00',10,1,2);
  INSERT INTO Match VALUES (4,'2019-08-17','10:00',16,8,1);
  INSERT INTO Match VALUES (8,'2019-08-17','10:00',11,20,16);
  INSERT INTO Match VALUES (14,'2019-08-17','10:00',13,18,9);
  INSERT INTO Match VALUES (2,'2019-08-17','10:00',17,10,11);
  INSERT INTO Match VALUES (11,'2019-08-17','12:30',2,3,14);
  INSERT INTO Match VALUES (15,'2019-08-18','09:00',15,12,15);
  INSERT INTO Match VALUES (6,'2019-08-18','11:30',6,5,5);
  INSERT INTO Match VALUES (20,'2019-08-19','15:00',19,4,6);
  

    ALTER TABLE Match ADD CONSTRAINT match_referee_fk FOREIGN KEY (Referee) REFERENCES Referee(RefereeID);
  ALTER TABLE Match ADD CONSTRAINT match_stadium_fk FOREIGN KEY (StadiumID) REFERENCES Stadium(StadiumID);
  ALTER TABLE Match ADD CONSTRAINT match_hometeam_fk FOREIGN KEY (HomeTeamID) REFERENCES Team(TeamID);
  ALTER TABLE Match ADD CONSTRAINT match_awayteam_fk FOREIGN KEY (AwayTeamID) REFERENCES Team(TeamID);
  ALTER TABLE PlayerPerformance ADD CONSTRAINT playerperformance_match_fk FOREIGN KEY (MatchID) REFERENCES Match(MatchID);
  ALTER TABLE PlayerPerformance ADD CONSTRAINT playerperformance_player_fk FOREIGN KEY (PlayerID) REFERENCES player(ID);
  ALTER TABLE player ADD CONSTRAINT player_team_fk FOREIGN KEY (CurrentTeamID) REFERENCES Team(TeamID);
  ALTER TABLE teamroster ADD CONSTRAINT teamroster_team_fk FOREIGN KEY (TeamID) REFERENCES Team(TeamID);
  ALTER TABLE teamroster ADD CONSTRAINT teamroster_player_fk FOREIGN KEY (PlayerID) REFERENCES player(ID);
  ALTER TABLE Team ADD CONSTRAINT team_coach_fk FOREIGN KEY (CoachID) REFERENCES Coach(CoachID);
  ALTER TABLE Team ADD CONSTRAINT team_manager_fk FOREIGN KEY (ManagerID) REFERENCES Manager(ManagerID);
  ALTER TABLE Team ADD CONSTRAINT team_stadium_fk FOREIGN KEY (StadiumID) REFERENCES Stadium(StadiumID);
  ALTER TABLE TeamPerformance ADD CONSTRAINT teamperformance_team_fk FOREIGN KEY (TeamID) REFERENCES Team(TeamID);
  ALTER TABLE TeamPerformance ADD CONSTRAINT teamperformance_match_fk FOREIGN KEY (MatchID) REFERENCES Match(MatchID);


  select * from TeamPerformance;
  select * from Referee;
  select * from Match;
  select * from Stadium;
  select * from Coach;
  select * from Team;
  select * from Manager;
  select * from PlayerPerformance, teamroster, player ;