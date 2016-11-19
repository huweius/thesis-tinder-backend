-- Create SQL database for Thesis Tinder
CREATE TABLE departments (
  id            INT NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (id),
  title         TINYTEXT NOT NULL,
  description   TEXT,
  link          TINYTEXT,
  created 	    DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated 	    DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE professors (
  id 			      INT NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (id),
  email 		    TINYTEXT,
  first_name 	  TINYTEXT,
  last_name 	  TINYTEXT,
  link 		      TINYTEXT,
  photo 		    TINYTEXT,
  courses 	    TEXT,
  department_id INT,
  FOREIGN KEY (department_id) REFERENCES departments(id),
  created 	    DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated 	    DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE students (
  id 		        INT NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (id),
  email 		    TINYTEXT,
  first_name 	  TINYTEXT,
  last_name 	  TINYTEXT,
  link 		      TINYTEXT,
  photo 		    TINYTEXT,
  courses 	    TEXT,
  bio 		      TEXT,
  department_id INT,
  FOREIGN KEY (department_id) REFERENCES departments(id),
  created 	    DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated 	    DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE projects (
  id            INT NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (id),
  professor_id  INT NOT NULL,
  FOREIGN KEY (professor_id) REFERENCES professors(id),
  name          TINYTEXT NOT NULL,
  desciption    TEXT,
  created 	    DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated 	    DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE keywords (
  id            INT NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (id),
  name          TINYTEXT NOT NULL,
  created 	    DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated 	    DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE skills (
  id            INT NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (id),
  name          TINYTEXT NOT NULL,
  description   TEXT,
  created 	    DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated 	    DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE professor_student_relationship (
  id			      INT NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (id),
  student_id 	  INT,
  FOREIGN KEY (student_id) REFERENCES students(id),
  professor_id 	INT,
  FOREIGN KEY (professor_id) REFERENCES professors(id),
  type 		      INT NOT NULL, -- 1 is like, 2 is hate
  created 	    DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated 	    DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE project_keyword_relationship (
  id            INT NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (id),
  project_id    INT,
  FOREIGN KEY (project_id) REFERENCES projects(id),
  keyword_id    INT,
  FOREIGN KEY (keyword_id) REFERENCES keywords(id),
  created 	    DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated 	    DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE project_skills_relationship (
  id            INT NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (id),
  project_id    INT,
  FOREIGN KEY (project_id) REFERENCES projects(id),
  skills_id    INT,
  FOREIGN KEY (skills_id) REFERENCES skills(id),
  created 	    DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated 	    DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE student_skills_relationship (
  id            INT NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (id),
  student_id    INT,
  FOREIGN KEY (student_id) REFERENCES students(id),
  skills_id     INT,
  FOREIGN KEY (skills_id) REFERENCES skills(id),
  created 	    DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated 	    DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);