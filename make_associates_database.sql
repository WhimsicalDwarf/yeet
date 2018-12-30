CREATE DATABASE webdata;
USE webdata;

CREATE TABLE associates
(
  associate_id INT NOT NULL,
  name VARCHAR(255) NOT NULL,
  affiliation VARCHAR(255),
  position VARCHAR(255),
  PRIMARY KEY (associate_id)
);

CREATE TABLE contacts
(
  contact_id INT NOT NULL,
  associate INT NOT NULL,
  type VARCHAR(20) NOT NULL,
  detail VARCHAR(255) NOT NULL,
  PRIMARY KEY (contact_id),
  FOREIGN KEY (associate) REFERENCES associates (associate_id)
);

INSERT INTO associates VALUES (1, 'Brian Cox', 'University of Manchester', 'Advanced Fellow of Particle Physics');
INSERT INTO associates VALUES (2, 'Richard Dawkins', 'Oxford University', 'Emeritus Fellow');
INSERT INTO associates VALUES (3, 'Noam Chomsky', 'Massachusetts Institute of Technology', 'Professor of Colorless Green Ideas');

INSERT INTO contacts VALUES(1, 1, 'email', 'coxb@bbc.co.uk');
INSERT INTO contacts VALUES(2, 1, 'mobile', '07389 393 122');
INSERT INTO contacts VALUES(3, 2, 'email', 'rich@venganza.com');
INSERT INTO contacts VALUES(4, 3, 'fax', '001 1111 1234');
INSERT INTO contacts values(5, 3, 'email', 'compsky@compsky.com');