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
-- Name: galaxiess; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxiess (
    galaxiess_id integer NOT NULL,
    name character varying(255) NOT NULL,
    num_of_stars integer NOT NULL,
    creation_date date NOT NULL,
    is_active boolean NOT NULL
);


ALTER TABLE public.galaxiess OWNER TO freecodecamp;

--
-- Name: galaxiess_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxiess_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxiess_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxiess_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxiess_galaxy_id_seq OWNED BY public.galaxiess.galaxiess_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(255) NOT NULL,
    num_of_stars integer NOT NULL,
    creation_date date NOT NULL,
    is_active boolean NOT NULL,
    classification text
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
    name character varying(255) NOT NULL,
    planet_id integer NOT NULL,
    size integer NOT NULL,
    has_atmosphere boolean NOT NULL
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
    name character varying(255) NOT NULL,
    star_id integer NOT NULL,
    distance_from_star numeric NOT NULL,
    is_rocky boolean NOT NULL
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
    name character varying(255) NOT NULL,
    galaxy_id integer NOT NULL,
    mass numeric NOT NULL,
    is_habitable boolean NOT NULL
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
-- Name: galaxiess galaxiess_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxiess ALTER COLUMN galaxiess_id SET DEFAULT nextval('public.galaxiess_galaxy_id_seq'::regclass);


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
-- Data for Name: galaxiess; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxiess VALUES (1, 'sssssEarthssssss', 1, '2022-12-12', true);
INSERT INTO public.galaxiess VALUES (2, 'ssssssEarthssssss', 1, '2022-12-12', true);
INSERT INTO public.galaxiess VALUES (3, 'ssssssEarthsssssss', 1, '2022-12-12', true);
INSERT INTO public.galaxiess VALUES (4, 'sssssssEarthsssssss', 1, '2022-12-12', true);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 400, '2022-01-01', true, 'Spiral');
INSERT INTO public.galaxy VALUES (2, 'sMilky Way', 400, '2022-01-01', true, 'joj');
INSERT INTO public.galaxy VALUES (3, 'sMilkys Way', 400, '2022-01-01', true, 'joj');
INSERT INTO public.galaxy VALUES (4, 'sMilkys sWay', 400, '2022-01-01', true, 'joj');
INSERT INTO public.galaxy VALUES (5, 'sMilkys ssWay', 400, '2022-01-01', true, 'joj');
INSERT INTO public.galaxy VALUES (6, 'sMilkys sssWay', 400, '2022-01-01', true, 'joj');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 1, 3476, false);
INSERT INTO public.moon VALUES (2, 'Moons', 1, 3476, false);
INSERT INTO public.moon VALUES (3, 'Moonss', 1, 3476, false);
INSERT INTO public.moon VALUES (4, 'sMoonss', 1, 3476, false);
INSERT INTO public.moon VALUES (5, 'ssMoonss', 1, 3476, false);
INSERT INTO public.moon VALUES (6, 'sssMoonss', 1, 3476, false);
INSERT INTO public.moon VALUES (7, 'sssMoonsss', 1, 3476, false);
INSERT INTO public.moon VALUES (8, 'sssMoonssss', 1, 3476, false);
INSERT INTO public.moon VALUES (9, 'ssssMoonssss', 1, 3476, false);
INSERT INTO public.moon VALUES (10, 'ssssMoonsssss', 1, 3476, false);
INSERT INTO public.moon VALUES (11, 'sssssMoonsssss', 1, 3476, false);
INSERT INTO public.moon VALUES (12, 'ssssssMoonsssss', 1, 3476, false);
INSERT INTO public.moon VALUES (13, 'sssssssMoonsssss', 1, 3476, false);
INSERT INTO public.moon VALUES (14, 'ssssssssMoonsssss', 1, 3476, false);
INSERT INTO public.moon VALUES (15, 'sssssssssMoonsssss', 1, 3476, false);
INSERT INTO public.moon VALUES (16, 'ssssssssssMoonsssss', 1, 3476, false);
INSERT INTO public.moon VALUES (17, 'sssssssssssMoonsssss', 1, 3476, false);
INSERT INTO public.moon VALUES (18, 'sssssssssssssMoonsssss', 1, 3476, false);
INSERT INTO public.moon VALUES (19, 'sssssssssssssMoonssssss', 1, 3476, false);
INSERT INTO public.moon VALUES (20, 'sssssssssssssMoonsssssss', 1, 3476, false);
INSERT INTO public.moon VALUES (21, 'ssssssssssssssMoonsssssss', 1, 3476, false);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 1, 1, true);
INSERT INTO public.planet VALUES (2, 'sEarth', 1, 1, true);
INSERT INTO public.planet VALUES (3, 'sEarths', 1, 1, true);
INSERT INTO public.planet VALUES (4, 'ssEarths', 1, 1, true);
INSERT INTO public.planet VALUES (5, 'ssEarthss', 1, 1, true);
INSERT INTO public.planet VALUES (6, 'ssEarthsss', 1, 1, true);
INSERT INTO public.planet VALUES (7, 'ssEarthssss', 1, 1, true);
INSERT INTO public.planet VALUES (8, 'ssEarthsssss', 1, 1, true);
INSERT INTO public.planet VALUES (9, 'sssEarthsssss', 1, 1, true);
INSERT INTO public.planet VALUES (10, 'ssssEarthsssss', 1, 1, true);
INSERT INTO public.planet VALUES (11, 'sssssEarthsssss', 1, 1, true);
INSERT INTO public.planet VALUES (12, 'sssssEarthssssss', 1, 1, true);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, 2000000000000000000000000000000, false);
INSERT INTO public.star VALUES (2, 'Suns', 1, 2000000000000000000000000000000, false);
INSERT INTO public.star VALUES (3, 'Sunss', 1, 2000000000000000000000000000000, false);
INSERT INTO public.star VALUES (4, 'sSunss', 1, 2000000000000000000000000000000, false);
INSERT INTO public.star VALUES (5, 'sSunsss', 1, 2000000000000000000000000000000, false);
INSERT INTO public.star VALUES (6, 'sSunssss', 1, 2000000000000000000000000000000, false);
INSERT INTO public.star VALUES (7, 'ssSunssss', 1, 2000000000000000000000000000000, false);


--
-- Name: galaxiess_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxiess_galaxy_id_seq', 4, true);


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

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: galaxiess galaxiess_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxiess
    ADD CONSTRAINT galaxiess_name_key UNIQUE (name);


--
-- Name: galaxiess galaxiess_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxiess
    ADD CONSTRAINT galaxiess_pkey PRIMARY KEY (galaxiess_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


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

