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
    player_id integer,
    guesses integer,
    secret_number integer
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
-- Name: players; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.players (
    player_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.players OWNER TO freecodecamp;

--
-- Name: players_player_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.players_player_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.players_player_id_seq OWNER TO freecodecamp;

--
-- Name: players_player_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.players_player_id_seq OWNED BY public.players.player_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: players player_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.players ALTER COLUMN player_id SET DEFAULT nextval('public.players_player_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 1, 3, 498);
INSERT INTO public.games VALUES (2, 7, 39, 642);
INSERT INTO public.games VALUES (3, 7, 71, 357);
INSERT INTO public.games VALUES (4, 8, 2, 980);
INSERT INTO public.games VALUES (5, 8, 3, 976);
INSERT INTO public.games VALUES (6, 7, 9, 914);
INSERT INTO public.games VALUES (7, 7, 2, 2);
INSERT INTO public.games VALUES (8, 7, 60, 457);
INSERT INTO public.games VALUES (9, 1, 8, 531);
INSERT INTO public.games VALUES (10, 9, 38, 657);
INSERT INTO public.games VALUES (11, 9, 51, 536);
INSERT INTO public.games VALUES (12, 10, 50, 549);
INSERT INTO public.games VALUES (13, 10, 24, 786);
INSERT INTO public.games VALUES (14, 9, 36, 678);
INSERT INTO public.games VALUES (15, 9, 70, 378);
INSERT INTO public.games VALUES (16, 9, 93, 153);
INSERT INTO public.games VALUES (17, 11, 804, 803);
INSERT INTO public.games VALUES (18, 11, 396, 395);
INSERT INTO public.games VALUES (19, 12, 585, 584);
INSERT INTO public.games VALUES (20, 12, 157, 156);
INSERT INTO public.games VALUES (21, 11, 80, 77);
INSERT INTO public.games VALUES (22, 11, 688, 686);
INSERT INTO public.games VALUES (23, 11, 538, 537);
INSERT INTO public.games VALUES (24, 13, 241, 240);
INSERT INTO public.games VALUES (25, 13, 370, 369);
INSERT INTO public.games VALUES (26, 14, 349, 348);
INSERT INTO public.games VALUES (27, 14, 276, 275);
INSERT INTO public.games VALUES (28, 13, 519, 516);
INSERT INTO public.games VALUES (29, 13, 309, 307);
INSERT INTO public.games VALUES (30, 13, 968, 967);
INSERT INTO public.games VALUES (31, 1, 8, 563);
INSERT INTO public.games VALUES (32, 15, 443, 442);
INSERT INTO public.games VALUES (33, 15, 469, 468);
INSERT INTO public.games VALUES (34, 16, 844, 843);
INSERT INTO public.games VALUES (35, 16, 148, 147);
INSERT INTO public.games VALUES (36, 15, 226, 223);
INSERT INTO public.games VALUES (37, 15, 670, 668);
INSERT INTO public.games VALUES (38, 15, 68, 67);
INSERT INTO public.games VALUES (39, 6, 8, 215);
INSERT INTO public.games VALUES (40, 17, 469, 468);
INSERT INTO public.games VALUES (41, 17, 384, 383);
INSERT INTO public.games VALUES (42, 18, 737, 736);
INSERT INTO public.games VALUES (43, 18, 216, 215);
INSERT INTO public.games VALUES (44, 17, 485, 482);
INSERT INTO public.games VALUES (45, 17, 390, 388);
INSERT INTO public.games VALUES (46, 17, 207, 206);
INSERT INTO public.games VALUES (47, 19, 930, 929);
INSERT INTO public.games VALUES (48, 19, 590, 589);
INSERT INTO public.games VALUES (49, 20, 48, 47);
INSERT INTO public.games VALUES (50, 20, 826, 825);
INSERT INTO public.games VALUES (51, 19, 126, 123);
INSERT INTO public.games VALUES (52, 19, 773, 771);
INSERT INTO public.games VALUES (53, 19, 706, 705);
INSERT INTO public.games VALUES (54, 6, 10, 584);
INSERT INTO public.games VALUES (55, 6, 24, 847);
INSERT INTO public.games VALUES (56, 21, 998, 997);
INSERT INTO public.games VALUES (57, 21, 57, 56);
INSERT INTO public.games VALUES (58, 22, 546, 545);
INSERT INTO public.games VALUES (59, 22, 453, 452);
INSERT INTO public.games VALUES (60, 21, 183, 180);
INSERT INTO public.games VALUES (61, 21, 952, 950);
INSERT INTO public.games VALUES (62, 21, 736, 735);
INSERT INTO public.games VALUES (63, 23, 466, 465);
INSERT INTO public.games VALUES (64, 23, 959, 958);
INSERT INTO public.games VALUES (65, 24, 849, 848);
INSERT INTO public.games VALUES (66, 24, 555, 554);
INSERT INTO public.games VALUES (67, 23, 832, 829);
INSERT INTO public.games VALUES (68, 23, 383, 381);
INSERT INTO public.games VALUES (69, 23, 418, 417);


--
-- Data for Name: players; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.players VALUES (1, 'Sanele');
INSERT INTO public.players VALUES (2, 'user_1744881886255');
INSERT INTO public.players VALUES (3, 'user_1744881886254');
INSERT INTO public.players VALUES (4, 'user_1744885693739');
INSERT INTO public.players VALUES (5, 'user_1744885693738');
INSERT INTO public.players VALUES (6, 'Lesego');
INSERT INTO public.players VALUES (7, 'user_1744888546385');
INSERT INTO public.players VALUES (8, 'user_1744888546384');
INSERT INTO public.players VALUES (9, 'user_1744888640812');
INSERT INTO public.players VALUES (10, 'user_1744888640811');
INSERT INTO public.players VALUES (11, 'user_1744889473077');
INSERT INTO public.players VALUES (12, 'user_1744889473076');
INSERT INTO public.players VALUES (13, 'user_1744889478867');
INSERT INTO public.players VALUES (14, 'user_1744889478866');
INSERT INTO public.players VALUES (15, 'user_1744889531319');
INSERT INTO public.players VALUES (16, 'user_1744889531318');
INSERT INTO public.players VALUES (17, 'user_1744889916002');
INSERT INTO public.players VALUES (18, 'user_1744889916001');
INSERT INTO public.players VALUES (19, 'user_1744889927792');
INSERT INTO public.players VALUES (20, 'user_1744889927791');
INSERT INTO public.players VALUES (21, 'user_1744890364509');
INSERT INTO public.players VALUES (22, 'user_1744890364508');
INSERT INTO public.players VALUES (23, 'user_1744890449909');
INSERT INTO public.players VALUES (24, 'user_1744890449908');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 69, true);


--
-- Name: players_player_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.players_player_id_seq', 24, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: players players_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.players
    ADD CONSTRAINT players_pkey PRIMARY KEY (player_id);


--
-- Name: players players_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.players
    ADD CONSTRAINT players_username_key UNIQUE (username);


--
-- Name: games fk_player; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_player FOREIGN KEY (player_id) REFERENCES public.players(player_id);


--
-- PostgreSQL database dump complete
--

