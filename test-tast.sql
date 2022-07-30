--
-- PostgreSQL database dump
--

-- Dumped from database version 14.4
-- Dumped by pg_dump version 14.4

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
-- Name: transportation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.transportation (
    id integer NOT NULL,
    date date NOT NULL,
    name character varying NOT NULL,
    qty integer NOT NULL,
    distance integer NOT NULL
);


ALTER TABLE public.transportation OWNER TO postgres;

--
-- Name: transportation_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.transportation ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.transportation_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Data for Name: transportation; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.transportation (id, date, name, qty, distance) FROM stdin;
1	2022-03-01	sapien. Aenean	42	937
2	2022-11-19	Aliquam ultrices	23	345
3	2022-10-27	et ultrices	58	340
4	2021-07-27	Curabitur dictum	27	505
5	2022-04-01	Sed	2	213
6	2022-05-21	massa	83	732
7	2022-10-15	dolor	69	681
8	2021-09-16	Aenean	17	96
9	2023-05-10	et	15	550
10	2022-04-08	lorem	52	168
11	2021-12-01	ipsum	37	528
12	2022-03-04	diam. Sed	40	565
13	2022-04-25	in	34	496
14	2022-09-21	nec mauris	50	772
15	2022-10-05	tempor diam	65	443
16	2023-02-18	et magnis	31	806
17	2021-09-23	a odio	71	856
18	2021-12-10	Duis volutpat	92	992
19	2022-09-19	sed	4	579
20	2021-09-07	dis	9	65
\.


--
-- Name: transportation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.transportation_id_seq', 20, true);


--
-- Name: transportation transportation_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transportation
    ADD CONSTRAINT transportation_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

