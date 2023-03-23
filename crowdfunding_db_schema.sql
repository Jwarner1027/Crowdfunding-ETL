Drop table if exists category;
Drop table if exists subcategory;
Drop table if exists campaign;
Drop table if exists contacts;

CREATE TABLE category (
	category_id VARCHAR,
	category VARCHAR,
	
	PRIMARY KEY (category_id)
);

CREATE TABLE subcategory (
	subcategory_id VARCHAR,
	category VARCHAR,
	
	PRIMARY KEY (subcategory_id)
);

CREATE TABLE campaign (
	cf_id INT,
	contact_id INT,
	company_name VARCHAR,
	description VARCHAR,
	goal FLOAT,
	pledged FLOAT,
	outcome VARCHAR,
	backers_count INT,
	country VARCHAR,
	currency VARCHAR,
	launched_date DATE,
	end_date DATE,
	category_id VARCHAR,
	subcategory_id VARCHAR,
	
	PRIMARY KEY (cf_id),
	FOREIGN KEY (category_id) REFERENCES category(category_id),
	FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);

CREATE TABLE contacts (
	contact_id INT,
	first_name VARCHAR,
	last_name VARCHAR,
	email VARCHAR,
	
	PRIMARY KEY (contact_id)
);

SELECT * FROM campaign;

SELECT * FROM category;

SELECT * FROM subcategory;

SELECT * FROM contacts;
