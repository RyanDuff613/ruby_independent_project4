--
-- PostgreSQL database dump
--

-- Dumped from database version 12.2
-- Dumped by pg_dump version 12.2

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: Ryan
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO "Ryan";

--
-- Name: products; Type: TABLE; Schema: public; Owner: Ryan
--

CREATE TABLE public.products (
    id bigint NOT NULL,
    name character varying,
    cost numeric(5,2),
    country_of_origin character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.products OWNER TO "Ryan";

--
-- Name: products_id_seq; Type: SEQUENCE; Schema: public; Owner: Ryan
--

CREATE SEQUENCE public.products_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_id_seq OWNER TO "Ryan";

--
-- Name: products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Ryan
--

ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;


--
-- Name: reviews; Type: TABLE; Schema: public; Owner: Ryan
--

CREATE TABLE public.reviews (
    id bigint NOT NULL,
    author character varying,
    content_body character varying,
    rating integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    product_id integer
);


ALTER TABLE public.reviews OWNER TO "Ryan";

--
-- Name: reviews_id_seq; Type: SEQUENCE; Schema: public; Owner: Ryan
--

CREATE SEQUENCE public.reviews_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.reviews_id_seq OWNER TO "Ryan";

--
-- Name: reviews_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Ryan
--

ALTER SEQUENCE public.reviews_id_seq OWNED BY public.reviews.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: Ryan
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO "Ryan";

--
-- Name: products id; Type: DEFAULT; Schema: public; Owner: Ryan
--

ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);


--
-- Name: reviews id; Type: DEFAULT; Schema: public; Owner: Ryan
--

ALTER TABLE ONLY public.reviews ALTER COLUMN id SET DEFAULT nextval('public.reviews_id_seq'::regclass);


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: Ryan
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2020-05-29 16:46:10.313417	2020-05-29 16:46:10.313417
\.


--
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: Ryan
--

COPY public.products (id, name, cost, country_of_origin, created_at, updated_at) FROM stdin;
105	Camomile	10.00	Spaniards	2020-05-29 23:45:16.356953	2020-05-29 23:45:16.356953
106	Cloves	97.00	Brazilians	2020-05-29 23:45:16.360342	2020-05-29 23:45:16.360342
107	Red Cabbage	84.00	Arubans	2020-05-29 23:45:16.362234	2020-05-29 23:45:16.362234
108	Iceberg Lettuce	37.00	Belarusians	2020-05-29 23:45:16.364157	2020-05-29 23:45:16.364157
109	Purple Carrot	73.00	Ghanaians	2020-05-29 23:45:16.366134	2020-05-29 23:45:16.366134
110	Coconut Oil	29.00	Arubans	2020-05-29 23:45:16.368012	2020-05-29 23:45:16.368012
111	Bamboo Shoots	85.00	Afghans	2020-05-29 23:45:16.370008	2020-05-29 23:45:16.370008
112	Lamb	99.00	South Africans	2020-05-29 23:45:16.37194	2020-05-29 23:45:16.37194
113	Crabs	58.00	Nigerians	2020-05-29 23:45:16.373782	2020-05-29 23:45:16.373782
114	Kohlrabi	31.00	Malawians	2020-05-29 23:45:16.375582	2020-05-29 23:45:16.375582
115	Hijiki	76.00	Sindhian	2020-05-29 23:45:16.377389	2020-05-29 23:45:16.377389
116	Oatmeal	84.00	Kenyans	2020-05-29 23:45:16.379219	2020-05-29 23:45:16.379219
117	Bay Leaves	77.00	Belarusians	2020-05-29 23:45:16.381138	2020-05-29 23:45:16.381138
118	Nasturtium	10.00	Baltic Russians	2020-05-29 23:45:16.382976	2020-05-29 23:45:16.382976
119	Snapper	27.00	Panamanians	2020-05-29 23:45:16.384807	2020-05-29 23:45:16.384807
120	Mozzarella	22.00	Manx	2020-05-29 23:45:16.386573	2020-05-29 23:45:16.386573
121	Elderberry	41.00	Papua New Guineans	2020-05-29 23:45:16.388497	2020-05-29 23:45:16.388497
122	Papaw	40.00	Guianese (French)	2020-05-29 23:45:16.390383	2020-05-29 23:45:16.390383
123	Haricot Beans	67.00	Trinidadians	2020-05-29 23:45:16.392227	2020-05-29 23:45:16.392227
124	Galangal	81.00	Nigerians	2020-05-29 23:45:16.394037	2020-05-29 23:45:16.394037
125	Wholegrain Bread	83.00	Serbs	2020-05-29 23:45:16.395909	2020-05-29 23:45:16.395909
126	Olives	70.00	Algerians	2020-05-29 23:45:16.397806	2020-05-29 23:45:16.397806
127	Duck	11.00	Moldovans	2020-05-29 23:45:16.39974	2020-05-29 23:45:16.39974
128	Brussels Sprouts	53.00	Austrians	2020-05-29 23:45:16.401656	2020-05-29 23:45:16.401656
129	Olives	44.00	Arubans	2020-05-29 23:45:16.403613	2020-05-29 23:45:16.403613
130	Honeydew Melon	29.00	Nepalese	2020-05-29 23:45:16.405534	2020-05-29 23:45:16.405534
131	Wholemeal	57.00	Indonesians	2020-05-29 23:45:16.407372	2020-05-29 23:45:16.407372
132	Nuts	34.00	Koreans	2020-05-29 23:45:16.409192	2020-05-29 23:45:16.409192
133	Feijoa	68.00	Guatemalans	2020-05-29 23:45:16.411043	2020-05-29 23:45:16.411043
134	Silverbeet	30.00	Americans	2020-05-29 23:45:16.412931	2020-05-29 23:45:16.412931
135	Potatoes	34.00	Afghans	2020-05-29 23:45:16.414825	2020-05-29 23:45:16.414825
136	Pomegranate	16.00	Moroccans	2020-05-29 23:45:16.416683	2020-05-29 23:45:16.416683
137	Calamari	99.00	Ethiopians	2020-05-29 23:45:16.418504	2020-05-29 23:45:16.418504
138	Mussels	24.00	Gibraltar	2020-05-29 23:45:16.420336	2020-05-29 23:45:16.420336
139	Achacha	48.00	Trinidadians	2020-05-29 23:45:16.422178	2020-05-29 23:45:16.422178
140	Chinese Cabbage	51.00	Kenyans	2020-05-29 23:45:16.424073	2020-05-29 23:45:16.424073
141	Haricot Beans	75.00	Faroese	2020-05-29 23:45:16.426014	2020-05-29 23:45:16.426014
142	Calamari	18.00	Burkinabès	2020-05-29 23:45:16.427971	2020-05-29 23:45:16.427971
143	Starfruit	71.00	Maltese	2020-05-29 23:45:16.429806	2020-05-29 23:45:16.429806
144	Apples	67.00	Greeks	2020-05-29 23:45:16.431676	2020-05-29 23:45:16.431676
145	Cabbage	26.00	Nigeriens	2020-05-29 23:45:16.433539	2020-05-29 23:45:16.433539
146	Greenwheat Freekeh	11.00	Swiss	2020-05-29 23:45:16.435382	2020-05-29 23:45:16.435382
147	Jerusalem Artichoke	46.00	Zambians	2020-05-29 23:45:16.437274	2020-05-29 23:45:16.437274
148	Sunflower Seeds	84.00	Congolese	2020-05-29 23:45:16.439122	2020-05-29 23:45:16.439122
149	Feta	23.00	Libyans	2020-05-29 23:45:16.440992	2020-05-29 23:45:16.440992
150	Pinto Beans	91.00	Latvians	2020-05-29 23:45:16.442867	2020-05-29 23:45:16.442867
151	Curry Leaves	71.00	São Tomé and Príncipe	2020-05-29 23:45:16.444765	2020-05-29 23:45:16.444765
152	Wholewheat Flour	26.00	Singaporeans	2020-05-29 23:45:16.446722	2020-05-29 23:45:16.446722
153	Pasta	10.00	Fijians	2020-05-29 23:45:16.448732	2020-05-29 23:45:16.448732
154	Besan	91.00	Verdeans	2020-05-29 23:45:16.450954	2020-05-29 23:45:16.450954
\.


--
-- Data for Name: reviews; Type: TABLE DATA; Schema: public; Owner: Ryan
--

COPY public.reviews (id, author, content_body, rating, created_at, updated_at, product_id) FROM stdin;
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: Ryan
--

COPY public.schema_migrations (version) FROM stdin;
20200529163227
20200529164859
20200529170600
20200529171157
\.


--
-- Name: products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Ryan
--

SELECT pg_catalog.setval('public.products_id_seq', 154, true);


--
-- Name: reviews_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Ryan
--

SELECT pg_catalog.setval('public.reviews_id_seq', 4, true);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: Ryan
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: Ryan
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);


--
-- Name: reviews reviews_pkey; Type: CONSTRAINT; Schema: public; Owner: Ryan
--

ALTER TABLE ONLY public.reviews
    ADD CONSTRAINT reviews_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: Ryan
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: reviews fk_rails_bedd9094d4; Type: FK CONSTRAINT; Schema: public; Owner: Ryan
--

ALTER TABLE ONLY public.reviews
    ADD CONSTRAINT fk_rails_bedd9094d4 FOREIGN KEY (product_id) REFERENCES public.products(id);


--
-- PostgreSQL database dump complete
--

