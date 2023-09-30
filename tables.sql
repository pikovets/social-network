CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE "user" (
id uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
first_name varchar(30) NOT NULL,
last_name varchar(30) NOT NULL,
email varchar UNIQUE NOT NULL,
password varchar NOT NULL,
is_active boolean NOT NULL default true,
joined_at timestamp NOT NULL default now(),
role varchar default 'USER'
);

create table Post(
id uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
text varchar(2200) NOT NULL,
date timestamp NOT NULL default now(),
author_id UUID references "user"(id) not null
)