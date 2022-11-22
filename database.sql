--
-- PostgreSQL database dump
--

-- Dumped from database version 14.1
-- Dumped by pg_dump version 14.1

-- Started on 2022-03-12 12:58:14



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

DROP DATABASE agenda;
--
-- TOC entry 3335 (class 1262 OID 16394)
-- Name: agenda; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE agenda WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Spain.1252';


ALTER DATABASE agenda OWNER TO postgres;

--\connect agenda

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

--
-- TOC entry 211 (class 1259 OID 16465)
-- Name: contacto_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.contacto_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.contacto_id_seq OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 212 (class 1259 OID 16466)
-- Name: contacto; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.contacto (
    id integer DEFAULT nextval('public.contacto_id_seq'::regclass) NOT NULL,
    nombre character varying(100) NOT NULL,
    apellidos character varying(200) NOT NULL,
    direccion character varying(200) NOT NULL,
    email character varying(100) NOT NULL,
    telefono character varying(100) NOT NULL,
    "fechaCreacion" timestamp without time zone NOT NULL
);


ALTER TABLE public.contacto OWNER TO postgres;

--
-- TOC entry 213 (class 1259 OID 16478)
-- Name: pertenece_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pertenece_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pertenece_id_seq OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 16563)
-- Name: pertenece; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pertenece (
    id integer DEFAULT nextval('public.pertenece_id_seq'::regclass) NOT NULL,
    id_usuario smallint NOT NULL,
    id_contacto smallint NOT NULL
);


ALTER TABLE public.pertenece OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 16418)
-- Name: usuario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuario (
    id integer NOT NULL,
    nombre character varying(50) NOT NULL,
    apellidos character varying(100) NOT NULL,
    email character varying(100) NOT NULL,
    password character varying(100) NOT NULL
);


ALTER TABLE public.usuario OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 16417)
-- Name: usuario_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.usuario_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.usuario_id_seq OWNER TO postgres;

--
-- TOC entry 3337 (class 0 OID 0)
-- Dependencies: 209
-- Name: usuario_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.usuario_id_seq OWNED BY public.usuario.id;


--
-- TOC entry 3174 (class 2604 OID 16421)
-- Name: usuario id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario ALTER COLUMN id SET DEFAULT nextval('public.usuario_id_seq'::regclass);


--
-- TOC entry 3327 (class 0 OID 16466)
-- Dependencies: 212
-- Data for Name: contacto; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.contacto (id, nombre, apellidos, direccion, email, telefono, "fechaCreacion") VALUES (21, 'Lucia', 'Domínguez', 'C/Torneo 18 1ºD', 'luci@gmail.com', '677004546', '2022-03-03 10:00:49.317622');
INSERT INTO public.contacto (id, nombre, apellidos, direccion, email, telefono, "fechaCreacion") VALUES (4, 'Sofía', 'Fernández', 'C/Tetuán 71', 'sofia@gmail.com', '695122014', '2022-02-18 00:00:00');
INSERT INTO public.contacto (id, nombre, apellidos, direccion, email, telefono, "fechaCreacion") VALUES (26, 'Rocio', 'Gómez', 'C/Sol 3', 'roci34@gmail.com', '674456444', '2022-03-06 22:53:51.421436');
INSERT INTO public.contacto (id, nombre, apellidos, direccion, email, telefono, "fechaCreacion") VALUES (28, 'Raul', 'Vega', 'C/Toneleros 7', 'raul@hotmail.com', '675400127', '2022-03-07 17:15:17.241052');
INSERT INTO public.contacto (id, nombre, apellidos, direccion, email, telefono, "fechaCreacion") VALUES (30, 'Marina', 'Cerdán Vázquez', 'C/Federico García Lorca 7', 'marina@gmail.com', '637103700', '2022-03-07 17:15:17.241052');
INSERT INTO public.contacto (id, nombre, apellidos, direccion, email, telefono, "fechaCreacion") VALUES (31, 'Antonio', 'Sánchez ', 'Av. Miraflores 72 4ºD', 'antsan176@hotmail.com', '600237803', '2022-03-07 17:15:17.241052');
INSERT INTO public.contacto (id, nombre, apellidos, direccion, email, telefono, "fechaCreacion") VALUES (19, 'Jose', 'Moreno Rodríguez', 'C/Catadores', 'jose@gmail.com', '678453764', '2022-03-02 16:28:29.237501');
INSERT INTO public.contacto (id, nombre, apellidos, direccion, email, telefono, "fechaCreacion") VALUES (32, 'Andrés', 'Romero', 'C/Fuencarral 27', 'andy@gmail.com', '678951100', '2022-03-07 17:15:17.241052');


--
-- TOC entry 3329 (class 0 OID 16563)
-- Dependencies: 214
-- Data for Name: pertenece; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.pertenece (id, id_usuario, id_contacto) VALUES (4, 3, 4);
INSERT INTO public.pertenece (id, id_usuario, id_contacto) VALUES (19, 3, 19);
INSERT INTO public.pertenece (id, id_usuario, id_contacto) VALUES (21, 3, 21);
INSERT INTO public.pertenece (id, id_usuario, id_contacto) VALUES (25, 3, 28);
INSERT INTO public.pertenece (id, id_usuario, id_contacto) VALUES (27, 3, 30);
INSERT INTO public.pertenece (id, id_usuario, id_contacto) VALUES (28, 3, 31);
INSERT INTO public.pertenece (id, id_usuario, id_contacto) VALUES (29, 3, 32);


--
-- TOC entry 3325 (class 0 OID 16418)
-- Dependencies: 210
-- Data for Name: usuario; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.usuario (id, nombre, apellidos, email, password) VALUES (3, 'Miguel', 'Rodriguez', 'miguel@gmail.com', '1234');
INSERT INTO public.usuario (id, nombre, apellidos, email, password) VALUES (6, 'pepe', 'garcía', 'pepe@gmail.com', '1234');
INSERT INTO public.usuario (id, nombre, apellidos, email, password) VALUES (8, 'rocio', 'garcía', 'rocio@gmail.com', '1234');
INSERT INTO public.usuario (id, nombre, apellidos, email, password) VALUES (4, 'luis', 'tamayo', 'sergio@gmail.com', '1111');


--
-- TOC entry 3338 (class 0 OID 0)
-- Dependencies: 211
-- Name: contacto_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.contacto_id_seq', 32, true);


--
-- TOC entry 3339 (class 0 OID 0)
-- Dependencies: 213
-- Name: pertenece_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pertenece_id_seq', 29, true);


--
-- TOC entry 3340 (class 0 OID 0)
-- Dependencies: 209
-- Name: usuario_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.usuario_id_seq', 8, true);


--
-- TOC entry 3180 (class 2606 OID 16473)
-- Name: contacto contacto_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contacto
    ADD CONSTRAINT contacto_pkey PRIMARY KEY (id);


--
-- TOC entry 3182 (class 2606 OID 16568)
-- Name: pertenece pertenece_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pertenece
    ADD CONSTRAINT pertenece_pkey PRIMARY KEY (id);


--
-- TOC entry 3178 (class 2606 OID 16423)
-- Name: usuario usuario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (id);


--
-- TOC entry 3183 (class 2606 OID 16569)
-- Name: pertenece fk_contacto; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pertenece
    ADD CONSTRAINT fk_contacto FOREIGN KEY (id_contacto) REFERENCES public.contacto(id);


--
-- TOC entry 3184 (class 2606 OID 16574)
-- Name: pertenece fk_usuario; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pertenece
    ADD CONSTRAINT fk_usuario FOREIGN KEY (id_usuario) REFERENCES public.usuario(id);


--
-- TOC entry 3336 (class 0 OID 0)
-- Dependencies: 3335
-- Name: DATABASE agenda; Type: ACL; Schema: -; Owner: postgres
--

GRANT ALL ON DATABASE agenda TO usuario;


-- Completed on 2022-03-12 12:58:14

--
-- PostgreSQL database dump complete
--


