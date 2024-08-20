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
    round character varying(40) NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL
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
-- Name: games_opponent_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_opponent_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_opponent_id_seq OWNER TO freecodecamp;

--
-- Name: games_opponent_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_opponent_id_seq OWNED BY public.games.opponent_id;


--
-- Name: games_winner_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_winner_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_winner_id_seq OWNER TO freecodecamp;

--
-- Name: games_winner_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_winner_id_seq OWNED BY public.games.winner_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(40) NOT NULL
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
-- Name: games winner_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN winner_id SET DEFAULT nextval('public.games_winner_id_seq'::regclass);


--
-- Name: games opponent_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN opponent_id SET DEFAULT nextval('public.games_opponent_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (417, 2018, 'Final', 4, 2, 427, 428);
INSERT INTO public.games VALUES (418, 2018, 'Third Place', 2, 0, 429, 430);
INSERT INTO public.games VALUES (419, 2018, 'Semi-Final', 2, 1, 428, 430);
INSERT INTO public.games VALUES (420, 2018, 'Semi-Final', 1, 0, 427, 429);
INSERT INTO public.games VALUES (421, 2018, 'Quarter-Final', 3, 2, 428, 431);
INSERT INTO public.games VALUES (422, 2018, 'Quarter-Final', 2, 0, 430, 432);
INSERT INTO public.games VALUES (423, 2018, 'Quarter-Final', 2, 1, 429, 433);
INSERT INTO public.games VALUES (424, 2018, 'Quarter-Final', 2, 0, 427, 434);
INSERT INTO public.games VALUES (425, 2018, 'Eighth-Final', 2, 1, 430, 435);
INSERT INTO public.games VALUES (426, 2018, 'Eighth-Final', 1, 0, 432, 436);
INSERT INTO public.games VALUES (427, 2018, 'Eighth-Final', 3, 2, 429, 437);
INSERT INTO public.games VALUES (428, 2018, 'Eighth-Final', 2, 0, 433, 438);
INSERT INTO public.games VALUES (429, 2018, 'Eighth-Final', 2, 1, 428, 439);
INSERT INTO public.games VALUES (430, 2018, 'Eighth-Final', 2, 1, 431, 440);
INSERT INTO public.games VALUES (431, 2018, 'Eighth-Final', 2, 1, 434, 441);
INSERT INTO public.games VALUES (432, 2018, 'Eighth-Final', 4, 3, 427, 442);
INSERT INTO public.games VALUES (433, 2014, 'Final', 1, 0, 443, 442);
INSERT INTO public.games VALUES (434, 2014, 'Third Place', 3, 0, 444, 433);
INSERT INTO public.games VALUES (435, 2014, 'Semi-Final', 1, 0, 442, 444);
INSERT INTO public.games VALUES (436, 2014, 'Semi-Final', 7, 1, 443, 433);
INSERT INTO public.games VALUES (437, 2014, 'Quarter-Final', 1, 0, 444, 445);
INSERT INTO public.games VALUES (438, 2014, 'Quarter-Final', 1, 0, 442, 429);
INSERT INTO public.games VALUES (439, 2014, 'Quarter-Final', 2, 1, 433, 435);
INSERT INTO public.games VALUES (440, 2014, 'Quarter-Final', 1, 0, 443, 427);
INSERT INTO public.games VALUES (441, 2014, 'Eighth-Final', 2, 1, 433, 446);
INSERT INTO public.games VALUES (442, 2014, 'Eighth-Final', 2, 0, 435, 434);
INSERT INTO public.games VALUES (443, 2014, 'Eighth-Final', 2, 0, 427, 447);
INSERT INTO public.games VALUES (444, 2014, 'Eighth-Final', 2, 1, 443, 448);
INSERT INTO public.games VALUES (445, 2014, 'Eighth-Final', 2, 1, 444, 438);
INSERT INTO public.games VALUES (446, 2014, 'Eighth-Final', 2, 1, 445, 449);
INSERT INTO public.games VALUES (447, 2014, 'Eighth-Final', 1, 0, 442, 436);
INSERT INTO public.games VALUES (448, 2014, 'Eighth-Final', 2, 1, 429, 450);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (427, 'France');
INSERT INTO public.teams VALUES (428, 'Croatia');
INSERT INTO public.teams VALUES (429, 'Belgium');
INSERT INTO public.teams VALUES (430, 'England');
INSERT INTO public.teams VALUES (431, 'Russia');
INSERT INTO public.teams VALUES (432, 'Sweden');
INSERT INTO public.teams VALUES (433, 'Brazil');
INSERT INTO public.teams VALUES (434, 'Uruguay');
INSERT INTO public.teams VALUES (435, 'Colombia');
INSERT INTO public.teams VALUES (436, 'Switzerland');
INSERT INTO public.teams VALUES (437, 'Japan');
INSERT INTO public.teams VALUES (438, 'Mexico');
INSERT INTO public.teams VALUES (439, 'Denmark');
INSERT INTO public.teams VALUES (440, 'Spain');
INSERT INTO public.teams VALUES (441, 'Portugal');
INSERT INTO public.teams VALUES (442, 'Argentina');
INSERT INTO public.teams VALUES (443, 'Germany');
INSERT INTO public.teams VALUES (444, 'Netherlands');
INSERT INTO public.teams VALUES (445, 'Costa Rica');
INSERT INTO public.teams VALUES (446, 'Chile');
INSERT INTO public.teams VALUES (447, 'Nigeria');
INSERT INTO public.teams VALUES (448, 'Algeria');
INSERT INTO public.teams VALUES (449, 'Greece');
INSERT INTO public.teams VALUES (450, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 448, true);


--
-- Name: games_opponent_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_opponent_id_seq', 1, false);


--
-- Name: games_winner_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_winner_id_seq', 1, false);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 450, true);


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

