-- Create SQL database for Thesis Tinder
CREATE TABLE professors (
						id 			PRIMARY KEY int, 
						email 		TINYTEXT,
						first_name 	TINYTEXT,
						last_name 	TINYTEXT,
						link 		TINYTEXT, 
						photo 		TINYTEXT, 
						courses 	TEXT, 
						TINYTEXT 	photo, 
						TEXT 		courses, 
						created 	datetime NOT NULL, 
						updated 	datetime NOT NULL
						); 

CREATE TABLE students (
						id 			PRIMARY KEY int, 
						email 		TINYTEXT, 
						first_name 	TINYTEXT, 
						last_name 	TINYTEXT, 
						link 		TINYTEXT, 
						photo 		TINYTEXT, 
						courses 	TEXT, 
						bio 		TEXT, 
						FOREIGN KEY (department)  	
						)

CREATE TABLE professor_student_relationship (
						id			int, 
						PRIMARY KEY (id), 
						student_id 	int, 
						FOREIGN KEY (student_id) REFERENCES students(id), 
						professor 	int, 
						FOREIGN KEY (student) REFERENCES professors(id), 
						type 		int, --1 is like, 2 is hate
						created 	datetime, 
						updated 	datetime
						); 