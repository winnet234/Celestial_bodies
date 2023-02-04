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
-- Name: celestial_bodies; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.celestial_bodies (
    name character varying(30) NOT NULL,
    description text NOT NULL,
    celestial_bodies_id integer NOT NULL
);


ALTER TABLE public.celestial_bodies OWNER TO freecodecamp;

--
-- Name: celestial_bodies_celestial_bodies_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.celestial_bodies_celestial_bodies_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.celestial_bodies_celestial_bodies_id_seq OWNER TO freecodecamp;

--
-- Name: celestial_bodies_celestial_bodies_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.celestial_bodies_celestial_bodies_id_seq OWNED BY public.celestial_bodies.celestial_bodies_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20) NOT NULL,
    distance_from_earth integer,
    age_in_millions_of_years numeric,
    description text,
    has_life boolean,
    is_spherical boolean
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
    name character varying(20) NOT NULL,
    distance_from_earth integer,
    age_in_millions_of_years numeric,
    description text,
    has_life boolean,
    is_spherical boolean,
    planet_id integer
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
    name character varying(20) NOT NULL,
    distance_from_earth integer,
    age_in_millions_of_years numeric,
    description text,
    has_life boolean,
    is_spherical boolean,
    star_id integer
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
    name character varying(20) NOT NULL,
    distance_from_earth integer,
    age_in_millions_of_years numeric,
    description text,
    has_life boolean,
    is_spherical boolean,
    galaxy_id integer NOT NULL
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
-- Name: celestial_bodies celestial_bodies_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.celestial_bodies ALTER COLUMN celestial_bodies_id SET DEFAULT nextval('public.celestial_bodies_celestial_bodies_id_seq'::regclass);


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
-- Data for Name: celestial_bodies; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.celestial_bodies VALUES ('Celestial Bodies one', 'Description about the Celestial bodies one', 1);
INSERT INTO public.celestial_bodies VALUES ('Celestial Bodies two', 'Description about the Celestial bodies two', 2);
INSERT INTO public.celestial_bodies VALUES ('Celestial Bodies three', 'Description about the Celestial bodies three', 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Galaxy one', 1000, 2000, 'Description about the Galaxy one', false, true);
INSERT INTO public.galaxy VALUES (2, 'Galaxy two', 2000, 3000, 'Description about the Galaxy two', false, true);
INSERT INTO public.galaxy VALUES (3, 'Galaxy three', 3000, 4000, 'Description about the Galaxy three', false, true);
INSERT INTO public.galaxy VALUES (4, 'Galaxy four', 4000, 5000, 'Description about the Galaxy four', false, true);
INSERT INTO public.galaxy VALUES (5, 'Galaxy five', 5000, 6000, 'Description about the Galaxy five', false, true);
INSERT INTO public.galaxy VALUES (6, 'Galaxy six', 5000, 6000, 'Description about the Galaxy six', false, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon one', 100, 20, 'Description about the Moon one', false, true, 1);
INSERT INTO public.moon VALUES (2, 'Moon two', 110, 20, 'Description about the Moon two', false, true, 2);
INSERT INTO public.moon VALUES (3, 'Moon three', 120, 20, 'Description about the Moon three', false, true, 1);
INSERT INTO public.moon VALUES (4, 'Moon four', 130, 20, 'Description about the Moon four', false, true, 2);
INSERT INTO public.moon VALUES (5, 'Moon five', 140, 20, 'Description about the Moon five', false, true, 3);
INSERT INTO public.moon VALUES (6, 'Moon six', 150, 20, 'Description about the Moon six', false, true, 3);
INSERT INTO public.moon VALUES (7, 'Moon seven', 160, 20, 'Description about the Moon seven', false, true, 4);
INSERT INTO public.moon VALUES (8, 'Moon eight', 170, 20, 'Description about the Moon eight', false, true, 4);
INSERT INTO public.moon VALUES (9, 'Moon nine', 180, 20, 'Description about the Moon nine', false, true, 5);
INSERT INTO public.moon VALUES (10, 'Moon ten', 190, 20, 'Description about the Moon ten', false, true, 5);
INSERT INTO public.moon VALUES (11, 'Moon eleven', 200, 21, 'Description about the Moon eleven', false, true, 6);
INSERT INTO public.moon VALUES (12, 'Moon twelve', 210, 21, 'Description about the Moon twelve', false, true, 6);
INSERT INTO public.moon VALUES (13, 'Moon thirteen', 220, 21, 'Description about the Moon thirteen', false, true, 7);
INSERT INTO public.moon VALUES (14, 'Moon fourteen', 230, 21, 'Description about the Moon fourteen', false, true, 7);
INSERT INTO public.moon VALUES (15, 'Moon fifteen', 240, 21, 'Description about the Moon fifteen', false, true, 8);
INSERT INTO public.moon VALUES (16, 'Moon sixteen', 250, 21, 'Description about the Moon sixteen', false, true, 8);
INSERT INTO public.moon VALUES (17, 'Moon seventeen', 260, 21, 'Description about the Moon seventeen', false, true, 9);
INSERT INTO public.moon VALUES (18, 'Moon eighteen', 270, 21, 'Description about the Moon eighteen', false, true, 9);
INSERT INTO public.moon VALUES (19, 'Moon nineteen', 280, 21, 'Description about the Moon nineteen', false, true, 10);
INSERT INTO public.moon VALUES (20, 'Moon twenty', 290, 21, 'Description about the Moon twenty', false, true, 10);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Planet one', 1000, 10, 'Description about the Planet one', true, true, 1);
INSERT INTO public.planet VALUES (2, 'Planet two', 1200, 10, 'Description about the Planet two', true, true, 1);
INSERT INTO public.planet VALUES (3, 'Planet three', 1300, 10, 'Description about the Planet three', true, true, 2);
INSERT INTO public.planet VALUES (4, 'Planet four', 1400, 10, 'Description about the Planet four', true, true, 2);
INSERT INTO public.planet VALUES (5, 'Planet five', 1500, 10, 'Description about the Planet five', true, true, 3);
INSERT INTO public.planet VALUES (6, 'Planet six', 1600, 10, 'Description about the Planet six', true, true, 3);
INSERT INTO public.planet VALUES (7, 'Planet seven', 1700, 10, 'Description about the Planet seven', false, true, 4);
INSERT INTO public.planet VALUES (8, 'Planet eight', 1800, 10, 'Description about the Planet eight', false, true, 4);
INSERT INTO public.planet VALUES (9, 'Planet nine', 1900, 10, 'Description about the Planet nine', false, true, 5);
INSERT INTO public.planet VALUES (10, 'Planet ten', 2000, 10, 'Description about the Planet ten', false, true, 5);
INSERT INTO public.planet VALUES (11, 'Planet eleven', 2100, 10, 'Description about the Planet eleven', false, true, 6);
INSERT INTO public.planet VALUES (12, 'Planet twelve', 2200, 10, 'Description about the Planet twelve', false, true, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Star one', 100, 1000, 'Description about the Star one', false, true, 1);
INSERT INTO public.star VALUES (2, 'Star two', 200, 2000, 'Description about the Star two', false, true, 1);
INSERT INTO public.star VALUES (3, 'Star three', 300, 3000, 'Description about the Star three', false, true, 2);
INSERT INTO public.star VALUES (4, 'Star three', 400, 4000, 'Description about the Star four', false, true, 2);
INSERT INTO public.star VALUES (5, 'Star five', 500, 5000, 'Description about the Star five', false, true, 3);
INSERT INTO public.star VALUES (6, 'Star six', 500, 6000, 'Description about the Star six', false, true, 3);


--
-- Name: celestial_bodies_celestial_bodies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.celestial_bodies_celestial_bodies_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: celestial_bodies celestial_bodies_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.celestial_bodies
    ADD CONSTRAINT celestial_bodies_name_key UNIQUE (name);


--
-- Name: celestial_bodies celestial_bodies_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.celestial_bodies
    ADD CONSTRAINT celestial_bodies_pkey PRIMARY KEY (celestial_bodies_id);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

