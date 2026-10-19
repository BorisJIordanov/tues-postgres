--
-- PostgreSQL database dump
--

\restrict 5ERovWev1cdLel7qp9fVeadG21z2OzSjPzMBbDvRqk3dgQYIOOPuck5Fd8lRRVY

-- Dumped from database version 18.6 (Debian 18.6-1.pgdg13+2)
-- Dumped by pg_dump version 18.6 (Debian 18.6-1.pgdg13+2)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- Name: grades; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.grades (
    id integer NOT NULL,
    student_id integer NOT NULL,
    subject_id integer NOT NULL,
    grade integer NOT NULL,
    grade_date date NOT NULL,
    CONSTRAINT grades_grade_check CHECK (((grade >= 2) AND (grade <= 6)))
);


ALTER TABLE public.grades OWNER TO postgres;

--
-- Name: students; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.students (
    id integer NOT NULL,
    name character varying(100) NOT NULL
);


ALTER TABLE public.students OWNER TO postgres;

--
-- Name: subjects; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.subjects (
    id integer NOT NULL,
    name character varying(100) NOT NULL
);


ALTER TABLE public.subjects OWNER TO postgres;

--
-- Data for Name: grades; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.grades (id, student_id, subject_id, grade, grade_date) FROM stdin;
1	1	1	6	2026-10-01
2	1	1	5	2026-10-05
3	1	1	4	2026-10-12
4	1	2	6	2026-10-02
5	1	3	5	2026-10-08
6	2	1	5	2026-10-01
7	2	2	4	2026-10-03
8	2	2	6	2026-10-10
9	2	4	5	2026-10-12
10	3	1	3	2026-10-04
11	3	2	5	2026-10-05
12	3	3	6	2026-10-06
13	3	4	4	2026-10-09
14	4	1	4	2026-10-02
15	4	2	5	2026-10-07
16	4	3	4	2026-10-11
17	4	4	6	2026-10-13
18	5	1	5	2026-10-03
19	5	2	3	2026-10-04
20	5	3	5	2026-10-09
21	5	4	5	2026-10-14
22	2	3	6	2026-10-15
23	3	1	6	2026-10-16
24	4	2	4	2026-10-16
\.


--
-- Data for Name: students; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.students (id, name) FROM stdin;
1	Ivan Petrov
2	Maria Ivanova
3	Georgi Dimitrov
4	Elena Georgieva
5	Nikolay Stoyanov
\.


--
-- Data for Name: subjects; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.subjects (id, name) FROM stdin;
1	Mathematics
2	Programming
3	English
4	Physics
\.


--
-- Name: grades grades_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.grades
    ADD CONSTRAINT grades_pkey PRIMARY KEY (id);


--
-- Name: students students_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_pkey PRIMARY KEY (id);


--
-- Name: subjects subjects_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subjects
    ADD CONSTRAINT subjects_pkey PRIMARY KEY (id);


--
-- Name: grades grades_student_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.grades
    ADD CONSTRAINT grades_student_id_fkey FOREIGN KEY (student_id) REFERENCES public.students(id);


--
-- Name: grades grades_subject_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.grades
    ADD CONSTRAINT grades_subject_id_fkey FOREIGN KEY (subject_id) REFERENCES public.subjects(id);


--
-- PostgreSQL database dump complete
--

\unrestrict 5ERovWev1cdLel7qp9fVeadG21z2OzSjPzMBbDvRqk3dgQYIOOPuck5Fd8lRRVY

