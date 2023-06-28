--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: aliens; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.aliens (
    aliens_id integer NOT NULL,
    friendly boolean,
    planet_id integer,
    name character varying(30),
    species character varying(30) NOT NULL
);


ALTER TABLE public.aliens OWNER TO freecodecamp;

--
-- Name: aliens_aliens_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.aliens_aliens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.aliens_aliens_id_seq OWNER TO freecodecamp;

--
-- Name: aliens_aliens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.aliens_aliens_id_seq OWNED BY public.aliens.aliens_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    number_of_stars integer,
    description text,
    name character varying(30) NOT NULL,
    number_of_plnaets integer,
    species character varying(30)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    size integer,
    planet_id integer,
    type character varying(50) NOT NULL,
    name character varying(30) NOT NULL,
    habitable boolean NOT NULL,
    oxygen_lvl numeric,
    unique_type character varying(20)
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    size integer,
    type character varying(50) NOT NULL,
    name character varying(30) NOT NULL,
    habitable boolean NOT NULL,
    oxygen_lvl numeric,
    star_id integer,
    unique_type character varying(20)
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    size integer,
    galaxy_id integer,
    type character varying(50) NOT NULL,
    name character varying(30) NOT NULL,
    unique_type character varying(20)
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: aliens aliens_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.aliens ALTER COLUMN aliens_id SET DEFAULT nextval('public.aliens_aliens_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: aliens; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.aliens VALUES (2, NULL, NULL, 'Alf', 'hairy');
INSERT INTO public.aliens VALUES (3, NULL, NULL, 'Otto', 'animal');
INSERT INTO public.aliens VALUES (4, NULL, NULL, 'Paul', 'grey');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, NULL, NULL, 'Milky Way', NULL, NULL);
INSERT INTO public.galaxy VALUES (2, NULL, NULL, 'Andromeda', NULL, NULL);
INSERT INTO public.galaxy VALUES (3, NULL, NULL, 'Facalandia', NULL, NULL);
INSERT INTO public.galaxy VALUES (4, NULL, NULL, 'Anonymous', NULL, NULL);
INSERT INTO public.galaxy VALUES (5, NULL, NULL, 'Ring', NULL, NULL);
INSERT INTO public.galaxy VALUES (6, NULL, NULL, 'Galaxy4', NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (2, 2, 2, 'lost asteroid', 'luna', true, 12, NULL);
INSERT INTO public.moon VALUES (3, 2, 5, 'lost asteroid', 'lunatic', true, 12, NULL);
INSERT INTO public.moon VALUES (4, 2, 5, 'natural satellite', 'rock 3', false, 0, NULL);
INSERT INTO public.moon VALUES (5, 2, 5, 'natural satellite', 'rock 4', false, 0, NULL);
INSERT INTO public.moon VALUES (6, 2, 5, 'lost asteroid', 'rock 5', false, 0, NULL);
INSERT INTO public.moon VALUES (7, 2, 5, 'lost asteroid', 'rock 6', false, 0, NULL);
INSERT INTO public.moon VALUES (8, 2, 3, 'lost asteroid', 'rocky', false, 0, NULL);
INSERT INTO public.moon VALUES (9, 2, 3, 'natural satellite', 'wave', false, 0, NULL);
INSERT INTO public.moon VALUES (10, 2, 7, 'natural satellite', 'tlix', false, 0, NULL);
INSERT INTO public.moon VALUES (11, 2, 7, 'natural satellite', 'june', false, 0, NULL);
INSERT INTO public.moon VALUES (12, 2, 7, 'natural satellite', 'calix', false, 0, NULL);
INSERT INTO public.moon VALUES (13, 2, 9, 'natural satellite', 'X', false, 0, NULL);
INSERT INTO public.moon VALUES (14, 2, 9, 'natural satellite', 'XI', false, 0, NULL);
INSERT INTO public.moon VALUES (15, 2, 9, 'natural satellite', 'XII', false, 0, NULL);
INSERT INTO public.moon VALUES (16, 2, 9, 'lost asteroid', 'nickel storage', false, 0, NULL);
INSERT INTO public.moon VALUES (17, 2, 9, 'lost asteroid', 'copper  storage', false, 0, NULL);
INSERT INTO public.moon VALUES (18, 2, 9, 'lost asteroid', 'gold storage', false, 0, NULL);
INSERT INTO public.moon VALUES (19, 2, 9, 'lost asteroid', 'silver storage', false, 0, NULL);
INSERT INTO public.moon VALUES (20, 2, 9, 'lost asteroid', 'titanium  storage', false, 0, NULL);
INSERT INTO public.moon VALUES (21, 2, 9, 'lost asteroid', 'tiberium storage', false, 0, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (2, 5, 'Rocky', 'Earth2', true, 24.4, 3, NULL);
INSERT INTO public.planet VALUES (3, 5, 'Gas', 'Uranus2', false, 11.5, 3, NULL);
INSERT INTO public.planet VALUES (4, 2, 'Rocky', 'Venus', false, 5, 1, NULL);
INSERT INTO public.planet VALUES (5, 3, 'Rocky', 'Earth', true, 21, 1, NULL);
INSERT INTO public.planet VALUES (6, 3, 'Rocky', 'Mars', true, 9, 1, NULL);
INSERT INTO public.planet VALUES (7, 7, 'Saturn', 'Jupiter', false, 3, 1, NULL);
INSERT INTO public.planet VALUES (8, 8, 'Gas', 'Jupiter', false, 1, 1, NULL);
INSERT INTO public.planet VALUES (9, 8, 'Rocky', 'IX', true, 26, 5, NULL);
INSERT INTO public.planet VALUES (10, 5, 'Rocky', 'Dune', true, 34, 5, NULL);
INSERT INTO public.planet VALUES (11, 5, 'Rocky', 'Giedi Prime', true, 17, 5, NULL);
INSERT INTO public.planet VALUES (12, 5, 'Rocky', 'Caladan', true, 23, 5, NULL);
INSERT INTO public.planet VALUES (13, 5, 'Rocky', 'Salusa Secundus', true, 15, 5, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 2, 1, 'white dwarf', 'whity', NULL);
INSERT INTO public.star VALUES (2, 3, 1, 'pulsar', 'free energy', NULL);
INSERT INTO public.star VALUES (3, 4, 1, 'sun', 'Sol', NULL);
INSERT INTO public.star VALUES (4, 4, 3, 'sun', 'home', NULL);
INSERT INTO public.star VALUES (5, 2, 3, 'sun', '2nd star', NULL);
INSERT INTO public.star VALUES (6, 1, 3, 'white dwarf', 'will go boom any second', NULL);


--
-- Name: aliens_aliens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.aliens_aliens_id_seq', 4, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: aliens aliens_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.aliens
    ADD CONSTRAINT aliens_name_key UNIQUE (name);


--
-- Name: aliens aliens_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.aliens
    ADD CONSTRAINT aliens_pkey PRIMARY KEY (aliens_id);


--
-- Name: aliens aliens_species_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.aliens
    ADD CONSTRAINT aliens_species_key UNIQUE (species);


--
-- Name: galaxy galaxy_number_of_plnaets_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_number_of_plnaets_key UNIQUE (number_of_plnaets);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_species_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_species_key UNIQUE (species);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_unique_type_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_unique_type_key UNIQUE (unique_type);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_unique_type_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_unique_type_key UNIQUE (unique_type);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_unique_type_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_unique_type_key UNIQUE (unique_type);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--


