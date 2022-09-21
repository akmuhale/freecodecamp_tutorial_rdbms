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
-- Name: description; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.description (
    name character varying(30) NOT NULL,
    galaxy_id integer,
    description_id integer NOT NULL,
    detail character varying(100)
);


ALTER TABLE public.description OWNER TO freecodecamp;

--
-- Name: description_description_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.description_description_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.description_description_id_seq OWNER TO freecodecamp;

--
-- Name: description_description_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.description_description_id_seq OWNED BY public.description.description_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(30) NOT NULL,
    has_life boolean,
    age_in_millions_of_years integer,
    galaxy_types character varying(20),
    galaxy_id integer NOT NULL
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
    name character varying(30) NOT NULL,
    radius numeric(9,3),
    is_spherical boolean,
    is_single_moon boolean,
    moon_id integer NOT NULL,
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
    name character varying(30) NOT NULL,
    temperature text,
    is_spherical character varying(1),
    has_life boolean,
    planet_id integer NOT NULL,
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
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    planet_types character varying(10),
    distance_from_earth integer,
    star_id integer NOT NULL,
    galaxy_id integer
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
-- Name: description description_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.description ALTER COLUMN description_id SET DEFAULT nextval('public.description_description_id_seq'::regclass);


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
-- Data for Name: description; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.description VALUES ('Desc1', 1, 1, 'Dummy description aboutgalaxy 1 Alpha');
INSERT INTO public.description VALUES ('Desc2', 2, 2, 'Dummy description aboutgalaxy 2 BETA');
INSERT INTO public.description VALUES ('Desc3', 3, 3, 'Dummy description aboutgalaxy 3 GAMA');
INSERT INTO public.description VALUES ('Desc4', 4, 4, 'Dummy description aboutgalaxy 4 DELTA');
INSERT INTO public.description VALUES ('Desc5', 5, 5, 'Dummy description aboutgalaxy 5 MILKY WAY');
INSERT INTO public.description VALUES ('Desc6', 6, 6, 'Dummy description aboutgalaxy 6 ANDROMEDA');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Alpha', false, 112, 'Spiral', 1);
INSERT INTO public.galaxy VALUES ('Beta', false, 50, 'Irregular', 2);
INSERT INTO public.galaxy VALUES ('Gama', false, NULL, 'Peculiar', 3);
INSERT INTO public.galaxy VALUES ('Delta', NULL, 200, 'Spiral', 4);
INSERT INTO public.galaxy VALUES ('Milky Way', true, 500, 'Spiral', 5);
INSERT INTO public.galaxy VALUES ('Andromeda', true, 350, 'Spiral', 6);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('moon1', 2233.000, true, true, 1, 1);
INSERT INTO public.moon VALUES ('moon2', 2235.000, NULL, NULL, 2, 2);
INSERT INTO public.moon VALUES ('moon3', 3323.000, false, NULL, 3, 2);
INSERT INTO public.moon VALUES ('moon4', 3242.000, NULL, NULL, 4, 3);
INSERT INTO public.moon VALUES ('moon5', 2355.000, false, false, 5, 4);
INSERT INTO public.moon VALUES ('moon6', 532.000, true, true, 6, 5);
INSERT INTO public.moon VALUES ('moon7', 32.000, NULL, false, 7, 5);
INSERT INTO public.moon VALUES ('moon8', 555.000, true, false, 8, 6);
INSERT INTO public.moon VALUES ('moon9', 5324.000, false, false, 9, 6);
INSERT INTO public.moon VALUES ('moon10', 6774.000, NULL, true, 10, 7);
INSERT INTO public.moon VALUES ('moon11', 5675.000, true, true, 11, 7);
INSERT INTO public.moon VALUES ('moon12', 7653.000, false, NULL, 12, 7);
INSERT INTO public.moon VALUES ('moon13', 9765.000, true, NULL, 13, 8);
INSERT INTO public.moon VALUES ('moon14', 6789.000, NULL, false, 14, 9);
INSERT INTO public.moon VALUES ('moon15', 2854.000, false, false, 15, 10);
INSERT INTO public.moon VALUES ('moon16', 3678.000, false, false, 16, 10);
INSERT INTO public.moon VALUES ('moon17', 7428.000, true, false, 17, 10);
INSERT INTO public.moon VALUES ('moon18', 1638.000, NULL, NULL, 18, 11);
INSERT INTO public.moon VALUES ('moon19', 2684.000, true, NULL, 19, 11);
INSERT INTO public.moon VALUES ('moon20', 2378.000, NULL, true, 20, 12);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Planet1', 'hot', 'Y', false, 1, 1);
INSERT INTO public.planet VALUES ('Planet2', 'hot', 'N', false, 2, 1);
INSERT INTO public.planet VALUES ('Planet3', 'cold', 'Y', false, 3, 2);
INSERT INTO public.planet VALUES ('Planet5', 'hot', 'Y', false, 5, 3);
INSERT INTO public.planet VALUES ('Planet6', 'hot', 'N', false, 6, 3);
INSERT INTO public.planet VALUES ('Planet4', 'cold', 'Y', false, 4, 2);
INSERT INTO public.planet VALUES ('Planet7', NULL, 'N', false, 7, 4);
INSERT INTO public.planet VALUES ('Planet8', 'cold', 'Y', true, 8, 4);
INSERT INTO public.planet VALUES ('Planet9', NULL, 'Y', NULL, 9, 5);
INSERT INTO public.planet VALUES ('Planet10', 'hot', 'Y', false, 10, 5);
INSERT INTO public.planet VALUES ('Planet11', NULL, NULL, NULL, 11, 6);
INSERT INTO public.planet VALUES ('Planet12', 'cold', NULL, false, 12, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Star1', 110, 'Star', 1234, 1, 1);
INSERT INTO public.star VALUES ('Star2', 50, 'Star', 1334, 2, 2);
INSERT INTO public.star VALUES ('Star3', NULL, 'Star', 1434, 3, 3);
INSERT INTO public.star VALUES ('Star4', 200, 'Star', 1444, 4, 4);
INSERT INTO public.star VALUES ('Star5', 500, 'Star', 2844, 5, 5);
INSERT INTO public.star VALUES ('Star6', 350, 'Star', 11122, 6, 6);


--
-- Name: description_description_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.description_description_id_seq', 1, false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: description description_description_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.description
    ADD CONSTRAINT description_description_id_key UNIQUE (description_id);


--
-- Name: description description_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.description
    ADD CONSTRAINT description_pkey PRIMARY KEY (description_id);


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
-- Name: description description_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.description
    ADD CONSTRAINT description_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


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
