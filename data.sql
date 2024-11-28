--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.10
-- Dumped by pg_dump version 9.6.10

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: _auth_group; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._auth_group (
    id character varying(1) DEFAULT NULL::character varying,
    name character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._auth_group OWNER TO rebasedata;

--
-- Name: _auth_group_permissions; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._auth_group_permissions (
    id character varying(1) DEFAULT NULL::character varying,
    group_id character varying(1) DEFAULT NULL::character varying,
    permission_id character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._auth_group_permissions OWNER TO rebasedata;

--
-- Name: _auth_permission; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._auth_permission (
    id smallint,
    content_type_id smallint,
    codename character varying(22) DEFAULT NULL::character varying,
    name character varying(27) DEFAULT NULL::character varying
);


ALTER TABLE public._auth_permission OWNER TO rebasedata;

--
-- Name: _auth_user; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._auth_user (
    id smallint,
    password character varying(88) DEFAULT NULL::character varying,
    last_login character varying(10) DEFAULT NULL::character varying,
    is_superuser smallint,
    username character varying(15) DEFAULT NULL::character varying,
    last_name character varying(1) DEFAULT NULL::character varying,
    email character varying(28) DEFAULT NULL::character varying,
    is_staff smallint,
    is_active smallint,
    date_joined character varying(10) DEFAULT NULL::character varying,
    first_name character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._auth_user OWNER TO rebasedata;

--
-- Name: _auth_user_groups; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._auth_user_groups (
    id character varying(1) DEFAULT NULL::character varying,
    user_id character varying(1) DEFAULT NULL::character varying,
    group_id character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._auth_user_groups OWNER TO rebasedata;

--
-- Name: _auth_user_user_permissions; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._auth_user_user_permissions (
    id character varying(1) DEFAULT NULL::character varying,
    user_id character varying(1) DEFAULT NULL::character varying,
    permission_id character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._auth_user_user_permissions OWNER TO rebasedata;

--
-- Name: _django_admin_log; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._django_admin_log (
    id smallint,
    action_time character varying(10) DEFAULT NULL::character varying,
    object_id smallint,
    object_repr character varying(20) DEFAULT NULL::character varying,
    change_message character varying(53) DEFAULT NULL::character varying,
    content_type_id smallint,
    user_id smallint,
    action_flag smallint
);


ALTER TABLE public._django_admin_log OWNER TO rebasedata;

--
-- Name: _django_content_type; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._django_content_type (
    id smallint,
    app_label character varying(12) DEFAULT NULL::character varying,
    model character varying(15) DEFAULT NULL::character varying
);


ALTER TABLE public._django_content_type OWNER TO rebasedata;

--
-- Name: _django_migrations; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._django_migrations (
    id smallint,
    app character varying(12) DEFAULT NULL::character varying,
    name character varying(40) DEFAULT NULL::character varying,
    applied character varying(10) DEFAULT NULL::character varying
);


ALTER TABLE public._django_migrations OWNER TO rebasedata;

--
-- Name: _django_session; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._django_session (
    session_key character varying(32) DEFAULT NULL::character varying,
    session_data character varying(226) DEFAULT NULL::character varying,
    expire_date character varying(10) DEFAULT NULL::character varying
);


ALTER TABLE public._django_session OWNER TO rebasedata;

--
-- Name: _sqlite_sequence; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._sqlite_sequence (
    name character varying(21) DEFAULT NULL::character varying,
    seq smallint
);


ALTER TABLE public._sqlite_sequence OWNER TO rebasedata;

--
-- Name: _store_customer; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._store_customer (
    id smallint,
    name character varying(17) DEFAULT NULL::character varying,
    email character varying(28) DEFAULT NULL::character varying,
    user_id character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._store_customer OWNER TO rebasedata;

--
-- Name: _store_order; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._store_order (
    id smallint,
    date_order character varying(10) DEFAULT NULL::character varying,
    complete smallint,
    transaction_id character varying(17) DEFAULT NULL::character varying,
    customer_id smallint
);


ALTER TABLE public._store_order OWNER TO rebasedata;

--
-- Name: _store_orderitem; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._store_orderitem (
    id smallint,
    quantity smallint,
    date_added character varying(10) DEFAULT NULL::character varying,
    order_id smallint,
    product_id smallint
);


ALTER TABLE public._store_orderitem OWNER TO rebasedata;

--
-- Name: _store_product; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._store_product (
    id smallint,
    name character varying(20) DEFAULT NULL::character varying,
    price numeric(5,2) DEFAULT NULL::numeric,
    digital smallint,
    image character varying(25) DEFAULT NULL::character varying
);


ALTER TABLE public._store_product OWNER TO rebasedata;

--
-- Name: _store_shippingaddress; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._store_shippingaddress (
    id smallint,
    address character varying(48) DEFAULT NULL::character varying,
    city character varying(8) DEFAULT NULL::character varying,
    state character varying(8) DEFAULT NULL::character varying,
    zipcode smallint,
    date_added character varying(10) DEFAULT NULL::character varying,
    customer_id smallint,
    order_id smallint
);


ALTER TABLE public._store_shippingaddress OWNER TO rebasedata;

--
-- Data for Name: _auth_group; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: _auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: _auth_permission; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._auth_permission (id, content_type_id, codename, name) FROM stdin;
1	1	add_logentry	Can add log entry
2	1	change_logentry	Can change log entry
3	1	delete_logentry	Can delete log entry
4	1	view_logentry	Can view log entry
5	2	add_permission	Can add permission
6	2	change_permission	Can change permission
7	2	delete_permission	Can delete permission
8	2	view_permission	Can view permission
9	3	add_group	Can add group
10	3	change_group	Can change group
11	3	delete_group	Can delete group
12	3	view_group	Can view group
13	4	add_user	Can add user
14	4	change_user	Can change user
15	4	delete_user	Can delete user
16	4	view_user	Can view user
17	5	add_contenttype	Can add content type
18	5	change_contenttype	Can change content type
19	5	delete_contenttype	Can delete content type
20	5	view_contenttype	Can view content type
21	6	add_session	Can add session
22	6	change_session	Can change session
23	6	delete_session	Can delete session
24	6	view_session	Can view session
25	7	add_customer	Can add customer
26	7	change_customer	Can change customer
27	7	delete_customer	Can delete customer
28	7	view_customer	Can view customer
29	8	add_order	Can add order
30	8	change_order	Can change order
31	8	delete_order	Can delete order
32	8	view_order	Can view order
33	9	add_product	Can add product
34	9	change_product	Can change product
35	9	delete_product	Can delete product
36	9	view_product	Can view product
37	10	add_shippingaddress	Can add shipping address
38	10	change_shippingaddress	Can change shipping address
39	10	delete_shippingaddress	Can delete shipping address
40	10	view_shippingaddress	Can view shipping address
41	11	add_orderitem	Can add order item
42	11	change_orderitem	Can change order item
43	11	delete_orderitem	Can delete order item
44	11	view_orderitem	Can view order item
\.


--
-- Data for Name: _auth_user; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._auth_user (id, password, last_login, is_superuser, username, last_name, email, is_staff, is_active, date_joined, first_name) FROM stdin;
1	pbkdf2_sha256$260000$BbOsJMV8hwkyOZguEA3Ztc$2Ko9q859B2H21/pt2ys4o7nTfWzoL30oW/G+YWImzHs=	2021-05-01	1	Ruhul		ruhulaminparvez007@gmail.com	1	1	2021-05-01	
2	pbkdf2_sha256$260000$vZOeyUvhqhbpzQw1V8u0HD$vaKrJbrtqrLZbmNuQy1hSFRSIxx+k4HzaJ63zCxsq3E=	2021-09-12	1	ruhulaminparvez		ruhulaminparvez007@gmail.com	1	1	2021-09-10	
\.


--
-- Data for Name: _auth_user_groups; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: _auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: _django_admin_log; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._django_admin_log (id, action_time, object_id, object_repr, change_message, content_type_id, user_id, action_flag) FROM stdin;
1	2021-05-01	1	Headphones	[{"added": {}}]	9	1	1
2	2021-05-01	1	Headphones	[{"changed": {"fields": ["Digital"]}}]	9	1	2
3	2021-05-01	2	Mount of Olives Book	[{"added": {}}]	9	1	1
4	2021-05-01	3	Project Source Code	[{"added": {}}]	9	1	1
5	2021-05-01	4	Watch	[{"added": {}}]	9	1	1
6	2021-05-01	5	Shoes	[{"added": {}}]	9	1	1
7	2021-05-01	6	T-shirt	[{"added": {}}]	9	1	1
8	2021-05-04	6	T-shirt	[{"changed": {"fields": ["Image"]}}]	9	1	2
9	2021-05-04	5	Shoes	[{"changed": {"fields": ["Image"]}}]	9	1	2
10	2021-05-04	4	Watch	[{"changed": {"fields": ["Image"]}}]	9	1	2
11	2021-05-04	3	Project Source Code	[{"changed": {"fields": ["Image"]}}]	9	1	2
12	2021-05-04	2	Mount of Olives Book	[{"changed": {"fields": ["Image"]}}]	9	1	2
13	2021-05-04	1	Headphones	[{"changed": {"fields": ["Image"]}}]	9	1	2
14	2021-05-04	6	Buds	[{"changed": {"fields": ["Name", "Image"]}}]	9	1	2
15	2021-05-04	4	Watch	[{"changed": {"fields": ["Image"]}}]	9	1	2
16	2021-05-04	3	Bag	[{"changed": {"fields": ["Name", "Image"]}}]	9	1	2
17	2021-05-04	2	Mount of Olives Book	[{"changed": {"fields": ["Image"]}}]	9	1	2
18	2021-05-04	6	Plant	[{"changed": {"fields": ["Name", "Image"]}}]	9	1	2
19	2021-05-04	3	Camera	[{"changed": {"fields": ["Name", "Price", "Image"]}}]	9	1	2
20	2021-05-04	6	Plant	[{"changed": {"fields": ["Image"]}}]	9	1	2
21	2021-05-04	3	Camera	[{"changed": {"fields": ["Image"]}}]	9	1	2
22	2021-05-04	4	Watch	[{"changed": {"fields": ["Image"]}}]	9	1	2
23	2021-05-04	7	Air Buds	[{"added": {}}]	9	1	1
24	2021-05-04	8	Cap	[{"added": {}}]	9	1	1
25	2021-05-04	9	Sun Glass	[{"added": {}}]	9	1	1
26	2021-05-04	10	Face Wash	[{"added": {}}]	9	1	1
27	2021-05-04	11	Perfume	[{"added": {}}]	9	1	1
28	2021-05-04	12	Mobile	[{"added": {}}]	9	1	1
29	2021-05-04	13	Shirt	[{"added": {}}]	9	1	1
30	2021-05-04	14	T-shirt	[{"added": {}}]	9	1	1
31	2021-05-04	15	Travel Bag	[{"added": {}}]	9	1	1
32	2021-05-06	1	Ruhul Amin	[{"added": {}}]	7	1	1
33	2021-05-06	1	1	[{"added": {}}]	8	1	1
34	2021-05-06	1	OrderItem object (1)	[{"added": {}}]	11	1	1
35	2021-05-06	2	OrderItem object (2)	[{"added": {}}]	11	1	1
36	2021-05-06	10	Face Wash	[{"changed": {"fields": ["Image"]}}]	9	1	2
37	2021-05-06	11	Perfume	[{"changed": {"fields": ["Image"]}}]	9	1	2
38	2021-05-06	11	Perfume	[{"changed": {"fields": ["Image"]}}]	9	1	2
39	2021-05-06	11	Perfume	[{"changed": {"fields": ["Image"]}}]	9	1	2
40	2021-05-06	11	Perfume	[{"changed": {"fields": ["Image"]}}]	9	1	2
41	2021-05-06	11	Perfume	[{"changed": {"fields": ["Image"]}}]	9	1	2
42	2021-05-06	11	Perfume	[{"changed": {"fields": ["Image"]}}]	9	1	2
43	2021-05-06	11	Perfume	[{"changed": {"fields": ["Image"]}}]	9	1	2
44	2021-05-06	11	Perfume	[]	9	1	2
45	2021-05-06	11	Perfume	[{"changed": {"fields": ["Image"]}}]	9	1	2
46	2021-05-06	11	Perfume	[{"changed": {"fields": ["Image"]}}]	9	1	2
47	2021-05-06	11	Perfume	[{"changed": {"fields": ["Image"]}}]	9	1	2
48	2021-05-06	11	Perfume	[{"changed": {"fields": ["Image"]}}]	9	1	2
49	2021-05-06	11	Perfume	[{"changed": {"fields": ["Image"]}}]	9	1	2
50	2021-05-06	11	Speaker	[{"changed": {"fields": ["Name", "Price", "Image"]}}]	9	1	2
51	2021-05-06	4	Watch	[{"changed": {"fields": ["Image"]}}]	9	1	2
52	2021-09-10	1	OrderItem object (1)		11	2	3
53	2021-09-10	2	OrderItem object (2)		11	2	3
54	2021-09-10	1	1		8	2	3
55	2021-09-10	1	Ruhul Amin		7	2	3
56	2021-09-10	2	ruhulamin	[{"added": {}}]	7	2	1
57	2021-09-10	2	ruhulamin		7	2	3
58	2021-09-10	3	Ruhul Amin Parvez	[{"added": {}}]	7	2	1
59	2021-09-10	2	2	[{"added": {}}]	8	2	1
60	2021-09-10	3	OrderItem object (3)	[{"added": {}}]	11	2	1
61	2021-09-10	4	OrderItem object (4)	[{"added": {}}]	11	2	1
62	2021-09-11	2	Mount of Olives Book	[{"changed": {"fields": ["Digital"]}}]	9	2	2
63	2021-09-12	16	Sneakers	[{"added": {}}]	9	2	1
64	2021-09-12	17	Book	[{"added": {}}]	9	2	1
65	2021-09-12	18	Shirt	[{"added": {}}]	9	2	1
66	2021-09-12	18	Shirt		9	2	3
67	2021-09-12	17	Book		9	2	3
68	2021-09-12	16	Sneakers		9	2	3
69	2021-09-12	19	Sneakers	[{"added": {}}]	9	2	1
70	2021-09-12	20	Yellow Shirt	[{"added": {}}]	9	2	1
71	2021-09-12	21	Book	[{"added": {}}]	9	2	1
72	2021-09-12	22	Headsphones	[{"added": {}}]	9	2	1
73	2021-09-12	22	Headsphones		9	2	3
74	2021-09-12	21	Book		9	2	3
75	2021-09-12	20	Yellow Shirt		9	2	3
76	2021-09-12	19	Sneakers		9	2	3
77	2021-09-12	23	Sneakers	[{"added": {}}]	9	2	1
78	2021-09-12	24	Yellow Shirt	[{"added": {}}]	9	2	1
79	2021-09-12	25	Book	[{"added": {}}]	9	2	1
\.


--
-- Data for Name: _django_content_type; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
3	auth	group
2	auth	permission
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	store	customer
8	store	order
11	store	orderitem
9	store	product
10	store	shippingaddress
\.


--
-- Data for Name: _django_migrations; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2021-05-01
2	auth	0001_initial	2021-05-01
3	admin	0001_initial	2021-05-01
4	admin	0002_logentry_remove_auto_add	2021-05-01
5	admin	0003_logentry_add_action_flag_choices	2021-05-01
6	contenttypes	0002_remove_content_type_name	2021-05-01
7	auth	0002_alter_permission_name_max_length	2021-05-01
8	auth	0003_alter_user_email_max_length	2021-05-01
9	auth	0004_alter_user_username_opts	2021-05-01
10	auth	0005_alter_user_last_login_null	2021-05-01
11	auth	0006_require_contenttypes_0002	2021-05-01
12	auth	0007_alter_validators_add_error_messages	2021-05-01
13	auth	0008_alter_user_username_max_length	2021-05-01
14	auth	0009_alter_user_last_name_max_length	2021-05-01
15	auth	0010_alter_group_name_max_length	2021-05-01
16	auth	0011_update_proxy_permissions	2021-05-01
17	auth	0012_alter_user_first_name_max_length	2021-05-01
18	sessions	0001_initial	2021-05-01
19	store	0001_initial	2021-05-01
20	store	0002_product_image	2021-05-04
\.


--
-- Data for Name: _django_session; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._django_session (session_key, session_data, expire_date) FROM stdin;
txkrzn4u97bgf4wqifikf600qomo31jr	.eJxVjDEOwjAMRe-SGUXgNLhhZO8ZIjt2SAGlUtNOiLtDpQ6w_vfef5lI61Li2nSOo5iLOZnD78aUHlo3IHeqt8mmqS7zyHZT7E6bHSbR53V3_w4KtfKtHQhSAD2T-tz7lDsOkpMTRgbCDCCdl4wSwLmsQD0eSRM6jwiS2Lw_Dis4_g:1lcxZp:2mUKHVc1sILArTDgqVvWirNblOF56I8zI16j9Y367Zk	2021-05-15
ougnj1vmhfzfv5vgwzjuyhtj3n39djjl	.eJxVjEEOwiAQAP_C2ZAutAgevfuGZmF3pWogKe3J-HdD0oNeZybzVjPuW573xuu8kLooo06_LGJ6cumCHljuVadatnWJuif6sE3fKvHrerR_g4wt920SQLEIYyBwwZsEjicn0Q7IMVimIbjxDB45sJDzYiZrABIZCYyoPl_uFzhl:1mP0m6:JwPCoMDUiKJypR_jYSiA6p0JUcC32yJ-jE95t5_6wZ4	2021-09-25
\.


--
-- Data for Name: _sqlite_sequence; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._sqlite_sequence (name, seq) FROM stdin;
django_migrations	20
django_admin_log	79
django_content_type	11
auth_permission	44
auth_group	0
auth_user	2
store_product	25
store_customer	5
store_order	15
store_orderitem	40
store_shippingaddress	7
\.


--
-- Data for Name: _store_customer; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._store_customer (id, name, email, user_id) FROM stdin;
3	Ruhul Amin Parvez	ruhulaminparvez007@gmail.com	2
4	SABINA	varsityworks03@gmail.com	
5	newUser	new@gmail.com	
\.


--
-- Data for Name: _store_order; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._store_order (id, date_order, complete, transaction_id, customer_id) FROM stdin;
2	2021-09-10	1	1631359677.328553	3
3	2021-09-11	1	1631359758.336635	3
4	2021-09-11	1	1631359775.958279	3
5	2021-09-11	1	1631360076.076647	3
6	2021-09-11	1	1631360093.823332	3
7	2021-09-11	1	1631385779.297626	3
8	2021-09-11	1	1631437861.2598	3
9	2021-09-12	1	1631469152.192069	3
10	2021-09-12	1	1631469305.647263	3
11	2021-09-12	1	1631469499.488966	3
12	2021-09-12	1	1631471384.985449	3
13	2021-09-12	1	1631469580.957803	4
14	2021-09-12	0		3
15	2021-09-12	1	1631471469.085241	5
\.


--
-- Data for Name: _store_orderitem; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._store_orderitem (id, quantity, date_added, order_id, product_id) FROM stdin;
10	1	2021-09-11	2	1
11	1	2021-09-11	3	3
12	1	2021-09-11	4	2
13	1	2021-09-11	5	2
14	1	2021-09-11	6	6
15	1	2021-09-11	7	3
16	1	2021-09-12	8	2
17	1	2021-09-12	8	3
19	1	2021-09-12	9	1
20	1	2021-09-12	9	3
23	1	2021-09-12	10	14
24	1	2021-09-12	10	15
25	1	2021-09-12	10	13
27	2	2021-09-12	11	5
28	1	2021-09-12	11	6
29	2	2021-09-12	11	14
30	1	2021-09-12	11	13
31	3	2021-09-12	13	1
32	2	2021-09-12	13	14
33	1	2021-09-12	13	15
35	2	2021-09-12	12	24
37	2	2021-09-12	12	15
38	2	2021-09-12	12	13
39	2	2021-09-12	15	2
40	1	2021-09-12	15	3
\.


--
-- Data for Name: _store_product; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._store_product (id, name, price, digital, image) FROM stdin;
1	Headphones	179.00	0	headphones.jpg
2	Mount of Olives Book	14.99	1	book.jpg
3	Camera	599.99	1	camera.jpg
4	Watch	259.00	0	apple-watch.jpg
5	Shoes	150.00	0	shoes.jpg
6	Plant	99.00	0	plant.jpg
7	Air Buds	50.99	0	buds.jpg
8	Cap	25.00	0	cap.jpg
9	Sun Glass	20.00	0	sun-glass.jpg
10	Face Wash	15.99	0	facewash.jpg
11	Speaker	125.00	0	speaker.jpg
12	Mobile	100.00	0	mobile.jpg
13	Shirt	39.99	0	shirt.jpg
14	T-shirt	25.99	0	tshirt.jpg
15	Travel Bag	55.99	0	travel-bag.jpg
23	Sneakers	350.00	0	sneakers_Hb2Op4C.jpg
24	Yellow Shirt	150.00	0	shirt-another_IBd2jh9.jpg
25	Book	50.00	1	book-another_K1HOPeg.jpg
\.


--
-- Data for Name: _store_shippingaddress; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._store_shippingaddress (id, address, city, state, zipcode, date_added, customer_id, order_id) FROM stdin;
1	Dhaka	Dhaka	Dhaka	3310	2021-09-11	3	2
2	bahubal	sylhet	habiganj	3310	2021-09-11	3	6
3	Dhanmondi - 27, Dhaka, Bahubal, Habiganj, Sylhet	Dhaka	Dhaka	3310	2021-09-12	3	9
4	Dhanmondi - 27, Dhaka, Bahubal, Habiganj, Sylhet	Habiganj	Dhaka	3310	2021-09-12	3	10
5	Dhanmondi - 27, Dhaka, Bahubal, Habiganj, Sylhet	Dhaka	Dhaka	3310	2021-09-12	3	11
6	Dhanmondi - 27, Dhaka, Bahubal, Habiganj, Sylhet	Dhaka	Dhaka	3310	2021-09-12	4	13
7	Dhanmondi - 27, Dhaka, Bahubal, Habiganj, Sylhet	Dhaka	Dhaka	3310	2021-09-12	3	12
\.


--
-- PostgreSQL database dump complete
--

