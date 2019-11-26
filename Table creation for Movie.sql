create table Actor (
Act_ID 	integer	not null,
Act_fname 	Char(20) 	not null,
Act_lname 		char(20)		not null,
Act_gender char(1)		not null,	
CONSTRAINT	Actor_PK	PRIMARY KEY(Act_ID)
);

create table Director (
Dir_ID 	integer	not null,
Dir_fname 	Char(20) 	not null,
Dir_lname 		char(20)		not null,	
CONSTRAINT	Director_PK	PRIMARY KEY(Dir_ID)
);

create table Genres (
Gen_ID 	integer	not null,
Gen_title 	char(20)  null	,
CONSTRAINT	Genres_PK	PRIMARY KEY(Gen_ID)
);


create table Movie (
Mov_ID 	integer	not null,
Mov_title 	Char(20) 	not null,
Mov_year		char(20)		not null,
Mov_time 	integer null,
Mov_lang Char(50) null,
Mov_dt_rel date null,
Mov_rel_country char(5) null,	
CONSTRAINT	Movie_PK	PRIMARY KEY(Mov_ID)
);

create table Reviewer (
Rev_ID 	integer	not null,
Rev_name 	char(30)  null	,
CONSTRAINT	Reviewer_PK	PRIMARY KEY(Rev_ID)
);




create table Movie_direction (
Dir_ID 	integer	not null,
Mov_ID 	integer 	not null,
CONSTRAINT	movie_direction_PK	Primary KEY(Dir_ID, Mov_ID),
CONSTRAINT	Director_FK	Foreign KEY(Dir_ID)
			REFERENCES Director(Dir_ID)	,
CONSTRAINT	Movie_FK	Foreign KEY(Mov_ID)
			REFERENCES Movie(Mov_ID)	
);

create table Movie_cast (
Act_ID 	integer	not null,
Mov_ID 	integer	not null,
Mov_Role 		char(30)		not null,
Constraint movie_cast_pk primary key (Act_ID,Mov_ID),
CONSTRAINT	Movie_cast1_FK	Foreign KEY(Act_ID)
			REFERENCES Actor(Act_ID)	,
CONSTRAINT	Movie_cast2_FK	Foreign KEY(Mov_ID)
			REFERENCES Movie(Mov_ID)	
);

create table Movie_genres (
Mov_ID 	integer	not null,
Gen_ID 	integer	not null,
constraint movie_genres_pk primary key(Mov_ID, Gen_ID),
CONSTRAINT	Movie1_FK	Foreign KEY(Mov_ID)
			REFERENCES Movie(Mov_ID)	,
CONSTRAINT	Genres1_FK	Foreign KEY(Gen_ID)
			REFERENCES Genres(Gen_ID)	
);

create table Rating (
Mov_ID 	integer	not null,
Rev_ID 	integer  not null	,
Rev_stars integer null,
Num_o_ratings integer null,
constraint rating_pk primary key(Mov_ID, Rev_ID),
CONSTRAINT	Movie2_FK	Foreign KEY(Mov_ID)
			REFERENCES Movie(Mov_ID)	,
CONSTRAINT	Reviewer2_FK	Foreign KEY(Rev_ID)
			REFERENCES Reviewer(Rev_ID)	
);