CREATE DATABASE SAFWA_MOVIES
GO

--CREATE A STUDIO TABLE
CREATE TABLE Studio (
             Stu_ID VarChar(9) Unique NOT NULL,
			 Stu_Name VarChar(max) NOT NULL,
			 Stu_DateEstablished Date NOT NULL,
			 Stu_Country VarChar(max) NOT NULL,
			 PRIMARY KEY(Stu_ID)


)

--create writer table
CREATE TABLE Writer(
             Wri_ID VarChar(9)  Unique NOT NULL,
			 Wri_Name VarChar(max) NOT NUll,
			 Wri_Age int NOT NULL,
			 Wri_Gender Char(1),
			 PRIMARY KEY(Wri_ID)


)


--create the movie table 
CREATE TABLE Movie(
             Mov_ID VarChar(9) Unique NOT NULL,
			 Mov_Title VarChar(max) NOT NULL,
			 Mov_Duration int NOT NULL,
			 Mov_ReleaseDate Date NOT NULL,
			 Stu_ID varChar(9) NOT NULL,
			 PRIMARY KEY(Mov_ID),
			 FOREIGN KEY (Stu_ID) REFERENCES Studio(Stu_ID)


)

--CREATE A BRIDGE TABLE BTWEEN MOVIE AND WRITER
CREATE TABLE Movie_Writer(
             Mov_ID VarChar(9) Unique NOT NULL,
			 Wri_ID VarChar(9)  Unique NOT NULL,

			 PRIMARY KEY(Mov_ID,Wri_ID),
			 FOREIGN KEY (Mov_ID) REFERENCES Movie(Mov_ID),
			 FOREIGN KEY(Wri_ID) REFERENCES Writer(Wri_ID)

)

