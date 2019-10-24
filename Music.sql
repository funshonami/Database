create table ArtistInfo (
ArtistID 	numeric 	not null,
ArtistName 	Char(35) 	not null,
Rating 		numeric(2,1)		null,
PhoneNumber numeric		null,	
CONSTRAINT	ArtistInfo_PK	PRIMARY KEY(ArtistID)
);

create table Album (
ArtistID	numeric 	not null,
Track		Char(40)	not null,
Genre		Char(15)	null,
YearRelease	integer		null,
CONSTRAINT	Album_PK	PRIMARY KEY(Track),
CONSTRAINT	ArtistInfo_FK	Foreign KEY(ArtistID)
			REFERENCES ArtistInfo(ArtistID)

);

insert into  ArtistInfo values (
'01', 'M.I', '5.0', '08056275651');
insert into  ArtistInfo values (
'02', 'Vector', '0.0', '08056275652');

insert into Album values (
'01', 'Bad Belle', 'Hip Hop', '2015');

insert into Album values (
'02', 'King Kong', 'Hip Hop', '2015' );

