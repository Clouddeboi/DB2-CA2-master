-- Populating Tables

-- Insert Companies
-- TODO

-- Insert Bands
-- TODO
INSERT INTO Company (CompanyName) VALUES ('JYP Entertainment');
SET @lastCompanyID = LAST_INSERT_ID();
--Band 1
INSERT INTO Band (BandName) VALUES ('Stray Kids');
SET @lastBandID = LAST_INSERT_ID();
INSERT INTO CompanyBand (CompanyID, BandID) VALUES (@lastCompanyID, @lastBandID);

INSERT INTO Member (MemberName, Birthday, StageName) VALUES ('Felix', '2000-09-15', NULL);
SET @lastMemberID = LAST_INSERT_ID();
INSERT INTO BandMember (BandID, MemberID) VALUES (@lastBandID, @lastMemberID);

INSERT INTO Album (AlbumName, ReleaseDate) VALUES ('MAXIDENT', '2022-05-27');
SET @lastAlbumID = LAST_INSERT_ID();
INSERT INTO BandAlbum(BandID, AlbumID) VALUES (@lastBandID, @lastAlbumID);

INSERT INTO Song (SongName, SongLength) VALUES ('Hellevator(MixTape)', 239);
SET @lastSongID = LAST_INSERT_ID();
INSERT INTO AlbumSong(AlbumID, SongID) VALUES (@lastAlbumID, @lastSongID);
--Band 2(Change this info)
INSERT INTO Band (BandName) VALUES ('Stray Kids');
SET @lastBandID = LAST_INSERT_ID();
INSERT INTO CompanyBand (CompanyID, BandID) VALUES (@lastCompanyID, @lastBandID);

INSERT INTO Member (MemberName, Birthday, StageName) VALUES ('Felix', '2000-09-15', NULL);
SET @lastMemberID = LAST_INSERT_ID();
INSERT INTO BandMember (BandID, MemberID) VALUES (@lastBandID, @lastMemberID);

INSERT INTO Album (AlbumName, ReleaseDate) VALUES ('MAXIDENT', '2022-05-27');
SET @lastAlbumID = LAST_INSERT_ID();
INSERT INTO BandAlbum(BandID, AlbumID) VALUES (@lastBandID, @lastAlbumID);

INSERT INTO Song (SongName, SongLength) VALUES ('Hellevator(MixTape)', 239);
SET @lastSongID = LAST_INSERT_ID();
INSERT INTO AlbumSong(AlbumID, SongID) VALUES (@lastAlbumID, @lastSongID);
-- Insert Albums
-- TODO

-- Insert Songs
-- TODO

-- Insert Members
-- TODO

-- Insert CompanyBands (Can only be done after inserting Companies and Bands)
-- TODO

-- Insert AlbumSongs (Can only be done after inserting Albums and Songs)
-- TODO

-- Insert BandAlbums (Can only be done after inserting Bands and Albums)
-- TODO

-- Insert BandMembers (Can only be done after inserting Bands and Members)
-- TODO
