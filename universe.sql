--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(32) NOT NULL,
    age_in_million_years integer,
    diameter_in_lightyears numeric(12,2),
    description text
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
    name character varying(32) NOT NULL,
    age_in_million_years integer,
    diameter_in_km numeric(12,2),
    description text,
    planet_id integer,
    has_life boolean
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
    name character varying(32) NOT NULL,
    age_in_million_years integer,
    diameter_in_km numeric(12,2),
    description text,
    star_id integer,
    has_life boolean
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
-- Name: solar_system; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.solar_system (
    solar_system_id integer NOT NULL,
    name character varying(32) NOT NULL,
    num_of_planets integer
);


ALTER TABLE public.solar_system OWNER TO freecodecamp;

--
-- Name: solar_system_solar_system_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.solar_system_solar_system_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.solar_system_solar_system_id_seq OWNER TO freecodecamp;

--
-- Name: solar_system_solar_system_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.solar_system_solar_system_id_seq OWNED BY public.solar_system.solar_system_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(32) NOT NULL,
    age_in_million_years integer,
    diameter_in_km numeric(12,2),
    description text,
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
-- Name: solar_system solar_system_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solar_system ALTER COLUMN solar_system_id SET DEFAULT nextval('public.solar_system_solar_system_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (2, 'Milky Way', 13600, 100000.00, 'Our home galaxy, a barred spiral galaxy with a central bar-shaped structure. Contains over 100 billion stars, including our Sun.');
INSERT INTO public.galaxy VALUES (3, 'Andromeda Galaxy', 13200, 22000.00, 'The nearest large spiral galaxy to the Milky Way. Similar in size and structure to the Milky Way. Expected to collide with the Milky Way in a few billion years.');
INSERT INTO public.galaxy VALUES (4, 'Large Magellanic Cloud', 11000, 14000.00, 'A satellite galaxy of the Milky Way. Irregular in shape, with a prominent bar-like structure. Contains many young, massive stars. ');
INSERT INTO public.galaxy VALUES (5, 'Small Magellanic Cloud', 13000, 7000.00, 'Another satellite galaxy of the Milky Way. Irregular in shape, smaller than the LMC. Contains fewer stars than the LMC. ');
INSERT INTO public.galaxy VALUES (6, 'IC 1101', 11000, 5500000.00, 'One of the largest known galaxies in the observable universe. A giant elliptical galaxy.Located in the Abell 2029 galaxy cluster.');
INSERT INTO public.galaxy VALUES (7, 'Alcyoneus', 12000, 16300000.00, 'A recently discovered giant radio galaxy. Located in the Abell 383 galaxy cluster.');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (2, 'Moon', 5, 3.47, 'Earths only natural satellite, influencing tides and stabilizing Earths', 1, false);
INSERT INTO public.moon VALUES (3, 'Ganymede', 5, 5.27, 'The largest moon in the Solar System, orbiting Jupiter, and larger than the planet Mercury.', 3, false);
INSERT INTO public.moon VALUES (4, 'Titan', 5, 5.15, 'Saturns largest moon, known for its thick atmosphere and surface lakes of liquid methane.', 4, false);
INSERT INTO public.moon VALUES (5, 'Callisto', 5, 4.82, 'A heavily cratered moon of Jupiter, known for being the most heavily cratered object in the Solar System.', 3, false);
INSERT INTO public.moon VALUES (6, 'Io', 5, 3.64, 'Jupiters volcanically active moon, known for its numerous sulfur volcanoes.', 3, false);
INSERT INTO public.moon VALUES (7, 'Europa', 5, 3.12, 'A moon of Jupiter, believed to have a subsurface ocean beneath its icy crust.', 3, false);
INSERT INTO public.moon VALUES (8, 'Triton', 5, 2.71, 'The largest moon of Neptune, known for its retrograde orbit and geysers of nitrogen gas.', 6, false);
INSERT INTO public.moon VALUES (9, 'Titania', 5, 1.58, 'The largest moon of Uranus, characterized by large canyons and fault lines.', 5, false);
INSERT INTO public.moon VALUES (10, 'Rhea', 5, 1.53, 'The second-largest moon of Saturn, with a heavily cratered surface and a thin atmosphere.', 4, false);
INSERT INTO public.moon VALUES (11, 'Oberon', 5, 1.52, 'The second-largest moon of Uranus, with a dark, heavily cratered surface.', 5, false);
INSERT INTO public.moon VALUES (12, 'Iapetus', 5, 1.47, 'A moon of Saturn known for its distinctive two-tone coloration, with one hemisphere much darker than the other.', 4, false);
INSERT INTO public.moon VALUES (13, 'Dione', 5, 1.12, 'A moon of Saturn, characterized by bright ice cliffs and a subsurface ocean.', 4, false);
INSERT INTO public.moon VALUES (14, 'Tethys', 5, 1.06, 'A moon of Saturn, notable for the massive Odysseus crater on its surface.', 4, false);
INSERT INTO public.moon VALUES (15, 'Enceladus', 5, 0.50, 'A moon of Saturn, famous for its geysers that spray water ice into space from its subsurface ocean.', 4, false);
INSERT INTO public.moon VALUES (16, 'Miranda', 5, 0.47, 'A small, geologically active moon of Uranus, known for its extreme surface features.', 5, false);
INSERT INTO public.moon VALUES (17, 'Mimas', 5, 0.40, 'A moon of Saturn, known for the massive crater Herschel, which gives it a resemblance to the Death Star.', 4, false);
INSERT INTO public.moon VALUES (18, 'Phoebe', 5, 0.21, 'An irregularly shaped, retrograde moon of Saturn, believed to be a captured object from the Kuiper Belt.', 4, false);
INSERT INTO public.moon VALUES (19, 'Hyperion', 5, 0.27, 'A chaotic, sponge-like moon of Saturn, known for its irregular shape and tumbling rotation.', 4, false);
INSERT INTO public.moon VALUES (20, 'Charon', 5, 1.21, 'The largest moon of the dwarf planet Pluto, nearly half the size of Pluto itself.', 8, false);
INSERT INTO public.moon VALUES (21, 'Umbriel', 5, 1.17, 'A dark, heavily cratered moon of Uranus, known for its mysterious bright ring feature.', 5, false);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 5, 12.74, 'The third planet from the Sun, home to life', 1, true);
INSERT INTO public.planet VALUES (2, 'Mars', 5, 6.78, 'The fourth planet from the Sun, known for its red appearance.', 1, false);
INSERT INTO public.planet VALUES (3, 'Jupiter', 5, 139.82, 'The largest planet in the Solar System, a gas giant with 79 known moons, including Ganymede, the largest moon.', 1, false);
INSERT INTO public.planet VALUES (4, 'Saturn', 5, 116.46, 'A gas giant famous for its prominent ring system and having 83 moons, with Titan being the largest.', 1, false);
INSERT INTO public.planet VALUES (5, 'Uranus', 5, 50.72, 'An ice giant tilted on its side with 27 known moons, with Titania being the largest.', 1, false);
INSERT INTO public.planet VALUES (6, 'Neptune', 5, 49.24, 'An ice giant, the farthest known planet in the Solar System with 14 moons, Triton being the largest.', 1, false);
INSERT INTO public.planet VALUES (8, 'Planet X1', 100, 15.00, 'A hypothetical planet orbiting a star in the Andromeda Galaxy with several large moons.', 2, false);
INSERT INTO public.planet VALUES (9, 'Planet Z2', 50000, 30000.00, 'A gas giant in the Andromeda Galaxy, with a ring system and multiple moons.', 3, false);
INSERT INTO public.planet VALUES (10, 'Planet L1', 10000, 25000.00, 'A planet orbiting a star in the Large Magellanic Cloud, believed to have at least one large moon.', 3, false);
INSERT INTO public.planet VALUES (11, 'Planet S1', 8000, 18000.00, 'A planet in the Small Magellanic Cloud, potentially with a moon similar to Earths Moon.', 4, false);
INSERT INTO public.planet VALUES (12, 'Planet I1', 2000, 40000.00, 'A massive gas giant in the IC 1101 galaxy, with an extensive moon system.', 5, false);
INSERT INTO public.planet VALUES (13, 'Planet A1', 1000, 20000.00, 'A large rocky planet in the Alcyoneus galaxy with a significant moon.', 6, false);


--
-- Data for Name: solar_system; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.solar_system VALUES (1, 'Alpha Centauri', 2);
INSERT INTO public.solar_system VALUES (2, 'Luhman 16', 0);
INSERT INTO public.solar_system VALUES (3, 'Wolf 359', 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 5, 1390000.00, 'A yellow dwarf star at the center of the Solar System.', 2);
INSERT INTO public.star VALUES (2, 'Sirius', 250, 1.70, 'The brightest star in the night sky.', 2);
INSERT INTO public.star VALUES (3, 'Andromeda', 10000, 3.10, 'A red giant star in the Andromeda Galaxy.', 3);
INSERT INTO public.star VALUES (4, 'Mirach', 200, 15.00, 'A red giant star, one of the brightest in the Andromeda Galaxy.', 3);
INSERT INTO public.star VALUES (5, '47 Tucanae', 12000, 100.00, 'A globular cluster containing millions of stars.', 4);
INSERT INTO public.star VALUES (6, 'NGC 6205', 13000, 150.00, 'A globular cluster located in the core of IC 1101.', 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: solar_system_solar_system_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.solar_system_solar_system_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


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
-- Name: galaxy name_unq; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT name_unq UNIQUE (name);


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
-- Name: solar_system solar_system_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solar_system
    ADD CONSTRAINT solar_system_name_key UNIQUE (name);


--
-- Name: solar_system solar_system_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solar_system
    ADD CONSTRAINT solar_system_pkey PRIMARY KEY (solar_system_id);


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
-- Name: moon fk_planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_planet_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_planet_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star fk_star_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_star_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

