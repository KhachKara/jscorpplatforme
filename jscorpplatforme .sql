CREATE TABLE person 
(
	id_person int,
	fio varchar(255),
	birthdate date,
	fk_role int,
	phone varchar(15),
	e_maill varchar(255),
	fk_social_network int,
	fk_adress int,
	fk_profession int,
	gender tinyint,
	notes text,
	fk_skills int,
	about_me text,
	fk_photo int,
	PRIMARY KEY(id_person)
);

CREATE TABLE role 
(
	id_role int,
	role_name varchar(50),
	PRIMARY KEY(id_role)
);

CREATE TABLE social_network 
(
	id_sn int,
	name_sn varchar(255),
	link_sn varchar(255),
	fk_icon_sn int,
	PRIMARY KEY(id_sn)
);

CREATE TABLE icon_sn 
(
	id_icon_sn int,
	link_sprite varchar(255),
	height int,
	wight int,
	PRIMARY KEY(id_icon_sn)
);

CREATE TABLE adress 
(
	id_adress int,
	country varchar(255),
	city varchar(255),
	PRIMARY KEY(id_adress)
);

CREATE TABLE profession 
(
	id_profession int,
	profession_name varchar(255),
	PRIMARY KEY(id_profession)
);

CREATE TABLE skills 
(
	id_skills int,
	skill_name varchar(255),
	PRIMARY KEY(id_skills)
);

CREATE TABLE photo 
(
	id_photo int,
	link_photo varchar(255),
	PRIMARY KEY(id_photo)
);

ALTER TABLE person ADD FOREIGN KEY (fk_social_network) REFERENCES social_network (id_sn);

ALTER TABLE person ADD FOREIGN KEY (fk_role) REFERENCES role (id_role);

ALTER TABLE social_network ADD FOREIGN KEY (fk_icon_sn) REFERENCES icon_sn (id_icon_sn);

ALTER TABLE person ADD FOREIGN KEY (fk_adress) REFERENCES adress (id_adress);

ALTER TABLE person ADD FOREIGN KEY (fk_profession) REFERENCES profession (id_profession);

ALTER TABLE person ADD FOREIGN KEY (fk_skills) REFERENCES skills (id_skills);

ALTER TABLE person ADD FOREIGN KEY (fk_photo) REFERENCES photo (id_photo);
