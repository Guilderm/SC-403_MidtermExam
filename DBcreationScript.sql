CREATE DATABASE ITicket;

USE ITicket;

CREATE TABLE `Event`
(
    `EventID`    int         NOT NULL AUTO_INCREMENT,
    `Name`       VARCHAR(50) NOT NULL,
    `Cost`       int         NOT NULL,
    `Date`       Date        NOT NULL,
    `LocationID` int         NOT NULL,
    `ArtisID`    int         NOT NULL,
    PRIMARY KEY (
                 `EventID`
        )
);

CREATE TABLE `Location`
(
    `LocationID`       int         NOT NULL AUTO_INCREMENT,
    `Name`             VARCHAR(50) NULL,
    `MaximumOccupancy` int         NOT NULL,
    `Address`          VARCHAR(50) NULL,
    PRIMARY KEY (
                 `LocationID`
        )
);

CREATE TABLE `Artis`
(
    `ArtisID`     int         NOT NULL AUTO_INCREMENT,
    `StageName`   VARCHAR(50) NOT NULL,
    `FirstName`   VARCHAR(50) NULL,
    `LastName`    VARCHAR(50) NULL,
    `PhoneNumber` VARCHAR(50) NULL,
    PRIMARY KEY (
                 `ArtisID`
        )
);

ALTER TABLE `Event`
    ADD CONSTRAINT `fk_Event_LocationID` FOREIGN KEY (`LocationID`)
        REFERENCES `Location` (`LocationID`);

ALTER TABLE `Event`
    ADD CONSTRAINT `fk_Event_ArtisID` FOREIGN KEY (`ArtisID`)
        REFERENCES `Artis` (`ArtisID`);

INSERT INTO iticket.artis (StageName, FirstName, LastName, PhoneNumber)
VALUES ('Jhony', 'Jhon', 'Miller', 60254857);

INSERT INTO iticket.location (Name, MaximumOccupancy, Address)
VALUES ('Central Park', 200, 'Downtown');

INSERT INTO iticket.event (Name, Cost, Date, LocationID, ArtisID)
VALUES ('event1', 2500, 20220606, 1, 1);