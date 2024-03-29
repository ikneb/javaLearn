-- SQL Manager Lite for PostgreSQL 5.7.0.46980
-- ---------------------------------------
-- Host      : localhost
-- Database  : webresume
-- Version   : PostgreSQL 9.5.2, compiled by Visual C++ build 1800, 64-bit



SET check_function_bodies = false;
--
-- Structure for table account (OID = 16410) : 
--
SET search_path = public, pg_catalog;
CREATE TABLE public.account (
    id bigint NOT NULL,
    uid varchar(100) NOT NULL,
    first_name varchar(50) NOT NULL,
    last_name varchar(50) NOT NULL,
    birth_day date,
    phone varchar(20),
    email varchar(100),
    country varchar(60),
    city varchar(60),
    objective text,
    summary text,
    large_photo varchar(255),
    small_photo varchar(255),
    info text,
    password varchar(255) NOT NULL,
    completed boolean NOT NULL,
    created timestamp(0) without time zone NOT NULL,
    skype varchar(80),
    vcontakte varchar(255),
    facebook varchar(255),
    lincedin varchar(255),
    githab varchar(255),
    stacoverflow varchar(255)
)
WITH (oids = false);
--
-- Structure for table practic (OID = 16509) : 
--
CREATE TABLE public.practic (
    id bigint NOT NULL,
    id_account bigint NOT NULL,
    "position" varchar(45) NOT NULL,
    company varchar(100) NOT NULL,
    begin_date date NOT NULL,
    finish_date date,
    responsibiliti varchar(255),
    demo varchar(255),
    src varchar(255)
)
WITH (oids = false);
--
-- Structure for table certificate (OID = 16522) : 
--
CREATE TABLE public.certificate (
    id bigint NOT NULL,
    id_account bigint NOT NULL,
    name varchar(60) NOT NULL,
    large_url varchar(255) NOT NULL,
    small_url varchar(255) NOT NULL
)
WITH (oids = false);
--
-- Structure for table course (OID = 16542) : 
--
CREATE TABLE public.course (
    id bigint NOT NULL,
    id_account bigint NOT NULL,
    name varchar(45) NOT NULL,
    scool varchar(45) NOT NULL,
    finish_data date
)
WITH (oids = false);
--
-- Structure for table education (OID = 16552) : 
--
CREATE TABLE public.education (
    id bigint NOT NULL,
    id_account bigint NOT NULL,
    summery varchar(100) NOT NULL,
    begin_year varchar(20) NOT NULL,
    finish_year varchar(20),
    university text NOT NULL,
    faculti varchar(255) NOT NULL
)
WITH (oids = false);
ALTER TABLE ONLY public.education ALTER COLUMN id SET STATISTICS 0;
--
-- Definition for sequence account_seq (OID = 16602) : 
--
CREATE SEQUENCE public.account_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
--
-- Definition for sequence course_seq (OID = 16605) : 
--
CREATE SEQUENCE public.course_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
--
-- Definition for sequence education_seq (OID = 16609) : 
--
CREATE SEQUENCE public.education_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
--
-- Definition for sequence hobby_seq (OID = 16611) : 
--
CREATE SEQUENCE public.hobby_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
--
-- Definition for sequence practic_seq (OID = 16613) : 
--
CREATE SEQUENCE public.practic_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
--
-- Structure for table hobby (OID = 16663) : 
--
CREATE TABLE public.hobby (
    id bigint NOT NULL,
    id_account bigint NOT NULL,
    name varchar(30) NOT NULL
)
WITH (oids = false);
ALTER TABLE ONLY public.hobby ALTER COLUMN id SET STATISTICS 0;
--
-- Structure for table skill (OID = 16673) : 
--
CREATE TABLE public.skill (
    id bigint NOT NULL,
    id_account bigint NOT NULL,
    category varchar(60) NOT NULL,
    value text NOT NULL
)
WITH (oids = false);
--
-- Definition for sequence skill_seq (OID = 16686) : 
--
CREATE SEQUENCE public.skill_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
--
-- Definition for sequence certificate_seq (OID = 16692) : 
--
CREATE SEQUENCE public.certificate_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
--
-- Structure for table language (OID = 16694) : 
--
CREATE TABLE public.language (
    id bigint NOT NULL,
    id_account bigint NOT NULL,
    name varchar(60) NOT NULL,
    level varchar(60) NOT NULL,
    type varchar(30) NOT NULL
)
WITH (oids = false);
--
-- Definition for sequence language_seq (OID = 16699) : 
--
CREATE SEQUENCE public.language_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
--
-- Structure for table account_restore (OID = 16706) : 
--
CREATE TABLE public.account_restore (
    id bigint NOT NULL,
    token varchar(255) NOT NULL
)
WITH (oids = false);
--
-- Structure for table skill_category (OID = 16718) : 
--
CREATE TABLE public.skill_category (
    id bigint NOT NULL,
    category varchar(50) NOT NULL
)
WITH (oids = false);
--
-- Definition for index account_pkey (OID = 16418) : 
--
ALTER TABLE ONLY account
    ADD CONSTRAINT account_pkey
    PRIMARY KEY (id);
--
-- Definition for index practic_pkey (OID = 16515) : 
--
ALTER TABLE ONLY practic
    ADD CONSTRAINT practic_pkey
    PRIMARY KEY (id);
--
-- Definition for index certificate_pkey (OID = 16525) : 
--
ALTER TABLE ONLY certificate
    ADD CONSTRAINT certificate_pkey
    PRIMARY KEY (id);
--
-- Definition for index practic_fk (OID = 16532) : 
--
ALTER TABLE ONLY practic
    ADD CONSTRAINT practic_fk
    FOREIGN KEY (id_account) REFERENCES account(id) ON UPDATE CASCADE ON DELETE CASCADE;
--
-- Definition for index certificate_fk (OID = 16537) : 
--
ALTER TABLE ONLY certificate
    ADD CONSTRAINT certificate_fk
    FOREIGN KEY (id_account) REFERENCES account(id) ON UPDATE CASCADE ON DELETE CASCADE;
--
-- Definition for index course_pkey (OID = 16545) : 
--
ALTER TABLE ONLY course
    ADD CONSTRAINT course_pkey
    PRIMARY KEY (id);
--
-- Definition for index courses_fk (OID = 16547) : 
--
ALTER TABLE ONLY course
    ADD CONSTRAINT courses_fk
    FOREIGN KEY (id_account) REFERENCES account(id) ON UPDATE CASCADE ON DELETE CASCADE;
--
-- Definition for index education_pkey (OID = 16555) : 
--
ALTER TABLE ONLY education
    ADD CONSTRAINT education_pkey
    PRIMARY KEY (id);
--
-- Definition for index account_uid_key (OID = 16648) : 
--
ALTER TABLE ONLY account
    ADD CONSTRAINT account_uid_key
    UNIQUE (uid);
--
-- Definition for index education_fk (OID = 16658) : 
--
ALTER TABLE ONLY education
    ADD CONSTRAINT education_fk
    FOREIGN KEY (id_account) REFERENCES account(id) ON UPDATE CASCADE ON DELETE CASCADE;
--
-- Definition for index hobby_pkey (OID = 16666) : 
--
ALTER TABLE ONLY hobby
    ADD CONSTRAINT hobby_pkey
    PRIMARY KEY (id);
--
-- Definition for index hobby_fk (OID = 16668) : 
--
ALTER TABLE ONLY hobby
    ADD CONSTRAINT hobby_fk
    FOREIGN KEY (id_account) REFERENCES account(id) ON UPDATE CASCADE ON DELETE CASCADE;
--
-- Definition for index skill_pkey (OID = 16679) : 
--
ALTER TABLE ONLY skill
    ADD CONSTRAINT skill_pkey
    PRIMARY KEY (id);
--
-- Definition for index skill_fk (OID = 16681) : 
--
ALTER TABLE ONLY skill
    ADD CONSTRAINT skill_fk
    FOREIGN KEY (id_account) REFERENCES account(id) ON UPDATE CASCADE ON DELETE CASCADE;
--
-- Definition for index language_pkey (OID = 16697) : 
--
ALTER TABLE ONLY language
    ADD CONSTRAINT language_pkey
    PRIMARY KEY (id);
--
-- Definition for index language_fk (OID = 16701) : 
--
ALTER TABLE ONLY language
    ADD CONSTRAINT language_fk
    FOREIGN KEY (id_account) REFERENCES account(id) ON UPDATE CASCADE ON DELETE CASCADE;
--
-- Definition for index account_restore_pkey (OID = 16709) : 
--
ALTER TABLE ONLY account_restore
    ADD CONSTRAINT account_restore_pkey
    PRIMARY KEY (id);
--
-- Definition for index account_restore_token_key (OID = 16711) : 
--
ALTER TABLE ONLY account_restore
    ADD CONSTRAINT account_restore_token_key
    UNIQUE (token);
--
-- Definition for index account_restore_fk (OID = 16713) : 
--
ALTER TABLE ONLY account_restore
    ADD CONSTRAINT account_restore_fk
    FOREIGN KEY (id) REFERENCES account(id) ON UPDATE CASCADE ON DELETE CASCADE;
--
-- Definition for index skill_category_pkey (OID = 16721) : 
--
ALTER TABLE ONLY skill_category
    ADD CONSTRAINT skill_category_pkey
    PRIMARY KEY (id);
--
-- Comments
--
COMMENT ON SCHEMA public IS 'standard public schema';
