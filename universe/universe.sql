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
-- Name: black_hole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.black_hole (
    black_hole_id integer NOT NULL,
    galaxy_id integer NOT NULL,
    name character varying NOT NULL,
    description text,
    is_supermassive boolean NOT NULL
);


ALTER TABLE public.black_hole OWNER TO freecodecamp;

--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.black_hole_black_hole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.black_hole_black_hole_id_seq OWNER TO freecodecamp;

--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.black_hole_black_hole_id_seq OWNED BY public.black_hole.black_hole_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying NOT NULL,
    description text,
    radius integer NOT NULL,
    discovered_date date NOT NULL
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
    name character varying NOT NULL,
    planet_id integer NOT NULL,
    description text,
    distance_from_planet_km numeric NOT NULL
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
    name character varying NOT NULL,
    star_id integer NOT NULL,
    description text,
    has_life boolean NOT NULL
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
    name character varying NOT NULL,
    galaxy_id integer NOT NULL,
    description text,
    distance_from_earth_light_years integer NOT NULL
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
-- Name: black_hole black_hole_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole ALTER COLUMN black_hole_id SET DEFAULT nextval('public.black_hole_black_hole_id_seq'::regclass);


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
-- Data for Name: black_hole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.black_hole VALUES (1, 1, 'Sagittarius A*', 'Supermassive black hole at the center of the Milky Way galaxy.', true);
INSERT INTO public.black_hole VALUES (2, 2, 'Cygnus X-1', 'A stellar-mass black hole in the Cygnus constellation.', false);
INSERT INTO public.black_hole VALUES (3, 3, 'M87*', 'Supermassive black hole at the center of the Virgo galaxy.', true);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 'Nearest spiral galaxy to the Milky Way.', 220000, '1785-01-01');
INSERT INTO public.galaxy VALUES (2, 'Milky Way', 'The galaxy that contains our Solar System.', 100000, '1920-01-01');
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'Small spiral galaxy in the Local Group.', 60000, '1784-01-01');
INSERT INTO public.galaxy VALUES (4, 'Whirlpool Galaxy', 'A classic spiral galaxy located in the constellation Canes Venatici.', 60000, '1780-01-01');
INSERT INTO public.galaxy VALUES (5, 'Sombrero Galaxy', 'Spiral galaxy known for its bright nucleus and dark dust lane.', 50000, '1781-01-01');
INSERT INTO public.galaxy VALUES (6, 'Large Magellanic Cloud', 'Irregular galaxy and a satellite of the Milky Way.', 14000, '1960-01-01');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 1, 'The only natural satellite of Earth.', 384400);
INSERT INTO public.moon VALUES (2, 'Io', 1, 'One of Jupiter’s largest moons, known for its volcanic activity.', 421800);
INSERT INTO public.moon VALUES (3, 'Europa', 1, 'A moon of Jupiter with a smooth ice-covered surface.', 670900);
INSERT INTO public.moon VALUES (4, 'Ganymede', 1, 'The largest moon in the Solar System, orbiting Jupiter.', 1070400);
INSERT INTO public.moon VALUES (5, 'Callisto', 1, 'A large moon of Jupiter with a heavily cratered surface.', 1882700);
INSERT INTO public.moon VALUES (6, 'Titan', 2, 'Saturn’s largest moon, known for its thick atmosphere.', 1221870);
INSERT INTO public.moon VALUES (7, 'Rhea', 2, 'A moon of Saturn with a bright, icy surface.', 527040);
INSERT INTO public.moon VALUES (8, 'Iapetus', 2, 'A moon of Saturn with a distinctive two-tone coloration.', 356130);
INSERT INTO public.moon VALUES (9, 'Enceladus', 2, 'A moon of Saturn with icy geysers and potential subsurface ocean.', 238020);
INSERT INTO public.moon VALUES (10, 'Miranda', 3, 'One of Uranus’s moons, known for its extreme geological features.', 129000);
INSERT INTO public.moon VALUES (11, 'Titania', 3, 'The largest moon of Uranus, with a mix of icy and rocky terrain.', 436300);
INSERT INTO public.moon VALUES (12, 'Oberon', 3, 'A moon of Uranus with a heavily cratered surface.', 583520);
INSERT INTO public.moon VALUES (13, 'Umbriel', 3, 'A moon of Uranus with a dark surface and few impact craters.', 265500);
INSERT INTO public.moon VALUES (14, 'Triton', 4, 'The largest moon of Neptune, known for its retrograde orbit.', 354800);
INSERT INTO public.moon VALUES (15, 'Proteus', 4, 'A small, irregularly shaped moon of Neptune.', 117600);
INSERT INTO public.moon VALUES (16, 'Nereid', 4, 'A moon of Neptune with an eccentric orbit.', 1198000);
INSERT INTO public.moon VALUES (17, 'Charon', 5, 'The largest moon of Pluto, almost half the size of its parent planet.', 19500);
INSERT INTO public.moon VALUES (18, 'Styx', 5, 'One of the smaller moons of Pluto.', 42500);
INSERT INTO public.moon VALUES (19, 'Nix', 5, 'A small moon of Pluto with an irregular shape.', 48300);
INSERT INTO public.moon VALUES (20, 'Hydra', 5, 'Another small moon of Pluto, discovered in 2005.', 64800);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Proxima Centauri b', 2, 'An exoplanet orbiting Alpha Centauri, potentially habitable.', true);
INSERT INTO public.planet VALUES (2, 'Alpha Centauri A b', 2, 'A potential exoplanet orbiting Alpha Centauri A.', false);
INSERT INTO public.planet VALUES (3, 'Betelgeuse b', 3, 'A hypothetical planet orbiting Betelgeuse.', false);
INSERT INTO public.planet VALUES (4, 'Rigel b', 4, 'A hypothetical planet orbiting Rigel.', false);
INSERT INTO public.planet VALUES (5, 'Vega b', 5, 'A hypothetical planet orbiting Vega.', true);
INSERT INTO public.planet VALUES (6, 'Arcturus b', 6, 'A hypothetical planet orbiting Arcturus.', true);
INSERT INTO public.planet VALUES (7, 'Proxima Centauri c', 2, 'Another exoplanet orbiting Alpha Centauri, possibly habitable.', false);
INSERT INTO public.planet VALUES (8, 'Betelgeuse c', 3, 'Another hypothetical planet orbiting Betelgeuse.', false);
INSERT INTO public.planet VALUES (9, 'Rigel c', 4, 'Another hypothetical planet orbiting Rigel.', false);
INSERT INTO public.planet VALUES (10, 'Vega c', 5, 'Another hypothetical planet orbiting Vega.', true);
INSERT INTO public.planet VALUES (11, 'Arcturus c', 6, 'Another hypothetical planet orbiting Arcturus.', true);
INSERT INTO public.planet VALUES (12, 'Alpha Centauri B b', 2, 'A potential exoplanet orbiting Alpha Centauri B.', false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sirius', 2, 'The brightest star in the night sky, located in the constellation Canis Major.', 9);
INSERT INTO public.star VALUES (2, 'Alpha Centauri', 2, 'The closest star system to the Solar System, located in the constellation Centaurus.', 4);
INSERT INTO public.star VALUES (3, 'Betelgeuse', 1, 'A red supergiant star in the constellation Orion.', 642);
INSERT INTO public.star VALUES (4, 'Rigel', 1, 'A blue supergiant star in the constellation Orion.', 860);
INSERT INTO public.star VALUES (5, 'Vega', 3, 'A bright star in the constellation Lyra, known for its bluish color.', 25);
INSERT INTO public.star VALUES (6, 'Arcturus', 2, 'A red giant star in the constellation Boötes.', 38);


--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.black_hole_black_hole_id_seq', 1, false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


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
-- Name: black_hole black_hole_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_name_key UNIQUE (name);


--
-- Name: black_hole black_hole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_pkey PRIMARY KEY (black_hole_id);


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
-- Name: black_hole black_hole_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


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

