--drop tables if they exist
drop table campaign;
drop table contacts;
drop table category;
drop table subcategory;

--create contacts table
create table contacts(
	contact_id int not null,
	first_name varchar,
	last_name varchar,
	email varchar,
	primary key(contact_id)
);

--create category table
create table category(
	category_id varchar not null,
	category_name varchar,
	primary key(category_id)
);

--create subcategory table
create table subcategory(
	subcategory_id varchar not null,
	subcategory_name varchar,
	primary key(subcategory_id)
);


--create campaign table
create table campaign(
	cf_id int not null,
	contact_id int,
	company_name varchar,
	description text,
	goal decimal,
	pledged decimal,
	outcome varchar,
	backers_count int,
	country varchar,
	currency varchar,
	launch_date date,
	end_date date,
	category_id varchar,
	subcategory_id varchar,
	primary key(cf_id),
	foreign key(contact_id) references contacts(contact_id),
	foreign key(category_id) references category(category_id),
	foreign key(subcategory_id) references subcategory(subcategory_id)
);

--confirm the data is imported
select * from contacts;
select * from category;
select * from subcategory;
select * from campaign;