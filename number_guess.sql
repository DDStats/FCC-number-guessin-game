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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
    user_id integer NOT NULL,
    guesses integer DEFAULT 0 NOT NULL
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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 1, 1);
INSERT INTO public.games VALUES (2, 4, 44);
INSERT INTO public.games VALUES (3, 4, 631);
INSERT INTO public.games VALUES (4, 5, 227);
INSERT INTO public.games VALUES (5, 5, 148);
INSERT INTO public.games VALUES (6, 4, 206);
INSERT INTO public.games VALUES (7, 4, 1);
INSERT INTO public.games VALUES (8, 4, 40);
INSERT INTO public.games VALUES (9, 6, 1);
INSERT INTO public.games VALUES (10, 6, 1);
INSERT INTO public.games VALUES (11, 7, 14);
INSERT INTO public.games VALUES (12, 8, 187);
INSERT INTO public.games VALUES (13, 8, 344);
INSERT INTO public.games VALUES (14, 9, 966);
INSERT INTO public.games VALUES (15, 9, 750);
INSERT INTO public.games VALUES (16, 8, 469);
INSERT INTO public.games VALUES (17, 8, 553);
INSERT INTO public.games VALUES (18, 8, 159);
INSERT INTO public.games VALUES (19, 10, 805);
INSERT INTO public.games VALUES (20, 10, 806);
INSERT INTO public.games VALUES (21, 11, 546);
INSERT INTO public.games VALUES (22, 11, 332);
INSERT INTO public.games VALUES (23, 10, 421);
INSERT INTO public.games VALUES (24, 10, 896);
INSERT INTO public.games VALUES (25, 10, 825);
INSERT INTO public.games VALUES (26, 12, 683);
INSERT INTO public.games VALUES (27, 12, 70);
INSERT INTO public.games VALUES (28, 13, 720);
INSERT INTO public.games VALUES (29, 13, 401);
INSERT INTO public.games VALUES (30, 12, 903);
INSERT INTO public.games VALUES (31, 12, 956);
INSERT INTO public.games VALUES (32, 12, 944);
INSERT INTO public.games VALUES (33, 14, 656);
INSERT INTO public.games VALUES (34, 14, 485);
INSERT INTO public.games VALUES (35, 15, 610);
INSERT INTO public.games VALUES (36, 15, 440);
INSERT INTO public.games VALUES (37, 14, 542);
INSERT INTO public.games VALUES (38, 14, 976);
INSERT INTO public.games VALUES (39, 14, 277);
INSERT INTO public.games VALUES (40, 16, 478);
INSERT INTO public.games VALUES (41, 16, 823);
INSERT INTO public.games VALUES (42, 17, 72);
INSERT INTO public.games VALUES (43, 17, 552);
INSERT INTO public.games VALUES (44, 16, 401);
INSERT INTO public.games VALUES (45, 16, 326);
INSERT INTO public.games VALUES (46, 16, 681);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'landon');
INSERT INTO public.users VALUES (2, 'LANDON');
INSERT INTO public.users VALUES (3, 'butt');
INSERT INTO public.users VALUES (4, 'user_1719079733706');
INSERT INTO public.users VALUES (5, 'user_1719079733705');
INSERT INTO public.users VALUES (6, 'Landon');
INSERT INTO public.users VALUES (7, 'Darren');
INSERT INTO public.users VALUES (8, 'user_1719081569725');
INSERT INTO public.users VALUES (9, 'user_1719081569724');
INSERT INTO public.users VALUES (10, 'user_1719081844686');
INSERT INTO public.users VALUES (11, 'user_1719081844685');
INSERT INTO public.users VALUES (12, 'user_1719083090512');
INSERT INTO public.users VALUES (13, 'user_1719083090511');
INSERT INTO public.users VALUES (14, 'user_1719083457404');
INSERT INTO public.users VALUES (15, 'user_1719083457403');
INSERT INTO public.users VALUES (16, 'user_1719083487890');
INSERT INTO public.users VALUES (17, 'user_1719083487889');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 46, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 17, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games fk_users_games; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_users_games FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

