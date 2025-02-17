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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying(30) NOT NULL,
    winner_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_id integer NOT NULL,
    opponent_goals integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (33, 2018, 'Final', 73, 4, 75, 2);
INSERT INTO public.games VALUES (34, 2018, 'Third Place', 74, 2, 76, 0);
INSERT INTO public.games VALUES (35, 2018, 'Semi-Final', 75, 2, 76, 1);
INSERT INTO public.games VALUES (36, 2018, 'Semi-Final', 73, 1, 74, 0);
INSERT INTO public.games VALUES (37, 2018, 'Quarter-Final', 75, 3, 79, 2);
INSERT INTO public.games VALUES (38, 2018, 'Quarter-Final', 76, 2, 77, 0);
INSERT INTO public.games VALUES (39, 2018, 'Quarter-Final', 74, 2, 78, 1);
INSERT INTO public.games VALUES (40, 2018, 'Quarter-Final', 73, 2, 80, 0);
INSERT INTO public.games VALUES (41, 2018, 'Eighth-Final', 76, 2, 84, 1);
INSERT INTO public.games VALUES (42, 2018, 'Eighth-Final', 77, 1, 86, 0);
INSERT INTO public.games VALUES (43, 2018, 'Eighth-Final', 74, 3, 87, 2);
INSERT INTO public.games VALUES (44, 2018, 'Eighth-Final', 78, 2, 88, 0);
INSERT INTO public.games VALUES (45, 2018, 'Eighth-Final', 75, 2, 89, 1);
INSERT INTO public.games VALUES (46, 2018, 'Eighth-Final', 79, 2, 90, 1);
INSERT INTO public.games VALUES (47, 2018, 'Eighth-Final', 80, 2, 91, 1);
INSERT INTO public.games VALUES (48, 2018, 'Eighth-Final', 73, 4, 83, 3);
INSERT INTO public.games VALUES (49, 2014, 'Final', 81, 1, 83, 0);
INSERT INTO public.games VALUES (50, 2014, 'Third Place', 82, 3, 78, 0);
INSERT INTO public.games VALUES (51, 2014, 'Semi-Final', 83, 1, 82, 0);
INSERT INTO public.games VALUES (52, 2014, 'Semi-Final', 81, 7, 78, 1);
INSERT INTO public.games VALUES (53, 2014, 'Quarter-Final', 82, 1, 85, 0);
INSERT INTO public.games VALUES (54, 2014, 'Quarter-Final', 83, 1, 74, 0);
INSERT INTO public.games VALUES (55, 2014, 'Quarter-Final', 78, 2, 84, 1);
INSERT INTO public.games VALUES (56, 2014, 'Quarter-Final', 81, 1, 73, 0);
INSERT INTO public.games VALUES (57, 2014, 'Eighth-Final', 78, 2, 92, 1);
INSERT INTO public.games VALUES (58, 2014, 'Eighth-Final', 84, 2, 80, 0);
INSERT INTO public.games VALUES (59, 2014, 'Eighth-Final', 73, 2, 93, 0);
INSERT INTO public.games VALUES (60, 2014, 'Eighth-Final', 81, 2, 94, 1);
INSERT INTO public.games VALUES (61, 2014, 'Eighth-Final', 82, 2, 88, 1);
INSERT INTO public.games VALUES (62, 2014, 'Eighth-Final', 85, 2, 95, 1);
INSERT INTO public.games VALUES (63, 2014, 'Eighth-Final', 83, 1, 86, 0);
INSERT INTO public.games VALUES (64, 2014, 'Eighth-Final', 74, 2, 96, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (73, 'France');
INSERT INTO public.teams VALUES (74, 'Belgium');
INSERT INTO public.teams VALUES (75, 'Croatia');
INSERT INTO public.teams VALUES (76, 'England');
INSERT INTO public.teams VALUES (77, 'Sweden');
INSERT INTO public.teams VALUES (78, 'Brazil');
INSERT INTO public.teams VALUES (79, 'Russia');
INSERT INTO public.teams VALUES (80, 'Uruguay');
INSERT INTO public.teams VALUES (81, 'Germany');
INSERT INTO public.teams VALUES (82, 'Netherlands');
INSERT INTO public.teams VALUES (83, 'Argentina');
INSERT INTO public.teams VALUES (84, 'Colombia');
INSERT INTO public.teams VALUES (85, 'Costa Rica');
INSERT INTO public.teams VALUES (86, 'Switzerland');
INSERT INTO public.teams VALUES (87, 'Japan');
INSERT INTO public.teams VALUES (88, 'Mexico');
INSERT INTO public.teams VALUES (89, 'Denmark');
INSERT INTO public.teams VALUES (90, 'Spain');
INSERT INTO public.teams VALUES (91, 'Portugal');
INSERT INTO public.teams VALUES (92, 'Chile');
INSERT INTO public.teams VALUES (93, 'Nigeria');
INSERT INTO public.teams VALUES (94, 'Algeria');
INSERT INTO public.teams VALUES (95, 'Greece');
INSERT INTO public.teams VALUES (96, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 64, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 96, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

