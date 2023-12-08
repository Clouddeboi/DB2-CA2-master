-- DB Schema is defining the format of the tables and what data types each value is

-- Creating Database
DROP DATABASE IF EXISTS KPop_Database_CA2;
CREATE DATABASE KPop_Database_CA2;

-- Creating Tables

-- Create Company
DROP TABLE IF EXISTS Company;
CREATE TABLE Company (
    CompanyID int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    CompanyName VARCHAR(255),
    CEOName VARCHAR(255),
    WorthOrAnnualIncome DECIMAL,
    StartDate DATE
);

-- Create Band
DROP TABLE IF EXISTS Band;
CREATE TABLE Band (
    BandID int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    BandName VARCHAR(255)
);

-- Create Album
DROP TABLE IF EXISTS Album;
CREATE TABLE Album (
    AlbumID int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    AlbumName VARCHAR(255),
    ReleaseDate DATE
);

-- Create Song
DROP TABLE IF EXISTS Song;
CREATE TABLE Song (
    SongID int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    SongName VARCHAR(255),
    SongLength INT
);

-- Create Member
DROP TABLE IF EXISTS Member;
CREATE TABLE Member (
    MemberID int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    MemberName VARCHAR(255),
    Birthday DATE,
    StageName VARCHAR(255)
);

-- Create AlbumSong
DROP TABLE IF EXISTS AlbumSong;
CREATE TABLE AlbumSong (
    AlbumID INT REFERENCES Album(AlbumID),
    SongID INT REFERENCES Song(SongID),
    PRIMARY KEY (AlbumID, SongID)
);

-- Create CompanyBand
DROP TABLE IF EXISTS CompanyBand;
CREATE TABLE CompanyBand (
    CompanyID INT REFERENCES Company(CompanyID),
    BandID INT REFERENCES Band(BandID),
    PRIMARY KEY (CompanyID, BandID)
);

-- Create BandAlbum
DROP TABLE IF EXISTS BandAlbum;
CREATE TABLE BandAlbum (
    BandID INT REFERENCES Band(BandID),
    AlbumID INT REFERENCES Album(AlbumID),
    PRIMARY KEY (BandID, AlbumID)
);

-- Create BandMember
DROP TABLE IF EXISTS BandMember;
CREATE TABLE BandMember (
    BandID INT REFERENCES Band(BandID),
    MemberID INT REFERENCES Member(MemberID),
    PRIMARY KEY (BandID, MemberID)
);
