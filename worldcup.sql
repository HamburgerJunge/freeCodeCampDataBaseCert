--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
    round character varying(20) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
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
    name character varying(20) NOT NULL
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

INSERT INTO public.games VALUES (321, 2018, 'Final', 1163, 1164, 4, 2);
INSERT INTO public.games VALUES (322, 2018, 'Third Place', 1165, 1166, 2, 0);
INSERT INTO public.games VALUES (323, 2018, 'Semi-Final', 1164, 1166, 2, 1);
INSERT INTO public.games VALUES (324, 2018, 'Semi-Final', 1163, 1165, 1, 0);
INSERT INTO public.games VALUES (325, 2018, 'Quarter-Final', 1164, 1167, 3, 2);
INSERT INTO public.games VALUES (326, 2018, 'Quarter-Final', 1166, 1168, 2, 0);
INSERT INTO public.games VALUES (327, 2018, 'Quarter-Final', 1165, 1169, 2, 1);
INSERT INTO public.games VALUES (328, 2018, 'Quarter-Final', 1163, 1170, 2, 0);
INSERT INTO public.games VALUES (329, 2018, 'Eighth-Final', 1166, 1171, 2, 1);
INSERT INTO public.games VALUES (330, 2018, 'Eighth-Final', 1168, 1172, 1, 0);
INSERT INTO public.games VALUES (331, 2018, 'Eighth-Final', 1165, 1173, 3, 2);
INSERT INTO public.games VALUES (332, 2018, 'Eighth-Final', 1169, 1174, 2, 0);
INSERT INTO public.games VALUES (333, 2018, 'Eighth-Final', 1164, 1175, 2, 1);
INSERT INTO public.games VALUES (334, 2018, 'Eighth-Final', 1167, 1176, 2, 1);
INSERT INTO public.games VALUES (335, 2018, 'Eighth-Final', 1170, 1177, 2, 1);
INSERT INTO public.games VALUES (336, 2018, 'Eighth-Final', 1163, 1178, 4, 3);
INSERT INTO public.games VALUES (337, 2014, 'Final', 1179, 1178, 1, 0);
INSERT INTO public.games VALUES (338, 2014, 'Third Place', 1180, 1169, 3, 0);
INSERT INTO public.games VALUES (339, 2014, 'Semi-Final', 1178, 1180, 1, 0);
INSERT INTO public.games VALUES (340, 2014, 'Semi-Final', 1179, 1169, 7, 1);
INSERT INTO public.games VALUES (341, 2014, 'Quarter-Final', 1180, 1181, 1, 0);
INSERT INTO public.games VALUES (342, 2014, 'Quarter-Final', 1178, 1165, 1, 0);
INSERT INTO public.games VALUES (343, 2014, 'Quarter-Final', 1169, 1171, 2, 1);
INSERT INTO public.games VALUES (344, 2014, 'Quarter-Final', 1179, 1163, 1, 0);
INSERT INTO public.games VALUES (345, 2014, 'Eighth-Final', 1169, 1182, 2, 1);
INSERT INTO public.games VALUES (346, 2014, 'Eighth-Final', 1171, 1170, 2, 0);
INSERT INTO public.games VALUES (347, 2014, 'Eighth-Final', 1163, 1183, 2, 0);
INSERT INTO public.games VALUES (348, 2014, 'Eighth-Final', 1179, 1184, 2, 1);
INSERT INTO public.games VALUES (349, 2014, 'Eighth-Final', 1180, 1174, 2, 1);
INSERT INTO public.games VALUES (350, 2014, 'Eighth-Final', 1181, 1185, 2, 1);
INSERT INTO public.games VALUES (351, 2014, 'Eighth-Final', 1178, 1172, 1, 0);
INSERT INTO public.games VALUES (352, 2014, 'Eighth-Final', 1165, 1186, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (1163, 'France');
INSERT INTO public.teams VALUES (1164, 'Croatia');
INSERT INTO public.teams VALUES (1165, 'Belgium');
INSERT INTO public.teams VALUES (1166, 'England');
INSERT INTO public.teams VALUES (1167, 'Russia');
INSERT INTO public.teams VALUES (1168, 'Sweden');
INSERT INTO public.teams VALUES (1169, 'Brazil');
INSERT INTO public.teams VALUES (1170, 'Uruguay');
INSERT INTO public.teams VALUES (1171, 'Colombia');
INSERT INTO public.teams VALUES (1172, 'Switzerland');
INSERT INTO public.teams VALUES (1173, 'Japan');
INSERT INTO public.teams VALUES (1174, 'Mexico');
INSERT INTO public.teams VALUES (1175, 'Denmark');
INSERT INTO public.teams VALUES (1176, 'Spain');
INSERT INTO public.teams VALUES (1177, 'Portugal');
INSERT INTO public.teams VALUES (1178, 'Argentina');
INSERT INTO public.teams VALUES (1179, 'Germany');
INSERT INTO public.teams VALUES (1180, 'Netherlands');
INSERT INTO public.teams VALUES (1181, 'Costa Rica');
INSERT INTO public.teams VALUES (1182, 'Chile');
INSERT INTO public.teams VALUES (1183, 'Nigeria');
INSERT INTO public.teams VALUES (1184, 'Algeria');
INSERT INTO public.teams VALUES (1185, 'Greece');
INSERT INTO public.teams VALUES (1186, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 352, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 1186, true);


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

