--
-- PostgreSQL database dump
--

-- Dumped from database version 11.12
-- Dumped by pg_dump version 11.12

-- Started on 2021-09-19 20:59:31

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

--
-- TOC entry 6 (class 2615 OID 24577)
-- Name: relacional; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA relacional;


ALTER SCHEMA relacional OWNER TO postgres;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 198 (class 1259 OID 24619)
-- Name: stg_matriculas; Type: TABLE; Schema: relacional; Owner: postgres
--

CREATE TABLE relacional.stg_matriculas (
    id integer NOT NULL,
    nome_arquivo character varying(255),
    matricula character varying(10),
    nome character varying(255),
    dat_nascimento date,
    sexo character varying(10),
    rg character varying(20),
    cpf character varying(15),
    endereco character varying(255),
    telefone character varying(20),
    celular character varying(20),
    nome_pai character varying(255),
    escolaridade_pai character varying(255),
    nome_mae character varying(255),
    escolaridade_mae character varying(255),
    cor_raca character varying(15),
    deficiencia character varying(50),
    transporte character varying(15),
    distancia character varying(10),
    veio_outra_escola character varying(10),
    situacao_anterior character varying(10),
    status_matricula character varying(20),
    dat_matricula date,
    turma character varying(5) NOT NULL,
    dat_carga timestamp without time zone DEFAULT (now())::timestamp without time zone NOT NULL
);


ALTER TABLE relacional.stg_matriculas OWNER TO postgres;

--
-- TOC entry 197 (class 1259 OID 24617)
-- Name: stg_matriculas_id_seq; Type: SEQUENCE; Schema: relacional; Owner: postgres
--

CREATE SEQUENCE relacional.stg_matriculas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE relacional.stg_matriculas_id_seq OWNER TO postgres;

--
-- TOC entry 2946 (class 0 OID 0)
-- Dependencies: 197
-- Name: stg_matriculas_id_seq; Type: SEQUENCE OWNED BY; Schema: relacional; Owner: postgres
--

ALTER SEQUENCE relacional.stg_matriculas_id_seq OWNED BY relacional.stg_matriculas.id;


--
-- TOC entry 216 (class 1259 OID 41070)
-- Name: tb_alunos; Type: TABLE; Schema: relacional; Owner: postgres
--

CREATE TABLE relacional.tb_alunos (
    id_aluno integer NOT NULL,
    matricula character varying(10),
    nome character varying(255),
    dat_nascimento date,
    rg character varying(20),
    cpf character varying(15),
    endereco character varying(255),
    telefone character varying(20),
    celular character varying(20),
    nome_pai character varying(255),
    escolaridade_pai character varying(255),
    nome_mae character varying(255),
    escolaridade_mae character varying(255),
    distancia character varying(10),
    dat_matricula date,
    cor_raca integer,
    sexo integer,
    deficiencia integer,
    transporte integer,
    dat_carga timestamp without time zone
);


ALTER TABLE relacional.tb_alunos OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 41068)
-- Name: tb_alunos_id_aluno_seq; Type: SEQUENCE; Schema: relacional; Owner: postgres
--

CREATE SEQUENCE relacional.tb_alunos_id_aluno_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE relacional.tb_alunos_id_aluno_seq OWNER TO postgres;

--
-- TOC entry 2947 (class 0 OID 0)
-- Dependencies: 215
-- Name: tb_alunos_id_aluno_seq; Type: SEQUENCE OWNED BY; Schema: relacional; Owner: postgres
--

ALTER SEQUENCE relacional.tb_alunos_id_aluno_seq OWNED BY relacional.tb_alunos.id_aluno;


--
-- TOC entry 204 (class 1259 OID 32900)
-- Name: tb_cor_raca; Type: TABLE; Schema: relacional; Owner: postgres
--

CREATE TABLE relacional.tb_cor_raca (
    id_cor integer NOT NULL,
    cor_raca character varying(15) NOT NULL
);


ALTER TABLE relacional.tb_cor_raca OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 32898)
-- Name: tb_cor_raca_id_cor_seq; Type: SEQUENCE; Schema: relacional; Owner: postgres
--

CREATE SEQUENCE relacional.tb_cor_raca_id_cor_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE relacional.tb_cor_raca_id_cor_seq OWNER TO postgres;

--
-- TOC entry 2948 (class 0 OID 0)
-- Dependencies: 203
-- Name: tb_cor_raca_id_cor_seq; Type: SEQUENCE OWNED BY; Schema: relacional; Owner: postgres
--

ALTER SEQUENCE relacional.tb_cor_raca_id_cor_seq OWNED BY relacional.tb_cor_raca.id_cor;


--
-- TOC entry 219 (class 1259 OID 49267)
-- Name: tb_cubo_matriculas; Type: TABLE; Schema: relacional; Owner: postgres
--

CREATE TABLE relacional.tb_cubo_matriculas (
    id_aluno integer,
    matricula character varying(10),
    nome character varying(255),
    dat_nascimento date,
    sexo character varying(10),
    rg character varying(20),
    cpf character varying(15),
    endereco character varying(255),
    telefone character varying(20),
    celular character varying(20),
    nome_pai character varying(255),
    escolaridade_pai character varying(255),
    nome_mae character varying(255),
    escolaridade_mae character varying(255),
    cor_raca character varying(15),
    deficiencia character varying(50),
    transporte character varying(15),
    distancia character varying(10),
    veio_outra_escola character varying(10),
    situacao_anterior character varying(10),
    status_matricula character varying(20),
    dat_matricula date,
    turma character varying(5),
    dat_carga timestamp without time zone
);


ALTER TABLE relacional.tb_cubo_matriculas OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 32908)
-- Name: tb_deficiencia; Type: TABLE; Schema: relacional; Owner: postgres
--

CREATE TABLE relacional.tb_deficiencia (
    id_deficiencia integer NOT NULL,
    deficiencia character varying(50) NOT NULL
);


ALTER TABLE relacional.tb_deficiencia OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 32906)
-- Name: tb_deficiencia_id_deficiencia_seq; Type: SEQUENCE; Schema: relacional; Owner: postgres
--

CREATE SEQUENCE relacional.tb_deficiencia_id_deficiencia_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE relacional.tb_deficiencia_id_deficiencia_seq OWNER TO postgres;

--
-- TOC entry 2949 (class 0 OID 0)
-- Dependencies: 205
-- Name: tb_deficiencia_id_deficiencia_seq; Type: SEQUENCE OWNED BY; Schema: relacional; Owner: postgres
--

ALTER SEQUENCE relacional.tb_deficiencia_id_deficiencia_seq OWNED BY relacional.tb_deficiencia.id_deficiencia;


--
-- TOC entry 218 (class 1259 OID 41155)
-- Name: tb_matriculas; Type: TABLE; Schema: relacional; Owner: postgres
--

CREATE TABLE relacional.tb_matriculas (
    id_matricula integer NOT NULL,
    id_aluno integer,
    matricula character varying(10),
    veio_outra_escola integer,
    situacao_anterior integer,
    status_matricula integer,
    dat_matricula date,
    turma integer,
    dat_carga timestamp without time zone
);


ALTER TABLE relacional.tb_matriculas OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 41153)
-- Name: tb_matriculas_id_matricula_seq; Type: SEQUENCE; Schema: relacional; Owner: postgres
--

CREATE SEQUENCE relacional.tb_matriculas_id_matricula_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE relacional.tb_matriculas_id_matricula_seq OWNER TO postgres;

--
-- TOC entry 2950 (class 0 OID 0)
-- Dependencies: 217
-- Name: tb_matriculas_id_matricula_seq; Type: SEQUENCE OWNED BY; Schema: relacional; Owner: postgres
--

ALTER SEQUENCE relacional.tb_matriculas_id_matricula_seq OWNED BY relacional.tb_matriculas.id_matricula;


--
-- TOC entry 200 (class 1259 OID 24686)
-- Name: tb_sexo; Type: TABLE; Schema: relacional; Owner: postgres
--

CREATE TABLE relacional.tb_sexo (
    id_sexo integer NOT NULL,
    sexo character varying(10) NOT NULL
);


ALTER TABLE relacional.tb_sexo OWNER TO postgres;

--
-- TOC entry 199 (class 1259 OID 24684)
-- Name: tb_sexo_id_sexo_seq; Type: SEQUENCE; Schema: relacional; Owner: postgres
--

CREATE SEQUENCE relacional.tb_sexo_id_sexo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE relacional.tb_sexo_id_sexo_seq OWNER TO postgres;

--
-- TOC entry 2951 (class 0 OID 0)
-- Dependencies: 199
-- Name: tb_sexo_id_sexo_seq; Type: SEQUENCE OWNED BY; Schema: relacional; Owner: postgres
--

ALTER SEQUENCE relacional.tb_sexo_id_sexo_seq OWNED BY relacional.tb_sexo.id_sexo;


--
-- TOC entry 210 (class 1259 OID 32924)
-- Name: tb_situacao_anterior; Type: TABLE; Schema: relacional; Owner: postgres
--

CREATE TABLE relacional.tb_situacao_anterior (
    id_situacao_anterior integer NOT NULL,
    situacao_anterior character varying(10) NOT NULL
);


ALTER TABLE relacional.tb_situacao_anterior OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 32922)
-- Name: tb_situacao_anterior_id_situacao_anterior_seq; Type: SEQUENCE; Schema: relacional; Owner: postgres
--

CREATE SEQUENCE relacional.tb_situacao_anterior_id_situacao_anterior_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE relacional.tb_situacao_anterior_id_situacao_anterior_seq OWNER TO postgres;

--
-- TOC entry 2952 (class 0 OID 0)
-- Dependencies: 209
-- Name: tb_situacao_anterior_id_situacao_anterior_seq; Type: SEQUENCE OWNED BY; Schema: relacional; Owner: postgres
--

ALTER SEQUENCE relacional.tb_situacao_anterior_id_situacao_anterior_seq OWNED BY relacional.tb_situacao_anterior.id_situacao_anterior;


--
-- TOC entry 212 (class 1259 OID 32932)
-- Name: tb_status_matricula; Type: TABLE; Schema: relacional; Owner: postgres
--

CREATE TABLE relacional.tb_status_matricula (
    id_status_matricula integer NOT NULL,
    status_matricula character varying(20) NOT NULL
);


ALTER TABLE relacional.tb_status_matricula OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 32930)
-- Name: tb_status_matricula_id_status_matricula_seq; Type: SEQUENCE; Schema: relacional; Owner: postgres
--

CREATE SEQUENCE relacional.tb_status_matricula_id_status_matricula_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE relacional.tb_status_matricula_id_status_matricula_seq OWNER TO postgres;

--
-- TOC entry 2953 (class 0 OID 0)
-- Dependencies: 211
-- Name: tb_status_matricula_id_status_matricula_seq; Type: SEQUENCE OWNED BY; Schema: relacional; Owner: postgres
--

ALTER SEQUENCE relacional.tb_status_matricula_id_status_matricula_seq OWNED BY relacional.tb_status_matricula.id_status_matricula;


--
-- TOC entry 202 (class 1259 OID 32892)
-- Name: tb_transporte; Type: TABLE; Schema: relacional; Owner: postgres
--

CREATE TABLE relacional.tb_transporte (
    id_transporte integer NOT NULL,
    transporte character varying(15) NOT NULL
);


ALTER TABLE relacional.tb_transporte OWNER TO postgres;

--
-- TOC entry 201 (class 1259 OID 32890)
-- Name: tb_transporte_id_transporte_seq; Type: SEQUENCE; Schema: relacional; Owner: postgres
--

CREATE SEQUENCE relacional.tb_transporte_id_transporte_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE relacional.tb_transporte_id_transporte_seq OWNER TO postgres;

--
-- TOC entry 2954 (class 0 OID 0)
-- Dependencies: 201
-- Name: tb_transporte_id_transporte_seq; Type: SEQUENCE OWNED BY; Schema: relacional; Owner: postgres
--

ALTER SEQUENCE relacional.tb_transporte_id_transporte_seq OWNED BY relacional.tb_transporte.id_transporte;


--
-- TOC entry 214 (class 1259 OID 32940)
-- Name: tb_turma; Type: TABLE; Schema: relacional; Owner: postgres
--

CREATE TABLE relacional.tb_turma (
    id_turma integer NOT NULL,
    turma character varying(5) NOT NULL
);


ALTER TABLE relacional.tb_turma OWNER TO postgres;

--
-- TOC entry 213 (class 1259 OID 32938)
-- Name: tb_turma_id_turma_seq; Type: SEQUENCE; Schema: relacional; Owner: postgres
--

CREATE SEQUENCE relacional.tb_turma_id_turma_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE relacional.tb_turma_id_turma_seq OWNER TO postgres;

--
-- TOC entry 2955 (class 0 OID 0)
-- Dependencies: 213
-- Name: tb_turma_id_turma_seq; Type: SEQUENCE OWNED BY; Schema: relacional; Owner: postgres
--

ALTER SEQUENCE relacional.tb_turma_id_turma_seq OWNED BY relacional.tb_turma.id_turma;


--
-- TOC entry 208 (class 1259 OID 32916)
-- Name: tb_veio_outra_escola; Type: TABLE; Schema: relacional; Owner: postgres
--

CREATE TABLE relacional.tb_veio_outra_escola (
    id_outra_escola integer NOT NULL,
    veio_outra_escola character varying(10) NOT NULL
);


ALTER TABLE relacional.tb_veio_outra_escola OWNER TO postgres;

--
-- TOC entry 207 (class 1259 OID 32914)
-- Name: tb_veio_outra_escola_id_outra_escola_seq; Type: SEQUENCE; Schema: relacional; Owner: postgres
--

CREATE SEQUENCE relacional.tb_veio_outra_escola_id_outra_escola_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE relacional.tb_veio_outra_escola_id_outra_escola_seq OWNER TO postgres;

--
-- TOC entry 2956 (class 0 OID 0)
-- Dependencies: 207
-- Name: tb_veio_outra_escola_id_outra_escola_seq; Type: SEQUENCE OWNED BY; Schema: relacional; Owner: postgres
--

ALTER SEQUENCE relacional.tb_veio_outra_escola_id_outra_escola_seq OWNED BY relacional.tb_veio_outra_escola.id_outra_escola;


--
-- TOC entry 2753 (class 2604 OID 24622)
-- Name: stg_matriculas id; Type: DEFAULT; Schema: relacional; Owner: postgres
--

ALTER TABLE ONLY relacional.stg_matriculas ALTER COLUMN id SET DEFAULT nextval('relacional.stg_matriculas_id_seq'::regclass);


--
-- TOC entry 2763 (class 2604 OID 41073)
-- Name: tb_alunos id_aluno; Type: DEFAULT; Schema: relacional; Owner: postgres
--

ALTER TABLE ONLY relacional.tb_alunos ALTER COLUMN id_aluno SET DEFAULT nextval('relacional.tb_alunos_id_aluno_seq'::regclass);


--
-- TOC entry 2757 (class 2604 OID 32903)
-- Name: tb_cor_raca id_cor; Type: DEFAULT; Schema: relacional; Owner: postgres
--

ALTER TABLE ONLY relacional.tb_cor_raca ALTER COLUMN id_cor SET DEFAULT nextval('relacional.tb_cor_raca_id_cor_seq'::regclass);


--
-- TOC entry 2758 (class 2604 OID 32911)
-- Name: tb_deficiencia id_deficiencia; Type: DEFAULT; Schema: relacional; Owner: postgres
--

ALTER TABLE ONLY relacional.tb_deficiencia ALTER COLUMN id_deficiencia SET DEFAULT nextval('relacional.tb_deficiencia_id_deficiencia_seq'::regclass);


--
-- TOC entry 2764 (class 2604 OID 41158)
-- Name: tb_matriculas id_matricula; Type: DEFAULT; Schema: relacional; Owner: postgres
--

ALTER TABLE ONLY relacional.tb_matriculas ALTER COLUMN id_matricula SET DEFAULT nextval('relacional.tb_matriculas_id_matricula_seq'::regclass);


--
-- TOC entry 2755 (class 2604 OID 24689)
-- Name: tb_sexo id_sexo; Type: DEFAULT; Schema: relacional; Owner: postgres
--

ALTER TABLE ONLY relacional.tb_sexo ALTER COLUMN id_sexo SET DEFAULT nextval('relacional.tb_sexo_id_sexo_seq'::regclass);


--
-- TOC entry 2760 (class 2604 OID 32927)
-- Name: tb_situacao_anterior id_situacao_anterior; Type: DEFAULT; Schema: relacional; Owner: postgres
--

ALTER TABLE ONLY relacional.tb_situacao_anterior ALTER COLUMN id_situacao_anterior SET DEFAULT nextval('relacional.tb_situacao_anterior_id_situacao_anterior_seq'::regclass);


--
-- TOC entry 2761 (class 2604 OID 32935)
-- Name: tb_status_matricula id_status_matricula; Type: DEFAULT; Schema: relacional; Owner: postgres
--

ALTER TABLE ONLY relacional.tb_status_matricula ALTER COLUMN id_status_matricula SET DEFAULT nextval('relacional.tb_status_matricula_id_status_matricula_seq'::regclass);


--
-- TOC entry 2756 (class 2604 OID 32895)
-- Name: tb_transporte id_transporte; Type: DEFAULT; Schema: relacional; Owner: postgres
--

ALTER TABLE ONLY relacional.tb_transporte ALTER COLUMN id_transporte SET DEFAULT nextval('relacional.tb_transporte_id_transporte_seq'::regclass);


--
-- TOC entry 2762 (class 2604 OID 32943)
-- Name: tb_turma id_turma; Type: DEFAULT; Schema: relacional; Owner: postgres
--

ALTER TABLE ONLY relacional.tb_turma ALTER COLUMN id_turma SET DEFAULT nextval('relacional.tb_turma_id_turma_seq'::regclass);


--
-- TOC entry 2759 (class 2604 OID 32919)
-- Name: tb_veio_outra_escola id_outra_escola; Type: DEFAULT; Schema: relacional; Owner: postgres
--

ALTER TABLE ONLY relacional.tb_veio_outra_escola ALTER COLUMN id_outra_escola SET DEFAULT nextval('relacional.tb_veio_outra_escola_id_outra_escola_seq'::regclass);


--
-- TOC entry 2919 (class 0 OID 24619)
-- Dependencies: 198
-- Data for Name: stg_matriculas; Type: TABLE DATA; Schema: relacional; Owner: postgres
--

COPY relacional.stg_matriculas (id, nome_arquivo, matricula, nome, dat_nascimento, sexo, rg, cpf, endereco, telefone, celular, nome_pai, escolaridade_pai, nome_mae, escolaridade_mae, cor_raca, deficiencia, transporte, distancia, veio_outra_escola, situacao_anterior, status_matricula, dat_matricula, turma, dat_carga) FROM stdin;
1	matriculas	6	CINTIA RAFAELA FOCHESATTO	2016-03-23	Feminino	377341081	11628182667	\N	(54)3291-5202	(54)3291-3845	\N	Ensino médio Completo	\N	Ensino fundamental Completo	Pardos	Nenhuma	Carro	30 Km	Sim	Aprovado	Concluida	2021-01-26	101	2021-08-30 00:45:40.763983
2	matriculas	12	FABIEL JULIAN SALVADOR	2015-06-03	Masculino	164841202	45177645026	\N	(54)3291-4378	(54)9200-3528	\N	Ensino fundamental Incomplento	\N	Ensino superior Incompleto	Brancos	Nenhuma	Ônibus	1 Km	Não	Aprovado	Concluida	2021-01-11	101	2021-08-30 00:45:40.763983
3	matriculas	65	MARINES ZAMPIERI BALLARDIN	2015-09-18	Feminino	630124179	90855074599	\N	(54)9187-4885	(54)9604-2515	\N	Ensino médio Completo	\N	Ensino médio Incomplento	Brancos	Nenhuma	Carro	1 Km	Não	Aprovado	Concluida	2021-01-22	101	2021-08-30 00:45:40.763983
4	matriculas	72	CAROLINE FOGAÇA	2015-05-29	Feminino	123183542	92534285049	\N	(54)3291-2578	3291-3530	\N	Ensino Técnico Incompleto	\N	Ensino superior Completo	Amarelos	Nenhuma	Carro	10 Km	Sim	Pendente	Concluida	2021-01-30	101	2021-08-30 00:45:40.763983
5	matriculas	73	BIANCA CAMASSOLA	2015-01-02	Feminino	431467135	78135379162	\N	(54)3291-2902	32911959	\N	Ensino fundamental Completo	\N	Ensino fundamental Incomplento	Brancos	Nenhuma	Carro	5 Km	Não	Aprovado	Concluida	2021-01-19	101	2021-08-30 00:45:40.763983
6	matriculas	96	NELCI LUCHI CASAL	2015-03-27	Feminino	170982363	28000408644	\N	(54)3291-2472	3291-4788	\N	Ensino superior Completo	\N	Ensino Técnico Incompleto	Indígenas	Nenhuma	Ônibus	10 Km	Não	Aprovado	Concluida	2021-01-22	101	2021-08-30 00:45:40.763983
7	matriculas	99	MAURICIO SPIGOLON	2015-02-04	Masculino	540571866	57960758220	\N	(54)3291-7479	3291-2971	\N	Ensino médio Incomplento	\N	Ensino Técnico Completo	Pardos	Nenhuma	Ônibus	30 Km	Não	Aprovado	Concluida	2021-01-26	101	2021-08-30 00:45:40.763983
8	matriculas	112	MARLI NEUMANN	2015-10-01	Feminino	854970339	15934191271	\N	(54)3291-3839	(54)9925-9948	\N	Ensino Técnico Incompleto	\N	Ensino Técnico Completo	Pardos	Deficiência auditiva	Ônibus	10 Km	Não	Aprovado	Pendente	2021-01-26	101	2021-08-30 00:45:40.763983
9	matriculas	123	CRISTIANE NUNES DA CRUZ	2015-12-21	Feminino	988418789	57989943622	\N	(54)3291-3521	32911209	\N	Ensino Técnico Incompleto	\N	Ensino superior Completo	Pardos	Nenhuma	A pé	15 Km	Não	Aprovado	Concluida	2021-02-05	101	2021-08-30 00:45:40.763983
10	matriculas	168	BRENDA GENTIL	2015-10-08	Feminino	265624644	77657134801	\N	(54)9627-4374	(54)9670-8008	\N	Ensino fundamental Completo	\N	Ensino Técnico Completo	Brancos	Deficiência visual	Bicicleta	20 Km	Não	Pendente	Concluida	2021-01-15	101	2021-08-30 00:45:40.763983
11	matriculas	185	PATRICIA PAGNO	2015-09-07	Feminino	575514047	47186348217	\N	(54)3291-2612	(54)3291-7410	\N	Ensino Técnico Incompleto	\N	Ensino superior Incompleto	Amarelos	Deficiência motora	Carro	30 Km	Não	Reprovou	Pendente	2021-01-12	101	2021-08-30 00:45:40.763983
12	matriculas	193	ANTONIO PAULO BALLARDIN	2015-11-12	Masculino	439089095	16121017190	\N	(54)9954-3783	91245608	\N	Ensino médio Completo	\N	Ensino fundamental Incomplento	Pardos	Nenhuma	Ônibus	15 Km	Não	Reprovou	Concluida	2021-02-05	101	2021-08-30 00:45:40.763983
13	matriculas	196	GUILHERME DE LIMA FERNANDES	2015-09-15	Masculino	887389958	35972390509	\N	(54)9157-3394	32913449	\N	Ensino Técnico Incompleto	\N	Ensino fundamental Completo	Brancos	Nenhuma	A pé	1 Km	Não	Aprovado	Concluida	2021-02-02	101	2021-08-30 00:45:40.763983
14	matriculas	201	EDUARDA SCHWARZ MACHADO	2015-04-07	Feminino	111998077	36089132052	\N	(54)9928-0226	(54)9665-2204	\N	Ensino Técnico Completo	\N	Ensino médio Completo	Brancos	Deficiência visual	Ônibus	15 Km	Não	Aprovado	Concluida	2021-01-19	101	2021-08-30 00:45:40.763983
15	matriculas	212	MELISSA CASTILHOS DA SILVA	2015-08-08	Feminino	346243249	32999177687	\N	(54)3291-1548	(54)8172-9551	\N	Ensino médio Incomplento	\N	Ensino Técnico Completo	Indígenas	Nenhuma	Ônibus	15 Km	Não	Aprovado	Pendente	2021-01-17	101	2021-08-30 00:45:40.763983
16	matriculas	220	JULIA POLO SUZIN	2015-07-17	Feminino	690451748	28669392956	\N	(54)9621-6932	(54)9922-2387	\N	Ensino Técnico Incompleto	\N	Ensino médio Completo	Indígenas	Nenhuma	A pé	5 Km	Não	Pendente	Concluida	2021-01-21	101	2021-08-30 00:45:40.763983
17	matriculas	241	MARIA EDUARDA DE CASTILHOS	2015-11-02	Feminino	556584083	69509920765	\N	(54)8447-5345	(54)3291-6334	\N	Ensino Técnico Completo	\N	Ensino Técnico Incompleto	Indígenas	Deficiência mental	Ônibus	5 Km	Não	Aprovado	Concluida	2021-02-01	101	2021-08-30 00:45:40.763983
18	matriculas	245	GABRIEL GIRARDELLO	2015-08-15	Masculino	979010461	13775779521	\N	(54)9929-9065	(54)9197-9444	\N	Ensino superior Incompleto	\N	Ensino médio Incomplento	Indígenas	Deficiência motora	Carro	5 Km	Não	Aprovado	Concluida	2021-02-06	101	2021-08-30 00:45:40.763983
19	matriculas	269	ALINE ZAN SANTOS	2015-07-10	Feminino	784889587	84238402693	\N	(54)9962-9588	32914348	\N	Ensino médio Incomplento	\N	Ensino fundamental Completo	Pardos	Nenhuma	A pé	5 Km	Não	Pendente	Concluida	2021-01-24	101	2021-08-30 00:45:40.763983
20	matriculas	280	CARLA VERGINIA ZUCCHETTI PIRES	2015-03-06	Feminino	453344788	65641628719	\N	(54)9924-4921	32914837	\N	Ensino superior Incompleto	\N	Ensino fundamental Completo	Pardos	Nenhuma	A pé	15 Km	Não	Aprovado	Concluida	2021-01-25	101	2021-08-30 00:45:40.763983
21	matriculas	310	JESSICA MELARA	2015-05-06	Feminino	427657209	45725950199	\N	(54)9136-8052	(54)3291-2318	\N	Ensino fundamental Completo	\N	Ensino médio Completo	Amarelos	Nenhuma	Moto	1 Km	Não	Aprovado	Concluida	2021-02-01	101	2021-08-30 00:45:40.763983
22	matriculas	314	CARLOS EDUARDO DA SILVA DE MORAES	2015-12-19	Masculino	358720003	76994185562	\N	(54)3291-2434	(54)9144-7578	\N	Ensino fundamental Incomplento	\N	Ensino fundamental Incomplento	Indígenas	Nenhuma	Carro	20 Km	Não	Aprovado	Pendente	2021-01-17	102	2021-08-30 00:45:40.763983
23	matriculas	332	CAROLINA CORSO PANASSOL	2015-12-12	Feminino	355267772	19968736245	\N	(54)9903-4584	(54)3235-1138	\N	Ensino superior Completo	\N	Ensino superior Incompleto	Pardos	Nenhuma	Moto	15 Km	Não	Pendente	Pendente	2021-01-29	102	2021-08-30 00:45:40.763983
24	matriculas	343	MATEUS MICHELON	2015-09-26	Masculino	302235642	15072865796	\N	32801114	(54)3291-1099	\N	Ensino médio Incomplento	\N	Ensino Técnico Incompleto	Brancos	Nenhuma	A pé	30 Km	Não	Reprovou	Concluida	2021-01-14	102	2021-08-30 00:45:40.763983
25	matriculas	350	GISELE FRANCISCHINI	2015-08-24	Feminino	497035844	34464838111	\N	(54)9695-3080	(54)3291-9187	\N	Ensino médio Completo	\N	Ensino superior Completo	Amarelos	Nenhuma	Moto	20 Km	Não	Aprovado	Concluida	2021-01-13	102	2021-08-30 00:45:40.763983
26	matriculas	353	JOSIANE VELHO MACEDO	2015-06-25	Feminino	530709797	30327722587	\N	(54)9600-4017	(54)3235-5108	\N	Ensino Técnico Completo	\N	Ensino fundamental Completo	Pardos	Nenhuma	Carro	5 Km	Não	Aprovado	Concluida	2021-01-31	102	2021-08-30 00:45:40.763983
27	matriculas	379	ANDREIA DA SILVEIRA POTT	2015-06-02	Feminino	699414148	30167088455	\N	(54)9901-9284	(54)3291-3368	\N	Ensino fundamental Incomplento	\N	Ensino fundamental Completo	Pardos	Nenhuma	Moto	10 Km	Sim	Aprovado	Concluida	2021-02-01	102	2021-08-30 00:45:40.763983
28	matriculas	384	GILMAR VEBER DA SILVA	2015-11-18	Masculino	955493632	41743808208	\N	(54)9241-8029	(54)3291-9100	\N	Ensino Técnico Completo	\N	Ensino médio Completo	Brancos	Nenhuma	Ônibus	10 Km	Não	Aprovado	Pendente	2021-01-23	102	2021-08-30 00:45:40.763983
29	matriculas	389	BIBIANA POMPEU	2015-02-16	Feminino	832569316	40765307725	\N	(54)9904-3867	(54)9708-1383	\N	Ensino Técnico Completo	\N	Ensino Técnico Completo	Pardos	Deficiência auditiva	Moto	10 Km	Não	Reprovou	Pendente	2021-01-14	102	2021-08-30 00:45:40.763983
30	matriculas	404	EDIANE REGINA DE SOUZA	2015-02-17	Feminino	732561913	82250609203	\N	(54)9121-1755	(54)9959-9558	\N	Ensino médio Incomplento	\N	Ensino Técnico Incompleto	Indígenas	Nenhuma	Moto	1 Km	Não	Aprovado	Concluida	2021-01-27	102	2021-08-30 00:45:40.763983
31	matriculas	408	GABRIELA MARINA DOS SANTOS	2015-04-18	Feminino	696714023	52294010874	\N	(54)3291-4403	(54)9191-7820	\N	Ensino fundamental Completo	\N	Ensino Técnico Completo	Amarelos	Nenhuma	A pé	1 Km	Não	Aprovado	Concluida	2021-01-18	102	2021-08-30 00:45:40.763983
32	matriculas	420	MILENE DA COSTA MONTANARI GAZIERO	2015-01-17	Feminino	761616505	11949423188	\N	(54)9120-1185	(51)9282-7044	\N	Ensino Técnico Incompleto	\N	Ensino Técnico Incompleto	Amarelos	Nenhuma	Bicicleta	30 Km	Não	Aprovado	Concluida	2021-02-04	102	2021-08-30 00:45:40.763983
33	matriculas	499	GABRIELI DE SOUSA	2015-12-22	Masculino	137714037	26079353279	\N	\N	(54)3291-2046	\N	Ensino superior Incompleto	\N	Ensino fundamental Incomplento	Brancos	Nenhuma	A pé	15 Km	Não	Pendente	Concluida	2021-01-15	102	2021-08-30 00:45:40.763983
34	matriculas	500	FABRICIO ERIK BALLARDIN	2015-11-29	Feminino	119897922	37590158418	\N	\N	(54)3291-3642	\N	Ensino superior Incompleto	\N	Ensino médio Completo	Pardos	Nenhuma	Ônibus	1 Km	Não	Aprovado	Concluida	2021-02-06	102	2021-08-30 00:45:40.763983
35	matriculas	530	LETÍCIA SORANZO	2015-04-05	Feminino	610051059	84023896615	\N	(54)3291-4201	32913005	\N	Ensino fundamental Incomplento	\N	Ensino superior Completo	Brancos	Nenhuma	Ônibus	50 Km	Não	Aprovado	Concluida	2021-01-14	102	2021-08-30 00:45:40.763983
36	matriculas	531	MICHAEL PEDRO BOFF	2015-09-02	Masculino	866486108	30781470015	\N	(54)9122-9290	32915337	\N	Ensino médio Completo	\N	Ensino fundamental Completo	Pardos	Deficiência visual	Carro	15 Km	Não	Aprovado	Concluida	2021-01-14	102	2021-08-30 00:45:40.763983
37	matriculas	532	GELCEMARA CASANOVA	2015-11-27	Feminino	754886918	78663815870	\N	(54)3291-3640	(54)3291-4124	\N	Ensino fundamental Incomplento	\N	Ensino superior Completo	Pardos	Nenhuma	Carro	5 Km	Não	Aprovado	Concluida	2021-01-22	102	2021-08-30 00:45:40.763983
38	matriculas	544	GERCI BARBOZA	2015-03-19	Masculino	799346281	92883852435	\N	(54)3291-1437	(54)9923-6992	\N	Ensino superior Completo	\N	Ensino médio Incomplento	Pretos	Nenhuma	Ônibus	5 Km	Não	Reprovou	Concluida	2021-02-02	102	2021-08-30 00:45:40.763983
39	matriculas	556	ROSIMERI ASCARI	2015-11-09	Feminino	164763720	63738715715	\N	(54)9139-5992	(54)3291-5138	\N	Ensino médio Completo	\N	Ensino fundamental Incomplento	Indígenas	Deficiência mental	Ônibus	5 Km	Não	Pendente	Concluida	2021-01-24	102	2021-08-30 00:45:40.763983
40	matriculas	628	 GABRIEL CASSOL	2015-05-31	Masculino	738145553	12554392191	\N	(54)3291-7487	(54)8116-2060	\N	Ensino fundamental Completo	\N	Ensino médio Incomplento	Amarelos	Nenhuma	Ônibus	20 Km	Não	Pendente	Concluida	2021-01-21	102	2021-08-30 00:45:40.763983
41	matriculas	644	 THALES ZATTA MEDEIROS	2015-08-06	Masculino	945652101	47115350514	\N	(54)3291-6355	(54)9926-8613	\N	Ensino médio Completo	\N	Ensino Técnico Completo	Pardos	Nenhuma	Ônibus	5 Km	Não	Aprovado	Concluida	2021-01-11	102	2021-08-30 00:45:40.763983
42	matriculas	660	 EDUARDA LEMOS LEITE	2015-01-26	Feminino	862667161	10537582782	\N	(54)3291-4942	(54)9109-8235	\N	Ensino Técnico Completo	\N	Ensino fundamental Completo	Pardos	Nenhuma	A pé	1 Km	Não	Aprovado	Concluida	2021-01-20	102	2021-08-30 00:45:40.763983
43	matriculas	670	 NATHÁLIA TOMIELLO	2015-11-04	Feminino	906901698	41723381962	\N	(54)9619-9161	(54)9958-5314	\N	Ensino Técnico Incompleto	\N	Ensino superior Incompleto	Brancos	Nenhuma	A pé	15 Km	Não	Aprovado	Concluida	2021-01-25	102	2021-08-30 00:45:40.763983
44	matriculas	694	 HELEN DA COSTA FRANÇA	2015-02-12	Feminino	948492466	35602078816	\N	(54)9134-4156	(54)8435-7135	\N	Ensino superior Completo	\N	Ensino Técnico Completo	Amarelos	Nenhuma	Carro	20 Km	Não	Aprovado	Concluida	2021-01-14	103	2021-08-30 00:45:40.763983
45	matriculas	695	 TALIA ROSA FORTUNATTI	2015-02-08	Feminino	975830997	89071210860	\N	(54)9635-5019	3291-4573	\N	Ensino superior Completo	\N	Ensino superior Completo	Brancos	Nenhuma	Ônibus	1 Km	Não	Aprovado	Concluida	2021-01-21	103	2021-08-30 00:45:40.763983
46	matriculas	711	ELISA GUERRA	2015-01-14	Feminino	250978092	74257143916	\N	(54)3921-7220	(54)3291-5307	\N	Ensino fundamental Incomplento	\N	Ensino superior Incompleto	Amarelos	Nenhuma	A pé	1 Km	Não	Reprovou	Concluida	2021-01-18	103	2021-08-30 00:45:40.763983
47	matriculas	726	JACIELI SUZIN	2015-02-09	Feminino	311636023	87394266524	\N	(54)9620-3908	(54)3291-5304	\N	Ensino superior Incompleto	\N	Ensino fundamental Completo	Brancos	Nenhuma	Ônibus	1 Km	Não	Reprovou	Concluida	2021-02-05	103	2021-08-30 00:45:40.763983
48	matriculas	753	DANIELE CASAROTTO PREBIANCA	2015-06-11	Feminino	159383844	25710716517	\N	(54)3291-7073	(54)3291-1962	\N	Ensino superior Completo	\N	Ensino fundamental Completo	Brancos	Nenhuma	A pé	15 Km	Não	Aprovado	Concluida	2021-02-08	103	2021-08-30 00:45:40.763983
49	matriculas	769	ANA JULIA POSSA	2015-12-12	Feminino	824471304	11541353040	\N	(54)9109-8973	(54)9197-1955	\N	Ensino médio Incomplento	\N	Ensino fundamental Incomplento	Amarelos	Nenhuma	Ônibus	15 Km	Não	Aprovado	Pendente	2021-01-18	103	2021-08-30 00:45:40.763983
50	matriculas	797	DEMIS ALAN SANDI MOREIRA	2015-08-21	Feminino	991338952	11752150797	\N	(54)9949-0598	(54)9671-5838	\N	Ensino médio Completo	\N	Ensino médio Incomplento	Pardos	Deficiência visual	Moto	30 Km	Não	Pendente	Pendente	2021-02-08	103	2021-08-30 00:45:40.763983
51	matriculas	819	VICENTE DA LUZ	2015-11-05	Masculino	220821997	91349859711	\N	(54)9926-8054	(54)9189-6683	\N	Ensino superior Incompleto	\N	Ensino Técnico Incompleto	Pardos	Nenhuma	Ônibus	10 Km	Sim	Aprovado	Concluida	2021-01-31	103	2021-08-30 00:45:40.763983
52	matriculas	820	MARINÊS BOMBANA RIZZON	2015-06-16	Feminino	311253391	79930942856	\N	(54)9919-8672	(54)8435-2581	\N	Ensino superior Completo	\N	Ensino superior Completo	Amarelos	Deficiência auditiva	Ônibus	30 Km	Não	Aprovado	Concluida	2021-01-20	103	2021-08-30 00:45:40.763983
53	matriculas	841	ANDREI VIEIRA	2015-12-24	Masculino	404633871	48906082014	\N	(54)9157-5235	(54)9673-9077	\N	Ensino médio Incomplento	\N	Ensino médio Incomplento	Pardos	Nenhuma	A pé	5 Km	Não	Aprovado	Concluida	2021-01-25	103	2021-08-30 00:45:40.763983
54	matriculas	844	LAURO SOBOLESWKI FLORES	2015-06-30	Masculino	662484002	59996347462	\N	(54)9912-4692	(54)9932-2231	\N	Ensino fundamental Completo	\N	Ensino Técnico Incompleto	Pardos	Nenhuma	Carro	5 Km	Não	Aprovado	Pendente	2021-01-23	103	2021-08-30 00:45:40.763983
55	matriculas	863	DENOI MARIA LEONARDELLI CAVALLI	2015-01-04	Feminino	892661432	43378777922	\N	(54)9971-1252	(54)9180-0938	\N	Ensino Técnico Completo	\N	Ensino fundamental Completo	Amarelos	Nenhuma	Carro	50 Km	Não	Aprovado	Concluida	2021-01-26	103	2021-08-30 00:45:40.763983
56	matriculas	898	AIRTON LUIZ CANALE FILHO	2015-01-30	Masculino	554643681	10635335277	\N	(54)3291-3106	(54)9183-9486	\N	Ensino fundamental Incomplento	\N	Ensino Técnico Incompleto	Pretos	Nenhuma	A pé	1 Km	Não	Reprovou	Pendente	2021-01-17	103	2021-08-30 00:45:40.763983
57	matriculas	927	LUAN PINTO BRITO	2015-09-23	Feminino	118245193	61086054944	\N	(54)9957-5008	(54)9123-9838	\N	Ensino superior Completo	\N	Ensino Técnico Completo	Indígenas	Nenhuma	A pé	20 Km	Sim	Aprovado	Concluida	2021-01-14	103	2021-08-30 00:45:40.763983
58	matriculas	943	CAMILA DA SILVA BRESOLIN POSSA	2015-08-15	Feminino	699248558	30441238912	\N	(54)9627-6013	(54)9190-0812	\N	Ensino superior Incompleto	\N	Ensino superior Completo	Pretos	Nenhuma	A pé	5 Km	Não	Aprovado	Concluida	2021-02-01	103	2021-08-30 00:45:40.763983
59	matriculas	963	PATRÍCIA CITTON	2015-08-31	Feminino	570574858	21089126886	\N	91318737	(54)9700-8428	\N	Ensino médio Incomplento	\N	Ensino Técnico Incompleto	Brancos	Nenhuma	Ônibus	5 Km	Não	Aprovado	Concluida	2021-02-02	103	2021-08-30 00:45:40.763983
60	matriculas	964	RITA DE CASSIA BOGO	2015-06-15	Feminino	868699656	45896439716	\N	99529552	(54)9980-2117	\N	Ensino fundamental Incomplento	\N	Ensino médio Incomplento	Amarelos	Deficiência motora	Ônibus	30 Km	Sim	Aprovado	Concluida	2021-01-29	103	2021-08-30 00:45:40.763983
61	matriculas	967	GUILHERME CICHIN SPIGOLON	2015-04-20	Masculino	241117065	83340317014	\N	(54)9949-5074	(54)9650-2698	\N	Ensino médio Completo	\N	Ensino Técnico Completo	Brancos	Deficiência visual	A pé	20 Km	Não	Aprovado	Concluida	2021-01-31	103	2021-08-30 00:45:40.763983
62	matriculas	978	MARIA TERESA CECHINATO	2015-06-26	Feminino	313461052	88625859023	\N	(54)3235-5114	(54)3280-1136	\N	Ensino Técnico Completo	\N	Ensino Técnico Completo	Pardos	Deficiência auditiva	A pé	20 Km	Não	Pendente	Concluida	2021-01-23	103	2021-08-30 00:45:40.763983
63	matriculas	981	GENAINA PRISCILA PAGNO	2015-07-24	Feminino	628965023	20245144909	\N	(54)3291-3564	(54)8435-7134	\N	Ensino fundamental Incomplento	\N	Ensino superior Incompleto	Pardos	Nenhuma	Carro	15 Km	Não	Pendente	Concluida	2021-01-14	103	2021-08-30 00:45:40.763983
64	matriculas	987	LIAMARA GARBIN RODRIGUES	2015-09-23	Feminino	227403556	55310981162	\N	(  )9946-9354	(54)9210-7586	\N	Ensino fundamental Incomplento	\N	Ensino Técnico Completo	Brancos	Deficiência visual	Ônibus	1 Km	Não	Aprovado	Concluida	2021-02-04	103	2021-08-30 00:45:40.763983
65	matriculas	75	NATÁLIA CAMASSOLA	2014-07-26	Feminino	403399474	12515157361	\N	\N	3281022	\N	Ensino médio Completo	\N	Ensino Técnico Completo	Pretos	Deficiência visual	A pé	1 Km	Não	Aprovado	Pendente	2021-01-19	201	2021-08-30 00:45:40.763983
66	matriculas	105	SUELI TERESINHA VALDEZ	2014-02-19	Feminino	778432256	66117047517	\N	(54)3291-8200	(54)3291-4045	\N	Ensino superior Incompleto	\N	Ensino Técnico Completo	Brancos	Nenhuma	Carro	1 Km	Não	Pendente	Concluida	2021-02-03	201	2021-08-30 00:45:40.763983
67	matriculas	128	FRANCIELI RODRIGUES DOS SANTOS	2014-10-01	Feminino	998570980	96337592770	\N	(54)3291-2129	32678229	\N	Ensino superior Incompleto	\N	Ensino Técnico Incompleto	Brancos	Nenhuma	Carro	15 Km	Não	Aprovado	Pendente	2021-01-14	201	2021-08-30 00:45:40.763983
68	matriculas	164	MARIA EDUARDA BRESOLIN CRESTANA	2014-03-31	Feminino	730859298	83783588594	\N	(54)3291-7501	32914430	\N	Ensino médio Completo	\N	Ensino fundamental Completo	Pardos	Nenhuma	Bicicleta	1 Km	Não	Pendente	Concluida	2021-01-24	201	2021-08-30 00:45:40.763983
69	matriculas	171	NILCE SUSANA MENGON	2014-01-31	Feminino	971311523	31643817116	\N	(54)3291-2930	32911875	\N	Ensino fundamental Incomplento	\N	Ensino médio Incomplento	Amarelos	Deficiência visual	Ônibus	5 Km	Sim	Aprovado	Pendente	2021-02-06	201	2021-08-30 00:45:40.763983
70	matriculas	174	LUIZ BUGANÇA	2014-04-19	Masculino	963272766	18395966747	\N	(54)9210-4833	91128043	\N	Ensino superior Incompleto	\N	Ensino superior Incompleto	Brancos	Nenhuma	Ônibus	5 Km	Não	Aprovado	Concluida	2021-01-30	201	2021-08-30 00:45:40.763983
71	matriculas	186	MARIA JOEMA MACEDO DOS SANTOS	2014-11-22	Feminino	310056310	39740903468	\N	(54)9990-0226	3504-2447	\N	Ensino médio Incomplento	\N	Ensino superior Completo	Indígenas	Nenhuma	A pé	15 Km	Não	Aprovado	Concluida	2021-01-24	201	2021-08-30 00:45:40.763983
72	matriculas	224	OTÁVIO RECH	2014-09-05	Masculino	118319438	88019175919	\N	(54)9966-2010	(54)3291-4110	\N	Ensino superior Incompleto	\N	Ensino fundamental Completo	Pardos	Nenhuma	A pé	1 Km	Não	Aprovado	Concluida	2021-01-17	201	2021-08-30 00:45:40.763983
73	matriculas	246	MARCELO ALBERTO BOPSIN	2014-10-05	Masculino	591414165	66039729150	\N	(54)9641-9927	(54)9631-8342	\N	Ensino Técnico Incompleto	\N	Ensino médio Incomplento	Pretos	Nenhuma	Ônibus	10 Km	Não	Aprovado	Concluida	2021-01-31	201	2021-08-30 00:45:40.763983
74	matriculas	286	PATRICK RIBEIRO LOPES	2014-04-23	Masculino	973621186	77363770246	\N	32911954	32915357	\N	Ensino superior Incompleto	\N	Ensino médio Completo	Brancos	Nenhuma	Carro	10 Km	Sim	Aprovado	Concluida	2021-01-26	201	2021-08-30 00:45:40.763983
75	matriculas	290	KAMILLY DANBOWSKI	2014-11-10	Feminino	325669480	75471105934	\N	(54)9667-7878	(54)3291-3304	\N	Ensino Técnico Incompleto	\N	Ensino Técnico Incompleto	Pardos	Deficiência motora	Moto	5 Km	Sim	Aprovado	Pendente	2021-01-21	201	2021-08-30 00:45:40.763983
76	matriculas	305	CLARICE ASCARI	2014-07-05	Feminino	218836564	69320190650	\N	(54)9666-7511	(54)3291-3498	\N	Ensino superior Incompleto	\N	Ensino Técnico Completo	Pretos	Nenhuma	Moto	5 Km	Não	Aprovado	Concluida	2021-01-21	201	2021-08-30 00:45:40.763983
77	matriculas	315	DANIEL DA SILVA CARVALHO	2014-08-15	Masculino	862387740	60862890706	\N	(54)9928-7836	(54)3291-4783	\N	Ensino superior Incompleto	\N	Ensino superior Completo	Brancos	Nenhuma	Ônibus	1 Km	Sim	Pendente	Concluida	2021-01-30	201	2021-08-30 00:45:40.763983
78	matriculas	388	GABRIELE B. GIOTTI	2014-02-17	Feminino	640897782	17307131846	\N	(54)9906-1470	(54)3291-3845	\N	Ensino superior Incompleto	\N	Ensino fundamental Incomplento	Pardos	Nenhuma	A pé	20 Km	Não	Aprovado	Concluida	2021-01-10	201	2021-08-30 00:45:40.763983
79	matriculas	409	KRICIAN FURTADO BRANCO FOGAÇA	2014-11-22	Masculino	409094686	39660970866	\N	(54)9924-9291	(54)9144-3398	\N	Ensino Técnico Completo	\N	Ensino Técnico Incompleto	Brancos	Nenhuma	Ônibus	50 Km	Não	Aprovado	Concluida	2021-01-24	201	2021-08-30 00:45:40.763983
80	matriculas	413	ERIK WILIAN RODRIGUES DO PRADO	2014-05-25	Masculino	292085141	21546479984	\N	(54)9973-7644	(54)3291-2761	\N	Ensino Técnico Incompleto	\N	Ensino Técnico Incompleto	Pardos	Nenhuma	Bicicleta	1 Km	Não	Aprovado	Concluida	2021-01-29	201	2021-08-30 00:45:40.763983
81	matriculas	416	RODRIGO RIZZON	2014-01-23	Masculino	358138702	38477996813	\N	(54)9657-2373	(54)3291-1406	\N	Ensino médio Incomplento	\N	Ensino médio Incomplento	Brancos	Nenhuma	A pé	20 Km	Não	Aprovado	Concluida	2021-01-30	201	2021-08-30 00:45:40.763983
82	matriculas	417	JHORDAN ADEMIR DOS SANTOS	2014-07-23	Masculino	322877949	79022984437	\N	(54)3235-5044	(54)3291-4064	\N	Ensino superior Completo	\N	Ensino Técnico Completo	Indígenas	Nenhuma	A pé	5 Km	Não	Pendente	Concluida	2021-01-30	201	2021-08-30 00:45:40.763983
83	matriculas	423	EVERTON PACHECO ALVES	2014-10-28	Masculino	789815846	16254359920	\N	(54)3235-1069	(54)3291-3277	\N	Ensino superior Completo	\N	Ensino fundamental Incomplento	Pardos	Nenhuma	Ônibus	15 Km	Não	Pendente	Concluida	2021-01-28	201	2021-08-30 00:45:40.763983
84	matriculas	436	JENNIFER MACHADO DOS SANTOS	2014-07-12	Feminino	675003263	73805039575	\N	(54)9162-4411	(54)9927-3641	\N	Ensino fundamental Incomplento	\N	Ensino superior Completo	Brancos	Nenhuma	Carro	15 Km	Não	Aprovado	Concluida	2021-02-03	201	2021-08-30 00:45:40.763983
85	matriculas	461	ALISSON DE CANDIDO BARBOSA	2014-01-15	Masculino	520606694	85610751352	\N	(54)9164-6665	32911020	\N	Ensino fundamental Completo	\N	Ensino superior Incompleto	Amarelos	Nenhuma	Ônibus	5 Km	Não	Reprovou	Concluida	2021-01-16	201	2021-08-30 00:45:40.763983
86	matriculas	486	BRUNA CIOATO SANDI	2014-10-16	Feminino	169005293	59022438799	\N	(54)3291-3503	(54)3291-6361	\N	Ensino superior Completo	\N	Ensino Técnico Completo	Brancos	Nenhuma	A pé	1 Km	Não	Aprovado	Concluida	2021-01-19	201	2021-08-30 00:45:40.763983
87	matriculas	502	EDUARDO SILVA	2014-09-21	Masculino	758142665	73041726923	\N	\N	(54)3291-7493	\N	Ensino médio Completo	\N	Ensino superior Incompleto	Brancos	Nenhuma	A pé	1 Km	Não	Aprovado	Pendente	2021-02-07	201	2021-08-30 00:45:40.763983
88	matriculas	510	LEONARDO LAZZARETI	2014-11-29	Masculino	893079196	20870759286	\N	(54)3291-3738	(54)9642-2791	\N	Ensino Técnico Completo	\N	Ensino Técnico Completo	Pretos	Nenhuma	Ônibus	15 Km	Não	Reprovou	Pendente	2021-02-03	201	2021-08-30 00:45:40.763983
89	matriculas	569	JOÃO FELIPE LUZ	2014-06-12	Masculino	159352796	27523248531	\N	(54)9943-2497	(54)9927-7057	\N	Ensino fundamental Incomplento	\N	Ensino fundamental Completo	Pardos	Nenhuma	Ônibus	30 Km	Sim	Aprovado	Concluida	2021-01-17	202	2021-08-30 00:45:40.763983
90	matriculas	588	ALEXANDRE SORANZO	2014-09-25	Masculino	814818442	63112742576	\N	(54)3291-1692	(54)9986-3554	\N	Ensino médio Incomplento	\N	Ensino fundamental Incomplento	Brancos	Deficiência motora	Ônibus	5 Km	Não	Pendente	Concluida	2021-02-07	202	2021-08-30 00:45:40.763983
91	matriculas	594	SUZANA DE FÁTIMA BORGES LAURIANO	2014-04-27	Feminino	905350823	41006734260	\N	(54)9919-8322	(54)3291-3348	\N	Ensino médio Incomplento	\N	Ensino fundamental Incomplento	Indígenas	Nenhuma	Ônibus	20 Km	Não	Aprovado	Pendente	2021-02-02	202	2021-08-30 00:45:40.763983
92	matriculas	618	RODRIGO SOLDATELLI DA ROSA	2014-03-28	Masculino	672648480	78941340243	\N	(54)9109-1841	(54)9618-2718	\N	Ensino Técnico Completo	\N	Ensino médio Completo	Pretos	Nenhuma	Ônibus	20 Km	Não	Aprovado	Concluida	2021-01-23	202	2021-08-30 00:45:40.763983
93	matriculas	649	 DAIANE MASCARELLO	2014-10-19	Feminino	355844421	17731200313	\N	(54)9110-1825	(54)3291-4308	\N	Ensino médio Completo	\N	Ensino Técnico Incompleto	Brancos	Nenhuma	Carro	5 Km	Não	Aprovado	Pendente	2021-02-01	202	2021-08-30 00:45:40.763983
94	matriculas	675	 FELIPE ZANELLA	2014-01-22	Masculino	385458819	17485375510	\N	(11)1111-1111	(54)3291-6520	\N	Ensino superior Completo	\N	Ensino Técnico Incompleto	Brancos	Nenhuma	Bicicleta	5 Km	Não	Aprovado	Pendente	2021-01-24	202	2021-08-30 00:45:40.763983
95	matriculas	681	 TAYANE PERES GONÇALVES	2014-09-28	Feminino	862795659	52926645462	\N	(54)9961-3621	(54)9941-5547	\N	Ensino superior Completo	\N	Ensino fundamental Completo	Pardos	Nenhuma	Carro	5 Km	Não	Aprovado	Concluida	2021-01-29	202	2021-08-30 00:45:40.763983
96	matriculas	698	 DANIEL BARBOSA LIMA	2014-08-31	Masculino	436222367	38881334747	\N	(54)9912-6124	(54)3291-2215	\N	Ensino superior Incompleto	\N	Ensino fundamental Incomplento	Brancos	Nenhuma	Moto	30 Km	Não	Aprovado	Concluida	2021-01-13	202	2021-08-30 00:45:40.763983
97	matriculas	704	CAMILA SELENE QUISSINI	2014-04-25	Feminino	783164698	77590203999	\N	(54)9253-2184	(54)3291-4111	\N	Ensino superior Completo	\N	Ensino superior Completo	Brancos	Nenhuma	A pé	15 Km	Não	Pendente	Pendente	2021-02-04	202	2021-08-30 00:45:40.763983
98	matriculas	705	CAIO IAN MAR LEMOS	2014-03-29	Masculino	408811979	77939852443	\N	(54)3235-1167	(54)9979-2704	\N	Ensino Técnico Incompleto	\N	Ensino médio Incomplento	Pretos	Nenhuma	Carro	20 Km	Não	Aprovado	Concluida	2021-01-11	202	2021-08-30 00:45:40.763983
99	matriculas	724	ELOIZA CICHIN CARARO	2014-02-10	Feminino	857003197	98279752422	\N	(54)9706-5117	(54)8116-6922	\N	Ensino Técnico Incompleto	\N	Ensino superior Completo	Brancos	Nenhuma	A pé	15 Km	Não	Aprovado	Pendente	2021-01-21	202	2021-08-30 00:45:40.763983
100	matriculas	755	AUGUSTO RIZZON	2014-01-31	Masculino	288323514	96846779269	\N	(54)8119-3624	(54)9176-3971	\N	Ensino superior Incompleto	\N	Ensino superior Incompleto	Brancos	Nenhuma	Ônibus	10 Km	Não	Aprovado	Concluida	2021-02-03	202	2021-08-30 00:45:40.763983
101	matriculas	768	MILENA VEDANA	2014-10-13	Feminino	497015083	10499603525	\N	(54)9110-6394	(54)3291-1808	\N	Ensino médio Incomplento	\N	Ensino Técnico Completo	Pardos	Deficiência visual	Ônibus	1 Km	Não	Aprovado	Pendente	2021-01-19	202	2021-08-30 00:45:40.763983
102	matriculas	781	WILLIAN DE LIMA	2014-03-26	Masculino	210170347	27506448247	\N	(54)3291-4411	(54)3291-1840	\N	Ensino Técnico Completo	\N	Ensino superior Completo	Pardos	Nenhuma	Ônibus	30 Km	Sim	Aprovado	Concluida	2021-01-11	202	2021-08-30 00:45:40.763983
103	matriculas	784	BRUNO ZANETTE	2014-10-14	Masculino	943315709	85215917313	\N	(54)9157-7598	(54)3291-2887	\N	Ensino superior Incompleto	\N	Ensino superior Incompleto	Brancos	Nenhuma	Bicicleta	10 Km	Não	Aprovado	Concluida	2021-01-21	202	2021-08-30 00:45:40.763983
104	matriculas	786	MATHEUS SIOTA DE LIMA	2014-08-07	Masculino	492091152	83369385707	\N	(51)8033-4543	(54)9685-0114	\N	Ensino superior Completo	\N	Ensino fundamental Incomplento	Pardos	Nenhuma	A pé	15 Km	Não	Aprovado	Pendente	2021-01-18	202	2021-08-30 00:45:40.763983
105	matriculas	801	JONATHAN DE LOOK	2014-01-21	Masculino	877337862	78280492350	\N	(54)3291-5075	(54)9162-3576	\N	Ensino fundamental Completo	\N	Ensino médio Incomplento	Amarelos	Nenhuma	Moto	5 Km	Não	Aprovado	Concluida	2021-02-04	202	2021-08-30 00:45:40.763983
106	matriculas	803	EMANUEL GOMES	2014-12-16	Masculino	982411382	85317500207	\N	(54)9244-0316	(54)9189-6683	\N	Ensino Técnico Incompleto	\N	Ensino fundamental Completo	Brancos	Nenhuma	Ônibus	1 Km	Não	Aprovado	Concluida	2021-01-12	202	2021-08-30 00:45:40.763983
107	matriculas	831	IARA STUDIZINSKI	2014-11-29	Feminino	589245932	56035943855	\N	(54)9656-3054	(54)9165-1573	\N	Ensino fundamental Incomplento	\N	Ensino Técnico Completo	Amarelos	Nenhuma	Moto	1 Km	Não	Aprovado	Pendente	2021-02-06	202	2021-08-30 00:45:40.763983
108	matriculas	876	MAIQUI SOLDERA	2014-07-18	Masculino	698493215	87273677987	\N	(54)9953-3581	(54)3291-4466	\N	Ensino Técnico Completo	\N	Ensino médio Incomplento	Pardos	Nenhuma	Carro	10 Km	Não	Aprovado	Concluida	2021-01-11	202	2021-08-30 00:45:40.763983
109	matriculas	882	RUI RIZZON	2014-04-08	Masculino	876736531	79918511147	\N	(54)9623-7374	(54)9942-2699	\N	Ensino fundamental Incomplento	\N	Ensino Técnico Incompleto	Amarelos	Nenhuma	Ônibus	5 Km	Não	Pendente	Pendente	2021-02-06	202	2021-08-30 00:45:40.763983
110	matriculas	892	RUBIANE GUERRA	2014-05-23	Feminino	687576178	28867699886	\N	(54)9917-0716	(54)9130-8423	\N	Ensino fundamental Incomplento	\N	Ensino Técnico Completo	Brancos	Nenhuma	Ônibus	10 Km	Sim	Aprovado	Concluida	2021-01-28	202	2021-08-30 00:45:40.763983
111	matriculas	901	JOÃO MARCOS CECATO	2014-04-04	Masculino	653341396	60551312321	\N	(54)3291-3437	(54)9623-2883	\N	Ensino Técnico Completo	\N	Ensino superior Incompleto	Brancos	Deficiência auditiva	Carro	30 Km	Não	Aprovado	Concluida	2021-01-26	202	2021-08-30 00:45:40.763983
112	matriculas	903	LAURA CASTILHOS DOS REIS	2014-07-11	Feminino	479460417	25466625175	\N	(54)9943-9158	(54)9982-5508	\N	Ensino fundamental Incomplento	\N	Ensino Técnico Incompleto	Pretos	Nenhuma	A pé	10 Km	Não	Pendente	Pendente	2021-02-01	202	2021-08-30 00:45:40.763983
113	matriculas	937	TAINARA DA SILVA CARDOSO	2014-12-24	Feminino	433739925	71585214511	\N	(54)9658-0856	(53)9954-1108	\N	Ensino fundamental Incomplento	\N	Ensino Técnico Incompleto	Indígenas	Nenhuma	Moto	5 Km	Não	Aprovado	Concluida	2021-02-07	202	2021-08-30 00:45:40.763983
114	matriculas	941	MARIA CRISTINA MARCANZONI	2014-06-01	Feminino	691180897	68934816916	\N	(54)9181-2124	(54)3291-2156	\N	Ensino médio Completo	\N	Ensino Técnico Completo	Brancos	Deficiência motora	Carro	30 Km	Não	Aprovado	Pendente	2021-01-13	202	2021-08-30 00:45:40.763983
115	matriculas	985	AMANDA SCODRO	2014-03-02	Feminino	598656146	78364540257	\N	32912596	(54)9910-4829	\N	Ensino fundamental Completo	\N	Ensino superior Incompleto	Pardos	Deficiência visual	Moto	15 Km	Não	Reprovou	Concluida	2021-01-13	202	2021-08-30 00:45:40.763983
116	matriculas	28	CRISTIAN CAMATTI MENEGON	2013-06-08	Masculino	469054691	88071449436	\N	(54)8154-6723	(54)9996-4577	\N	Ensino fundamental Incomplento	\N	Ensino fundamental Incomplento	Brancos	Nenhuma	Carro	15 Km	Não	Aprovado	Concluida	2021-01-29	301	2021-08-30 00:45:40.763983
117	matriculas	58	GUILHERME FIGUEIRÓ HALLAL	2013-04-13	Masculino	696361017	12949541173	\N	(54)3291-2557	(54)9144-8826	\N	Ensino Técnico Completo	\N	Ensino fundamental Incomplento	Pardos	Nenhuma	Ônibus	5 Km	Não	Aprovado	Concluida	2021-02-01	301	2021-08-30 00:45:40.763983
118	matriculas	76	JÉSSICA FOCHESATO	2013-03-07	Feminino	862313949	55348667160	\N	(54)9648-0061	32911762	\N	Ensino médio Incomplento	\N	Ensino médio Completo	Amarelos	Nenhuma	Carro	10 Km	Não	Pendente	Concluida	2021-01-23	301	2021-08-30 00:45:40.763983
119	matriculas	91	DEISE CARLA BOSSARDI	2013-09-24	Feminino	938757069	90897524215	\N	(54)3291-8100	(54)9179-7950	\N	Ensino Técnico Incompleto	\N	Ensino superior Completo	Indígenas	Nenhuma	Ônibus	5 Km	Não	Aprovado	Concluida	2021-01-13	301	2021-08-30 00:45:40.763983
120	matriculas	102	RICARDO DALZOTTO	2013-03-12	Masculino	861610863	74912584514	\N	(54)3291-9848	32914199	\N	Ensino médio Incomplento	\N	Ensino superior Completo	Brancos	Nenhuma	Carro	15 Km	Não	Aprovado	Concluida	2021-01-26	301	2021-08-30 00:45:40.763983
121	matriculas	106	BERNARDETE PEROZZO RIZZON	2013-01-20	Feminino	171862056	87388320308	\N	(54)9143-4902	(54)3291-3107	\N	Ensino médio Completo	\N	Ensino fundamental Completo	Brancos	Nenhuma	Ônibus	1 Km	Não	Pendente	Concluida	2021-01-25	301	2021-08-30 00:45:40.763983
122	matriculas	139	ARTHUR DE ALMEIDA RAMOS	2013-02-01	Masculino	415851881	84202187724	\N	(54)9146-2360	(54)9149-7396	\N	Ensino superior Incompleto	\N	Ensino fundamental Completo	Brancos	Nenhuma	A pé	10 Km	Não	Aprovado	Concluida	2021-01-30	301	2021-08-30 00:45:40.763983
123	matriculas	150	AMANDA DA SILVA	2013-12-06	Feminino	327305373	36419248218	\N	(54)9668-6283	(54)3291-4257	\N	Ensino Técnico Completo	\N	Ensino médio Completo	Brancos	Nenhuma	Ônibus	10 Km	Não	Aprovado	Concluida	2021-02-01	301	2021-08-30 00:45:40.763983
124	matriculas	159	MILENA BASSANESI	2013-10-06	Feminino	746196684	60769355982	\N	(54)9119-2863	(54)9128-0051	\N	Ensino médio Completo	\N	Ensino fundamental Completo	Pardos	Nenhuma	Carro	30 Km	Sim	Reprovou	Concluida	2021-01-27	301	2021-08-30 00:45:40.763983
125	matriculas	178	ERIC DALLAGNO	2013-12-05	Feminino	376893610	13314736967	\N	(54)9677-0281	(54)3291-2214	\N	Ensino fundamental Completo	\N	Ensino Técnico Completo	Brancos	Nenhuma	Carro	5 Km	Sim	Aprovado	Pendente	2021-02-01	301	2021-08-30 00:45:40.763983
126	matriculas	200	LUCAS PEDROTI	2013-07-02	Masculino	952916222	40975645102	\N	(54)9113-0022	(54)3235-1657	\N	Ensino fundamental Completo	\N	Ensino Técnico Completo	Amarelos	Nenhuma	Ônibus	30 Km	Não	Aprovado	Concluida	2021-02-05	301	2021-08-30 00:45:40.763983
127	matriculas	214	GABRIEL ANGELO CHINELATO TAUFER	2013-05-01	Masculino	262923469	86717495940	\N	(54)9993-1624	(54)9652-9088	\N	Ensino médio Incomplento	\N	Ensino fundamental Incomplento	Brancos	Deficiência mental	Ônibus	1 Km	Sim	Pendente	Concluida	2021-01-13	301	2021-08-30 00:45:40.763983
128	matriculas	215	OTÁVIO AUGUSTO DAROS	2013-06-28	Masculino	788413507	84515795040	\N	(54)9184-2962	32801150	\N	Ensino Técnico Incompleto	\N	Ensino médio Incomplento	Pardos	Deficiência visual	A pé	10 Km	Não	Pendente	Concluida	2021-01-31	301	2021-08-30 00:45:40.763983
129	matriculas	230	ÁLVARO GATELLI DE SOUZA	2013-08-29	Masculino	637256327	18435054927	\N	(54)9196-7654	\N	\N	Ensino fundamental Completo	\N	Ensino fundamental Incomplento	Brancos	Nenhuma	Carro	5 Km	Não	Reprovou	Concluida	2021-01-28	301	2021-08-30 00:45:40.763983
130	matriculas	255	MAICON JONATAN SOARES SILVEIRA SOUZA	2013-12-11	Masculino	559498126	93326842989	\N	(54)9628-1388	(54)9987-6134	\N	Ensino superior Completo	\N	Ensino Técnico Incompleto	Indígenas	Deficiência auditiva	A pé	1 Km	Não	Aprovado	Concluida	2021-02-02	301	2021-08-30 00:45:40.763983
131	matriculas	266	 PAMELLA FERREIRA DE OLIVEIRA CARAMORI	2013-03-25	Feminino	550787377	74831795208	\N	(54)9935-6498	(00)0000-0000	\N	Ensino superior Incompleto	\N	Ensino Técnico Incompleto	Indígenas	Nenhuma	Ônibus	1 Km	Não	Aprovado	Concluida	2021-01-11	301	2021-08-30 00:45:40.763983
132	matriculas	267	MATEUS ROMANI	2013-12-09	Masculino	203544582	65955591215	\N	\N	(54)3291-4837	\N	Ensino fundamental Incomplento	\N	Ensino médio Incomplento	Pretos	Nenhuma	A pé	15 Km	Não	Reprovou	Pendente	2021-02-06	301	2021-08-30 00:45:40.763983
133	matriculas	287	JÚLIA CAVAGNOLLI DE CASTILHOS	2013-07-14	Feminino	818369524	70050685410	\N	(54)3291-1767	91017750	\N	Ensino fundamental Completo	\N	Ensino superior Completo	Pardos	Nenhuma	Moto	10 Km	Não	Pendente	Concluida	2021-01-10	301	2021-08-30 00:45:40.763983
134	matriculas	288	RAFAEL FONGARO	2013-09-17	Masculino	399625091	78180666447	\N	(54)9614-7370	(54)3291-4235	\N	Ensino fundamental Completo	\N	Ensino médio Completo	Amarelos	Nenhuma	Ônibus	5 Km	Sim	Reprovou	Concluida	2021-01-31	301	2021-08-30 00:45:40.763983
135	matriculas	292	TANIELE DE ATAIDE DE VIDI	2013-01-22	Feminino	747842392	74133761841	\N	(54)9971-5271	(54)3504-1247	\N	Ensino fundamental Incomplento	\N	Ensino médio Completo	Pardos	Nenhuma	A pé	10 Km	Não	Aprovado	Concluida	2021-02-04	301	2021-08-30 00:45:40.763983
136	matriculas	311	FERNANDO VIEIRA GOLARTE	2013-07-29	Masculino	719218707	15103029043	\N	32912261	(54)3291-4799	\N	Ensino médio Completo	\N	Ensino médio Incomplento	Pardos	Nenhuma	Carro	5 Km	Não	Pendente	Concluida	2021-02-01	301	2021-08-30 00:45:40.763983
137	matriculas	312	LUCAS MENEGUSSI	2013-04-23	Masculino	561719844	13666249702	\N	(54)9137-5784	(54)8115-3154	\N	Ensino médio Completo	\N	Ensino fundamental Incomplento	Indígenas	Nenhuma	A pé	30 Km	Não	Reprovou	Concluida	2021-01-10	301	2021-08-30 00:45:40.763983
138	matriculas	313	CAROLINE DE CARVALHO BORGES	2013-09-28	Feminino	369861972	41635844093	\N	(54)9111-2221	(54)3291-5190	\N	Ensino médio Completo	\N	Ensino superior Incompleto	Amarelos	Nenhuma	Ônibus	1 Km	Não	Aprovado	Concluida	2021-01-31	302	2021-08-30 00:45:40.763983
139	matriculas	317	ANDREI LIDUVINO MASCARELLO	2013-03-17	Masculino	378282060	38340100459	\N	(54)9101-7750	(54)9965-4045	\N	Ensino médio Incomplento	\N	Ensino médio Completo	Brancos	Nenhuma	Ônibus	10 Km	Não	Pendente	Concluida	2021-01-15	302	2021-08-30 00:45:40.763983
140	matriculas	320	DANUSA DA ROCHA RENOSTO	2013-09-23	Feminino	419499115	28549372437	\N	(54)3291-4998	(54)3291-3909	\N	Ensino fundamental Completo	\N	Ensino superior Completo	Pardos	Nenhuma	Ônibus	30 Km	Não	Pendente	Concluida	2021-02-05	302	2021-08-30 00:45:40.763983
141	matriculas	335	MAURÍCIO ANDREOLI	2013-05-22	Masculino	834242138	27316702106	\N	(54)9907-0915	(54)9626-8449	\N	Ensino fundamental Incomplento	\N	Ensino fundamental Completo	Brancos	Nenhuma	Ônibus	1 Km	Não	Pendente	Concluida	2021-01-14	302	2021-08-30 00:45:40.763983
142	matriculas	365	JULIANA GOMES	2013-05-18	Feminino	202446774	96219438023	\N	(54)9971-5520	(54)9923-3565	\N	Ensino fundamental Completo	\N	Ensino médio Incomplento	Brancos	Nenhuma	Carro	5 Km	Não	Aprovado	Concluida	2021-01-27	302	2021-08-30 00:45:40.763983
143	matriculas	392	ISADORA MAGRIN MARCON	2013-08-15	Feminino	704497083	97952828605	\N	(54)9142-6062	(54)8447-5345	\N	Ensino superior Incompleto	\N	Ensino Técnico Incompleto	Pardos	Nenhuma	A pé	15 Km	Não	Aprovado	Pendente	2021-01-14	302	2021-08-30 00:45:40.763983
144	matriculas	426	MARIA EDUARDA DE SOUZA	2013-11-23	Feminino	104907414	90742358421	\N	(54)9163-9869	32912259	\N	Ensino médio Incomplento	\N	Ensino médio Incomplento	Pretos	Nenhuma	Ônibus	1 Km	Não	Aprovado	Pendente	2021-01-16	302	2021-08-30 00:45:40.763983
145	matriculas	441	BARBARA PEDROSO DE FREITAS	2013-01-08	Feminino	905031443	42919883002	\N	(54)9144-9202	\N	\N	Ensino superior Completo	\N	Ensino superior Completo	Pardos	Deficiência auditiva	Ônibus	50 Km	Não	Reprovou	Concluida	2021-01-29	302	2021-08-30 00:45:40.763983
146	matriculas	454	EDNO ZANELLA	2013-02-18	Masculino	305548821	44543962590	\N	(54)9168-6758	32914388	\N	Ensino fundamental Completo	\N	Ensino superior Completo	Pardos	Nenhuma	Ônibus	5 Km	Não	Aprovado	Concluida	2021-01-23	302	2021-08-30 00:45:40.763983
147	matriculas	455	GABRIEL SANDRI CHEMELLO	2013-04-28	Masculino	425563914	47340493255	\N	(54)9966-0608	3291-5010	\N	Ensino Técnico Completo	\N	Ensino médio Completo	Pardos	Nenhuma	Carro	10 Km	Sim	Aprovado	Pendente	2021-01-22	302	2021-08-30 00:45:40.763983
148	matriculas	476	GENAINA PAGNO	2013-06-03	Feminino	270121700	63631935029	\N	(54)9148-6802	(54)3291-4161	\N	Ensino superior Incompleto	\N	Ensino fundamental Completo	Pretos	Nenhuma	A pé	10 Km	Não	Aprovado	Pendente	2021-01-14	302	2021-08-30 00:45:40.763983
149	matriculas	498	PATRICK GONÇALVES PEREIRA	2013-03-03	Feminino	446643489	74788222033	\N	\N	(54)9137-8647	\N	Ensino fundamental Incomplento	\N	Ensino Técnico Incompleto	Brancos	Nenhuma	A pé	20 Km	Não	Aprovado	Pendente	2021-01-23	302	2021-08-30 00:45:40.763983
150	matriculas	526	RAFAELA GRISON	2013-11-16	Feminino	755919313	22444185052	\N	(54)9181-7054	3291-2596	\N	Ensino fundamental Incomplento	\N	Ensino Técnico Completo	Pardos	Nenhuma	A pé	10 Km	Não	Pendente	Concluida	2021-01-18	302	2021-08-30 00:45:40.763983
151	matriculas	560	RICARDO JUNIOR PEDROTI	2013-03-07	Masculino	514519759	67275569750	\N	(54)9608-2320	(54)3291-2787	\N	Ensino fundamental Completo	\N	Ensino fundamental Incomplento	Brancos	Nenhuma	Ônibus	5 Km	Não	Aprovado	Concluida	2021-01-26	302	2021-08-30 00:45:40.763983
152	matriculas	563	AREOLI MARGARIDA LIPOSKI RIZZON	2013-05-17	Masculino	752032694	24526590629	\N	(54)3291-1638	(54)3291-1839	\N	Ensino médio Incomplento	\N	Ensino Técnico Incompleto	Pardos	Nenhuma	Ônibus	5 Km	Não	Aprovado	Concluida	2021-01-11	302	2021-08-30 00:45:40.763983
153	matriculas	573	LUCAS MOISÉS THOME DA ROSA	2013-06-05	Masculino	641938737	41553915073	\N	(54)9139-5025	(54)3291-4871	\N	Ensino fundamental Completo	\N	Ensino Técnico Completo	Amarelos	Nenhuma	Carro	1 Km	Não	Aprovado	Concluida	2021-01-11	302	2021-08-30 00:45:40.763983
154	matriculas	582	MARCO ANTONIO MICHELON DE ROSSO	2013-01-12	Masculino	693855068	35780793416	\N	(54)3291-2942	32911905	\N	Ensino Técnico Incompleto	\N	Ensino superior Incompleto	Brancos	Nenhuma	A pé	1 Km	Não	Aprovado	Concluida	2021-02-06	302	2021-08-30 00:45:40.763983
155	matriculas	605	CHEILA MIÉLE GIRARDINI	2013-09-09	Feminino	570394316	89388748964	\N	(54)9962-4982	(54)3291-2674	\N	Ensino superior Incompleto	\N	Ensino superior Incompleto	Pardos	Nenhuma	Ônibus	5 Km	Não	Aprovado	Pendente	2021-01-24	302	2021-08-30 00:45:40.763983
156	matriculas	607	KELYN FAGUNDES DILLI	2013-10-03	Feminino	425604839	76844008173	\N	(54)9658-1833	(54)9668-2424	\N	Ensino fundamental Completo	\N	Ensino superior Incompleto	Pardos	Nenhuma	Carro	5 Km	Não	Aprovado	Pendente	2021-02-06	302	2021-08-30 00:45:40.763983
157	matriculas	642	 LEONARDO GIOTTI	2013-07-05	Masculino	629836097	66160693159	\N	(  )    -	(54)3291-1792	\N	Ensino médio Incomplento	\N	Ensino Técnico Incompleto	Pardos	Nenhuma	A pé	5 Km	Não	Aprovado	Pendente	2021-01-11	302	2021-08-30 00:45:40.763983
158	matriculas	650	 LILIAN ELISABETI RODRIGUÊS DA SILVA	2013-01-09	Feminino	123738618	26353432867	\N	(54)9976-0730	(54)9965-6995	\N	Ensino superior Completo	\N	Ensino superior Incompleto	Pardos	Nenhuma	Ônibus	5 Km	Não	Aprovado	Pendente	2021-01-18	302	2021-08-30 00:45:40.763983
159	matriculas	661	 LAURICIO DE OLIVEIRA FERNANDES	2013-09-02	Masculino	467658438	59952453825	\N	(54)3291-1209	(54)9912-9668	\N	Ensino Técnico Incompleto	\N	Ensino Técnico Incompleto	Pardos	Nenhuma	Carro	30 Km	Não	Aprovado	Concluida	2021-02-05	302	2021-08-30 00:45:40.763983
160	matriculas	676	 TERESINHA ISABEL CIOATTO	2013-10-11	Feminino	874487213	40728662811	\N	(54)9928-3831	(54)9652-0406	\N	Ensino superior Completo	\N	Ensino Técnico Incompleto	Pardos	Nenhuma	A pé	5 Km	Não	Pendente	Pendente	2021-01-10	303	2021-08-30 00:45:40.763983
161	matriculas	687	 THALITA PREBIANCA FIAMINGHI	2013-03-12	Feminino	348728214	64044527402	\N	(54)9692-0879	(54)9953-5058	\N	Ensino Técnico Incompleto	\N	Ensino médio Completo	Pardos	Nenhuma	A pé	5 Km	Sim	Pendente	Pendente	2021-02-04	303	2021-08-30 00:45:40.763983
162	matriculas	701	 MARIA ISABEL MOTA DA SILVA	2013-07-15	Feminino	780365796	59999002811	\N	(54)3291-1382	(54)3291-4423	\N	Ensino fundamental Completo	\N	Ensino fundamental Completo	Indígenas	Deficiência auditiva	A pé	5 Km	Não	Aprovado	Pendente	2021-01-31	303	2021-08-30 00:45:40.763983
163	matriculas	744	EDUARDA DOS SANTOS SILVA	2013-08-08	Feminino	440995597	70957475381	\N	(54)9154-6339	(54)9133-5631	\N	Ensino médio Completo	\N	Ensino fundamental Completo	Pretos	Deficiência auditiva	Carro	10 Km	Não	Aprovado	Concluida	2021-01-19	303	2021-08-30 00:45:40.763983
164	matriculas	749	FLAVIANO SCOPEL	2013-03-13	Masculino	205769170	82112041153	\N	(54)3291-2683	(54)3235-1076	\N	Ensino superior Incompleto	\N	Ensino fundamental Completo	Pardos	Deficiência motora	Ônibus	20 Km	Não	Aprovado	Concluida	2021-01-25	303	2021-08-30 00:45:40.763983
165	matriculas	775	ARTHUR MUSSATTO MIOTTO	2013-12-17	Masculino	993417802	65279170681	\N	(54)9602-4110	(54)9100-6669	\N	Ensino superior Completo	\N	Ensino Técnico Completo	Indígenas	Nenhuma	Carro	20 Km	Não	Pendente	Concluida	2021-01-27	303	2021-08-30 00:45:40.763983
166	matriculas	777	IGOR DE OLIVEIRA DALLARGNOL	2013-06-14	Masculino	807853601	98285462702	\N	(54)9255-4210	(54)3291-2848	\N	Ensino fundamental Incomplento	\N	Ensino superior Completo	Pardos	Nenhuma	A pé	1 Km	Não	Reprovou	Concluida	2021-02-05	303	2021-08-30 00:45:40.763983
167	matriculas	791	ROSIMERE REGINA DRAGO	2013-06-23	Feminino	143395638	88611492735	\N	(54)9640-5088	(54)3291-7560	\N	Ensino fundamental Completo	\N	Ensino médio Completo	Amarelos	Nenhuma	A pé	5 Km	Não	Pendente	Concluida	2021-02-03	303	2021-08-30 00:45:40.763983
168	matriculas	808	NILMA CLARA PEREIRA	2013-03-30	Feminino	930685085	53455633063	\N	(54)9204-4465	(54)9100-1193	\N	Ensino médio Incomplento	\N	Ensino superior Completo	Pardos	Nenhuma	Moto	5 Km	Não	Aprovado	Concluida	2021-01-18	303	2021-08-30 00:45:40.763983
169	matriculas	818	CRISTOFFER DE OLIVEIRA ALVES	2013-06-29	Masculino	650664793	56725956723	\N	(54)9619-9453	(54)9993-3973	\N	Ensino superior Completo	\N	Ensino superior Incompleto	Pardos	Deficiência visual	Carro	30 Km	Não	Aprovado	Concluida	2021-01-15	303	2021-08-30 00:45:40.763983
170	matriculas	836	LAURA LEITE RODRIGUES	2013-08-12	Feminino	627018587	59838772776	\N	(54)3291-2103	(11)1111-1111	\N	Ensino fundamental Incomplento	\N	Ensino fundamental Completo	Pretos	Nenhuma	Carro	30 Km	Não	Aprovado	Concluida	2021-02-05	303	2021-08-30 00:45:40.763983
171	matriculas	849	ALICE DA SILVA CHAVES	2013-04-13	Feminino	907667402	30623783469	\N	(54)9140-9252	(54)3267-8012	\N	Ensino fundamental Incomplento	\N	Ensino fundamental Incomplento	Brancos	Nenhuma	Ônibus	30 Km	Não	Aprovado	Concluida	2021-01-18	303	2021-08-30 00:45:40.763983
172	matriculas	854	VANESSA DOS SANTOS	2013-04-02	Feminino	803872674	31361668914	\N	3291-3131	(54)9601-8026	\N	Ensino fundamental Incomplento	\N	Ensino superior Completo	Pretos	Nenhuma	Carro	15 Km	Não	Pendente	Concluida	2021-01-19	303	2021-08-30 00:45:40.763983
173	matriculas	864	FATIMA RASADOR GIRARDELLO	2013-04-01	Feminino	195232290	33876763779	\N	(54)3291-2974	(54)9127-1602	\N	Ensino superior Incompleto	\N	Ensino superior Completo	Indígenas	Deficiência visual	Carro	20 Km	Não	Reprovou	Concluida	2021-01-19	303	2021-08-30 00:45:40.763983
174	matriculas	929	ARIELE VIEIRA DOS SANTOS	2013-08-23	Feminino	141721301	64706657920	\N	(54)9136-2238	(54)9920-5173	\N	Ensino Técnico Incompleto	\N	Ensino médio Completo	Brancos	Nenhuma	Ônibus	10 Km	Não	Aprovado	Concluida	2021-01-28	303	2021-08-30 00:45:40.763983
175	matriculas	935	CRISTINE MORAES DE SOUZA	2013-07-28	Feminino	819573305	80519222917	\N	(54)9197-7779	(54)9195-2116	\N	Ensino fundamental Completo	\N	Ensino superior Incompleto	Brancos	Nenhuma	Ônibus	5 Km	Sim	Aprovado	Pendente	2021-02-07	303	2021-08-30 00:45:40.763983
176	matriculas	950	LUCAS STRIEDES DA SILVA	2013-05-06	Masculino	244931403	58055522072	\N	(48)9146-6974	(54)9942-3079	\N	Ensino Técnico Incompleto	\N	Ensino superior Completo	Brancos	Nenhuma	A pé	15 Km	Não	Aprovado	Concluida	2021-01-31	303	2021-08-30 00:45:40.763983
177	matriculas	953	LEONARDO JOSE GUERRA	2013-05-12	Masculino	784335507	82499375735	\N	32355136	(54)9909-8557	\N	Ensino superior Incompleto	\N	Ensino médio Completo	Brancos	Nenhuma	Ônibus	5 Km	Não	Aprovado	Concluida	2021-01-17	303	2021-08-30 00:45:40.763983
178	matriculas	958	FLAVIANO NUNES DOS SANTOS	2013-04-07	Masculino	198477199	36565018557	\N	(54)9973-5014	(54)9964-3845	\N	Ensino Técnico Completo	\N	Ensino médio Completo	Pardos	Nenhuma	A pé	5 Km	Não	Pendente	Concluida	2021-01-20	303	2021-08-30 00:45:40.763983
179	matriculas	970	GILSIANE RIZZO CASANOVA	2013-01-27	Feminino	276281177	52007296926	\N	99943936	(54)3291-3404	\N	Ensino fundamental Completo	\N	Ensino Técnico Incompleto	Brancos	Nenhuma	Carro	1 Km	Sim	Reprovou	Concluida	2021-01-14	303	2021-08-30 00:45:40.763983
180	matriculas	31	JUCELITO ANTONIO VANAZ	2012-08-20	Masculino	603878518	29268270244	\N	3291-6028	(54)9995-3909	\N	Ensino superior Completo	\N	Ensino fundamental Incomplento	Pardos	Nenhuma	A pé	1 Km	Não	Aprovado	Concluida	2021-01-18	401	2021-08-30 00:45:40.763983
181	matriculas	42	RODRIGO SCAIN	2012-08-05	Masculino	372419306	56290884443	\N	\N	30340109	\N	Ensino superior Completo	\N	Ensino Técnico Incompleto	Pretos	Nenhuma	Ônibus	1 Km	Sim	Aprovado	Concluida	2021-01-16	401	2021-08-30 00:45:40.763983
182	matriculas	47	CECILIA SCAIN ZARDO	2012-03-09	Feminino	397363607	60793821626	\N	32917280	3291-2809/	\N	Ensino Técnico Completo	\N	Ensino superior Incompleto	Brancos	Nenhuma	Ônibus	30 Km	Não	Aprovado	Concluida	2021-01-12	401	2021-08-30 00:45:40.763983
183	matriculas	49	ALÉX JUNIOR RASADOR	2012-09-01	Masculino	597451790	53251238156	\N	(54)3291-3071	3291-4534	\N	Ensino superior Completo	\N	Ensino médio Incomplento	Pardos	Nenhuma	A pé	5 Km	Não	Aprovado	Concluida	2021-02-01	401	2021-08-30 00:45:40.763983
184	matriculas	70	VICTOR TONET RASADOR	2012-04-16	Masculino	872567498	26991972697	\N	(54)9113-6609	30342623	\N	Ensino Técnico Completo	\N	Ensino superior Incompleto	Pretos	Nenhuma	Ônibus	20 Km	Não	Pendente	Pendente	2021-01-17	401	2021-08-30 00:45:40.763983
185	matriculas	71	MAURÍCIO MARCON	2012-04-13	Masculino	588103219	67373145168	\N	\N	91888333	\N	Ensino médio Incomplento	\N	Ensino Técnico Incompleto	Pardos	Nenhuma	Ônibus	20 Km	Não	Pendente	Concluida	2021-01-22	401	2021-08-30 00:45:40.763983
186	matriculas	77	EVA QUISSINI	2012-10-17	Feminino	758573537	39465244467	\N	(54)3291-1262	(54)9979-2615	\N	Ensino médio Completo	\N	Ensino Técnico Completo	Pretos	Deficiência visual	Ônibus	50 Km	Não	Aprovado	Concluida	2021-02-05	401	2021-08-30 00:45:40.763983
187	matriculas	80	GABRIELA CORSO	2012-06-24	Masculino	395009487	58874115835	\N	(54)9955-9220	32915349	\N	Ensino fundamental Completo	\N	Ensino fundamental Completo	Brancos	Nenhuma	Moto	10 Km	Não	Pendente	Concluida	2021-01-17	401	2021-08-30 00:45:40.763983
188	matriculas	84	EZEQUIEL GAZZIERO	2012-09-22	Masculino	592952287	53727803765	\N	(54)3291-3770	(54)3291-2537	\N	Ensino superior Completo	\N	Ensino médio Completo	Brancos	Nenhuma	Ônibus	15 Km	Não	Pendente	Pendente	2021-01-19	401	2021-08-30 00:45:40.763983
189	matriculas	116	JOSEMAR CARARO	2012-03-11	Masculino	545320865	79588120700	\N	(54)9189-0409	32913374	\N	Ensino médio Incomplento	\N	Ensino fundamental Completo	Pardos	Nenhuma	Moto	10 Km	Não	Aprovado	Concluida	2021-01-28	401	2021-08-30 00:45:40.763983
190	matriculas	130	JENNIFER MANTOVANI FRANCISCO DE CHAVES S	2012-10-06	Feminino	308017890	54329220911	\N	(54)3291-5035	32912604	\N	Ensino Técnico Completo	\N	Ensino médio Completo	Amarelos	Deficiência auditiva	Moto	10 Km	Não	Reprovou	Pendente	2021-01-24	401	2021-08-30 00:45:40.763983
191	matriculas	149	ERIC CASTILHOS DOS REIS	2012-06-05	Masculino	487633532	50718121480	\N	(54)3291-3067	(54)9219-9592	\N	Ensino Técnico Completo	\N	Ensino superior Completo	Pardos	Nenhuma	Carro	30 Km	Não	Aprovado	Concluida	2021-01-16	401	2021-08-30 00:45:40.763983
192	matriculas	151	CLEIDE MORAES DE SOUZA	2012-11-13	Feminino	901205896	10174645311	\N	(54)3291-9060	(54)9626-1742	\N	Ensino fundamental Incomplento	\N	Ensino superior Incompleto	Pardos	Nenhuma	Carro	5 Km	Sim	Aprovado	Concluida	2021-01-25	401	2021-08-30 00:45:40.763983
193	matriculas	157	MORGANA MICHELON	2012-05-03	Feminino	407864977	70425751974	\N	(54)9169-5862	(54)3291-7080	\N	Ensino superior Incompleto	\N	Ensino fundamental Completo	Pardos	Nenhuma	Ônibus	20 Km	Não	Pendente	Pendente	2021-01-23	401	2021-08-30 00:45:40.763983
194	matriculas	161	SUÉLEN CASTILHOS RODRIGUES	2012-09-14	Feminino	410759591	90449575075	\N	(54)3291-7901	32911257	\N	Ensino Técnico Incompleto	\N	Ensino superior Completo	Pretos	Nenhuma	Ônibus	30 Km	Não	Aprovado	Concluida	2021-02-06	401	2021-08-30 00:45:40.763983
195	matriculas	172	SIMONE SCOPEL MENEGON	2012-12-16	Feminino	352719049	62223618118	\N	(54)9909-3207	32912267	\N	Ensino Técnico Completo	\N	Ensino superior Incompleto	Brancos	Nenhuma	Ônibus	30 Km	Não	Aprovado	Concluida	2021-01-21	401	2021-08-30 00:45:40.763983
196	matriculas	181	BRUNA ISABEL SANDRI	2012-03-19	Feminino	430081194	18622918381	\N	(54)9657-7212	(54)3267-8011	\N	Ensino superior Incompleto	\N	Ensino Técnico Incompleto	Brancos	Nenhuma	A pé	5 Km	Não	Pendente	Pendente	2021-01-16	401	2021-08-30 00:45:40.763983
197	matriculas	182	RONEI CARLOS DE CASTILHOS	2012-11-27	Masculino	113937254	30908487630	\N	(54)9910-5709	(54)3235-5039	\N	Ensino médio Completo	\N	Ensino Técnico Completo	Indígenas	Nenhuma	A pé	10 Km	Não	Aprovado	Concluida	2021-02-04	401	2021-08-30 00:45:40.763983
198	matriculas	213	PATRYCK SCARIOT LIRA	2012-02-18	Masculino	144872144	28579518232	\N	(54)9187-3084	(54)9660-7623	\N	Ensino fundamental Incomplento	\N	Ensino médio Incomplento	Brancos	Nenhuma	A pé	5 Km	Sim	Aprovado	Pendente	2021-01-19	401	2021-08-30 00:45:40.763983
199	matriculas	236	NATALI SUZIN PANASSOL	2012-08-31	Feminino	557021487	72175442041	\N	(54)9674-4865	(54)9131-5072	\N	Ensino Técnico Incompleto	\N	Ensino médio Incomplento	Pardos	Nenhuma	A pé	15 Km	Não	Reprovou	Concluida	2021-01-31	402	2021-08-30 00:45:40.763983
200	matriculas	240	ROBERTO ALEXANDRE GUERRA	2012-12-03	Masculino	290814020	45427537043	\N	(54)9177-5537	(54)9246-2253	\N	Ensino Técnico Completo	\N	Ensino fundamental Incomplento	Indígenas	Nenhuma	A pé	15 Km	Não	Aprovado	Concluida	2021-01-23	402	2021-08-30 00:45:40.763983
201	matriculas	244	MAICOL VÍGOLO	2012-05-04	Masculino	984433362	48231977073	\N	(54)3291-3941	(54)9168-7714	\N	Ensino Técnico Completo	\N	Ensino superior Completo	Pretos	Nenhuma	A pé	15 Km	Não	Aprovado	Concluida	2021-01-11	402	2021-08-30 00:45:40.763983
202	matriculas	275	EDUARDO DE OLIVEIRA PREBIANCA.	2012-07-28	Masculino	934490818	39429892414	\N	32915075	96329462	\N	Ensino médio Completo	\N	Ensino superior Completo	Pardos	Nenhuma	Ônibus	5 Km	Sim	Reprovou	Concluida	2021-01-13	402	2021-08-30 00:45:40.763983
203	matriculas	323	GISELE MACIEL POLETO	2012-01-18	Feminino	989297015	29375330536	\N	(54)3291-3202	(54)3291-1074	\N	Ensino superior Incompleto	\N	Ensino Técnico Completo	Pretos	Nenhuma	Moto	20 Km	Não	Aprovado	Concluida	2021-01-23	402	2021-08-30 00:45:40.763983
204	matriculas	329	PAULO DANIEL BERNARDO DA SILVA	2012-12-11	Masculino	837371325	44207912209	\N	(54)3291-3143	(54)3291-1603	\N	Ensino Técnico Incompleto	\N	Ensino superior Incompleto	Brancos	Nenhuma	Carro	10 Km	Não	Aprovado	Concluida	2021-02-06	402	2021-08-30 00:45:40.763983
205	matriculas	340	BRUNO POLO GIORDANI	2012-06-13	Masculino	264618913	40396701899	\N	(54)3291-1044	(54)3291-3967	\N	Ensino médio Incomplento	\N	Ensino Técnico Incompleto	Pardos	Nenhuma	A pé	1 Km	Não	Aprovado	Concluida	2021-01-11	402	2021-08-30 00:45:40.763983
206	matriculas	346	RAFAEL RIZZO	2012-02-04	Masculino	756961587	43537130267	\N	(54)3235-5139	(54)3291-6334	\N	Ensino fundamental Incomplento	\N	Ensino médio Incomplento	Pretos	Nenhuma	A pé	10 Km	Não	Aprovado	Concluida	2021-01-22	402	2021-08-30 00:45:40.763983
207	matriculas	355	LUCAS MACHADO STEDILE	2012-07-19	Masculino	648309808	15205512660	\N	(54)9904-5355	(54)3291-2340	\N	Ensino médio Incomplento	\N	Ensino médio Incomplento	Pardos	Nenhuma	A pé	10 Km	Não	Aprovado	Concluida	2021-01-29	402	2021-08-30 00:45:40.763983
208	matriculas	387	ANA PAULA CASTAGNO	2012-01-18	Feminino	814938144	87642684518	\N	(54)9612-1282	(54)9987-4900	\N	Ensino Técnico Incompleto	\N	Ensino superior Completo	Brancos	Deficiência auditiva	Ônibus	10 Km	Não	Aprovado	Concluida	2021-01-26	402	2021-08-30 00:45:40.763983
209	matriculas	401	DANIEL BIANCHI	2012-05-19	Masculino	380672412	70378495381	\N	(54)9935-9832	(54)9671-8581	\N	Ensino Técnico Incompleto	\N	Ensino superior Completo	Brancos	Nenhuma	Moto	1 Km	Não	Aprovado	Pendente	2021-01-31	402	2021-08-30 00:45:40.763983
210	matriculas	429	LEANDRO LUAN CARDOSO	2012-03-17	Masculino	341731359	79624445528	\N	(54)9646-2302	(54)3291-3471	\N	Ensino Técnico Incompleto	\N	Ensino superior Incompleto	Brancos	Nenhuma	Carro	5 Km	Não	Pendente	Concluida	2021-02-02	402	2021-08-30 00:45:40.763983
211	matriculas	434	DEUSDETE LOREMAL MOTA	2012-03-10	Masculino	195254294	66949091477	\N	(54)9633-0409	(54)3291-7474	\N	Ensino superior Completo	\N	Ensino superior Completo	Brancos	Nenhuma	A pé	5 Km	Não	Aprovado	Concluida	2021-01-29	402	2021-08-30 00:45:40.763983
212	matriculas	495	ALEX TROLE	2012-11-20	Feminino	946752562	55855389642	\N	\N	(54)9619-2904	\N	Ensino Técnico Completo	\N	Ensino fundamental Completo	Pardos	Nenhuma	Ônibus	1 Km	Não	Aprovado	Pendente	2021-02-07	402	2021-08-30 00:45:40.763983
213	matriculas	518	LUCAS TORRESAN	2012-08-23	Masculino	952296177	63483756102	\N	(54)8114-0837	(54)9965-5165	\N	Ensino Técnico Incompleto	\N	Ensino médio Completo	Brancos	Nenhuma	Ônibus	20 Km	Não	Aprovado	Pendente	2021-01-30	402	2021-08-30 00:45:40.763983
214	matriculas	540	IASMIN SOLDERA STELLA	2012-09-07	Feminino	735009224	11447177268	\N	(54)9987-3515	(54)3291-7258	\N	Ensino superior Completo	\N	Ensino Técnico Completo	Pardos	Nenhuma	Carro	15 Km	Não	Aprovado	Concluida	2021-01-12	402	2021-08-30 00:45:40.763983
215	matriculas	547	CLAUDETE MOREIRA	2012-03-30	Feminino	740958969	44280300963	\N	(54)9192-5981	(54)3280-1016	\N	Ensino superior Completo	\N	Ensino fundamental Completo	Indígenas	Nenhuma	Bicicleta	1 Km	Não	Aprovado	Pendente	2021-01-20	402	2021-08-30 00:45:40.763983
216	matriculas	621	 VITOR DE MACEDO MOTA	2012-01-09	Masculino	439456236	30436176481	\N	(54)9614-4717	(54)3291-3507	\N	Ensino superior Completo	\N	Ensino médio Completo	Brancos	Deficiência motora	A pé	10 Km	Sim	Aprovado	Concluida	2021-01-28	402	2021-08-30 00:45:40.763983
217	matriculas	635	 JULIANO CARDOZO DA SILVA JUNIOR	2012-07-18	Masculino	960855904	83338269331	\N	(54)9957-2430	3291-2674	\N	Ensino fundamental Completo	\N	Ensino fundamental Completo	Indígenas	Nenhuma	Carro	20 Km	Não	Aprovado	Concluida	2021-02-05	402	2021-08-30 00:45:40.763983
218	matriculas	657	 MÉO BUENO DA SILVA	2012-03-12	Feminino	312352468	59637244735	\N	(54)9137-9707	\N	\N	Ensino superior Completo	\N	Ensino superior Completo	Brancos	Nenhuma	Carro	30 Km	Não	Aprovado	Concluida	2021-01-16	402	2021-08-30 00:45:40.763983
219	matriculas	662	 LAURA BORGES	2012-10-26	Feminino	300209772	45180690960	\N	(54)9185-7751	(54)9109-1284	\N	Ensino Técnico Incompleto	\N	Ensino médio Completo	Pardos	Nenhuma	A pé	30 Km	Sim	Pendente	Concluida	2021-01-28	403	2021-08-30 00:45:40.763983
220	matriculas	665	 ELIN MAURINA	2012-12-02	Feminino	931023983	86179259506	\N	(54)3291-5142	(54)3291-6361	\N	Ensino superior Completo	\N	Ensino médio Incomplento	Brancos	Nenhuma	Ônibus	10 Km	Não	Aprovado	Concluida	2021-01-25	403	2021-08-30 00:45:40.763983
221	matriculas	669	 RAFAELA FLÁVIA CHEMELLO	2012-10-23	Feminino	608351275	17576323972	\N	\N	(54)9157-2114	\N	Ensino superior Completo	\N	Ensino superior Completo	Pardos	Nenhuma	Ônibus	1 Km	Não	Aprovado	Concluida	2021-02-08	403	2021-08-30 00:45:40.763983
222	matriculas	671	 RANGEL ZANELLA	2012-06-04	Feminino	207782098	66260612456	\N	(54)3291-2739	(54)3291-4573	\N	Ensino superior Incompleto	\N	Ensino médio Completo	Pardos	Nenhuma	Carro	15 Km	Não	Pendente	Pendente	2021-01-27	403	2021-08-30 00:45:40.763983
223	matriculas	683	 MÉO DA SILVA	2012-10-31	Feminino	858060293	20862447429	\N	(54)9672-0530	(54)9144-2926	\N	Ensino médio Incomplento	\N	Ensino médio Incomplento	Brancos	Nenhuma	Bicicleta	15 Km	Não	Aprovado	Concluida	2021-01-24	403	2021-08-30 00:45:40.763983
224	matriculas	688	 GILBERTO PEREIRA DOS SANTOS	2012-06-02	Masculino	870941623	20895886586	\N	(54)9934-9411	(54)9925-9948	\N	Ensino superior Incompleto	\N	Ensino médio Incomplento	Pretos	Nenhuma	Ônibus	5 Km	Não	Aprovado	Concluida	2021-01-25	403	2021-08-30 00:45:40.763983
225	matriculas	689	 EULLER VECHIATO	2012-04-25	Masculino	522154227	28350472495	\N	(54)9144-8549	(54)9666-6188	\N	Ensino superior Incompleto	\N	Ensino Técnico Incompleto	Brancos	Nenhuma	Ônibus	10 Km	Não	Aprovado	Concluida	2021-02-07	403	2021-08-30 00:45:40.763983
226	matriculas	728	ISADORA SANDI RECH	2012-04-16	Feminino	450503597	67489681072	\N	(54)8432-5367	(54)9144-8201	\N	Ensino Técnico Completo	\N	Ensino Técnico Incompleto	Pardos	Nenhuma	Ônibus	50 Km	Sim	Aprovado	Pendente	2021-01-26	403	2021-08-30 00:45:40.763983
227	matriculas	735	MATHIAS SCODRO DOS SANTOS	2012-01-09	Masculino	952952476	15677019252	\N	(54)9993-5068	(54)3291-7501	\N	Ensino superior Completo	\N	Ensino fundamental Completo	Brancos	Nenhuma	Ônibus	30 Km	Não	Pendente	Concluida	2021-02-04	403	2021-08-30 00:45:40.763983
228	matriculas	766	ALEX J UNIOR SPESIER	2012-11-07	Masculino	195476671	76162518493	\N	(54)9120-8934	(54)9907-0915	\N	Ensino médio Completo	\N	Ensino médio Completo	Brancos	Nenhuma	Ônibus	30 Km	Não	Aprovado	Concluida	2021-01-15	403	2021-08-30 00:45:40.763983
229	matriculas	772	LUCIMAIA ESTEFANIA GARBIN POLIDORO	2012-11-14	Feminino	920204054	29318777064	\N	(54)9675-5394	(54)9939-7752	\N	Ensino médio Incomplento	\N	Ensino médio Completo	Indígenas	Nenhuma	Carro	1 Km	Não	Aprovado	Concluida	2021-01-24	403	2021-08-30 00:45:40.763983
230	matriculas	817	LUCAS TERRAS	2012-10-01	Masculino	677303882	82037321066	\N	(54)9619-5575	(54)9619-6606	\N	Ensino médio Completo	\N	Ensino superior Completo	Pardos	Nenhuma	Ônibus	15 Km	Não	Aprovado	Concluida	2021-01-10	403	2021-08-30 00:45:40.763983
231	matriculas	834	JAIANE DE GOIS CASTILHOS	2012-08-21	Feminino	147557594	55183517276	\N	(54)8119-3624	(54)3291-2922	\N	Ensino médio Completo	\N	Ensino superior Completo	Pardos	Nenhuma	Ônibus	50 Km	Não	Pendente	Concluida	2021-02-08	403	2021-08-30 00:45:40.763983
232	matriculas	835	MARINA VIANA DA SILVA	2012-07-16	Feminino	746132238	87128594399	\N	(54)9641-5004	(54)9642-5074	\N	Ensino médio Completo	\N	Ensino Técnico Incompleto	Brancos	Nenhuma	A pé	20 Km	Não	Pendente	Pendente	2021-01-26	403	2021-08-30 00:45:40.763983
233	matriculas	856	MARINA BORGES	2012-07-24	Feminino	265039231	84526510182	\N	(05)4996-5599	(54)9936-4803	\N	Ensino Técnico Incompleto	\N	Ensino fundamental Completo	Brancos	Nenhuma	A pé	20 Km	Sim	Reprovou	Concluida	2021-01-24	403	2021-08-30 00:45:40.763983
234	matriculas	871	NEUZA SEBASTIANA DA LUZ TELES	2012-05-20	Feminino	935519125	59601241246	\N	(54)9215-0650	(54)9906-4656	\N	Ensino fundamental Completo	\N	Ensino médio Incomplento	Pardos	Nenhuma	Ônibus	5 Km	Não	Reprovou	Concluida	2021-01-30	403	2021-08-30 00:45:40.763983
235	matriculas	872	MARICELIA CICHIN CARARO	2012-09-13	Feminino	582106434	93333177850	\N	(54)3291-3389	(54)9159-6902	\N	Ensino médio Completo	\N	Ensino Técnico Incompleto	Amarelos	Nenhuma	Carro	10 Km	Não	Reprovou	Concluida	2021-01-12	403	2021-08-30 00:45:40.763983
236	matriculas	888	LUCIANA RENATA POLO	2012-12-27	Feminino	726984398	78876894535	\N	(54)3291-3081	(54)9680-0380	\N	Ensino Técnico Incompleto	\N	Ensino Técnico Completo	Brancos	Nenhuma	Ônibus	20 Km	Não	Aprovado	Concluida	2021-01-11	403	2021-08-30 00:45:40.763983
237	matriculas	919	MATEUS BOFF	2012-12-09	Masculino	420955419	64832946632	\N	(54)9918-1473	(54)9917-1562	\N	Ensino superior Incompleto	\N	Ensino médio Completo	Pardos	Nenhuma	Carro	15 Km	Sim	Aprovado	Pendente	2021-01-14	403	2021-08-30 00:45:40.763983
238	matriculas	926	ANA JÚLIA VELHO	2012-08-12	Feminino	503597396	86217836870	\N	(54)9700-1233	(54)3267-8035	\N	Ensino superior Incompleto	\N	Ensino superior Incompleto	Amarelos	Nenhuma	Ônibus	5 Km	Não	Aprovado	Concluida	2021-01-28	403	2021-08-30 00:45:40.763983
239	matriculas	951	OTÁVIO BERNARDO DA SILVA	2012-01-01	Masculino	564632268	84229241889	\N	(54)9634-8662	(54)9967-5026	\N	Ensino superior Completo	\N	Ensino médio Completo	Pretos	Deficiência mental	Moto	10 Km	Não	Aprovado	Pendente	2021-01-29	403	2021-08-30 00:45:40.763983
240	matriculas	961	TOBIAS CASANOVA	2012-06-25	Masculino	487625117	94058253713	\N	32914170	(54)9615-5320	\N	Ensino Técnico Incompleto	\N	Ensino Técnico Completo	Brancos	Nenhuma	Ônibus	5 Km	Sim	Aprovado	Concluida	2021-01-23	403	2021-08-30 00:45:40.763983
241	matriculas	986	TAINARA PELISSARI ANTUNES SIQUEIRA	2012-08-15	Feminino	483234300	90140116336	\N	32917239	(54)9184-0097	\N	Ensino médio Completo	\N	Ensino Técnico Incompleto	Pardos	Nenhuma	Carro	10 Km	Não	Aprovado	Concluida	2021-01-14	403	2021-08-30 00:45:40.763983
242	matriculas	29	TIAGO PIROLLI MAGRIN	2011-06-22	Masculino	736321063	54047136782	\N	(54)9953-3185	(54)9917-8137	\N	Ensino médio Incomplento	\N	Ensino superior Incompleto	Amarelos	Nenhuma	Ônibus	20 Km	Não	Aprovado	Concluida	2021-01-23	501	2021-08-30 00:45:40.763983
243	matriculas	100	ADRIANO DO PILAR	2011-06-11	Masculino	941738091	38960467137	\N	(54)3291-5159	(54)9982-0296	\N	Ensino Técnico Incompleto	\N	Ensino médio Incomplento	Amarelos	Deficiência visual	Ônibus	1 Km	Não	Aprovado	Concluida	2021-01-18	501	2021-08-30 00:45:40.763983
244	matriculas	107	JOSÉ ADAIR CASTILHOS DOS REIS	2011-11-07	Masculino	266085707	24376001114	\N	(54)3291-1888	(54)3291-7409	\N	Ensino fundamental Completo	\N	Ensino médio Incomplento	Brancos	Nenhuma	Ônibus	5 Km	Não	Aprovado	Concluida	2021-01-23	501	2021-08-30 00:45:40.763983
245	matriculas	132	JOSÉ DE SOUZA GAMBA	2011-09-13	Masculino	789535451	90742438747	\N	(54)9184-8740	96122941	\N	Ensino médio Completo	\N	Ensino fundamental Incomplento	Indígenas	Nenhuma	Bicicleta	50 Km	Não	Pendente	Concluida	2021-01-18	501	2021-08-30 00:45:40.763983
246	matriculas	143	LETÍCIA ANE BENATTO	2011-09-04	Feminino	291045725	40843813306	\N	(54)9957-5008	(54)3280-1100	\N	Ensino médio Completo	\N	Ensino Técnico Incompleto	Indígenas	Nenhuma	Carro	15 Km	Sim	Aprovado	Concluida	2021-01-10	501	2021-08-30 00:45:40.763983
247	matriculas	153	SCHAIANE LUTINSKI BOHMENBERGER	2011-06-03	Feminino	757580091	61197474862	\N	(54)9684-8577	(54)9101-1636	\N	Ensino superior Completo	\N	Ensino Técnico Incompleto	Indígenas	Nenhuma	Ônibus	20 Km	Não	Aprovado	Concluida	2021-01-15	501	2021-08-30 00:45:40.763983
248	matriculas	154	LIDIANE DA SILVA CASTILHOS	2011-10-08	Feminino	577155519	85587480192	\N	(54)8427-8457	(54)9600-1142	\N	Ensino fundamental Completo	\N	Ensino fundamental Completo	Brancos	Nenhuma	Moto	5 Km	Não	Aprovado	Concluida	2021-01-30	501	2021-08-30 00:45:40.763983
249	matriculas	175	ANA PAULA DA SILVA	2011-02-23	Feminino	466912502	70476443118	\N	(54)3291-2984	32911479	\N	Ensino superior Completo	\N	Ensino Técnico Incompleto	Brancos	Deficiência auditiva	Ônibus	1 Km	Não	Aprovado	Pendente	2021-01-26	501	2021-08-30 00:45:40.763983
250	matriculas	234	FELIPE MARCHIORETTO	2011-02-06	Masculino	323361649	27166421095	\N	(54)9957-4587	(54)9614-3816	\N	Ensino médio Incomplento	\N	Ensino fundamental Completo	Brancos	Nenhuma	Moto	5 Km	Não	Aprovado	Pendente	2021-01-18	501	2021-08-30 00:45:40.763983
251	matriculas	271	KARINA DAL SOCHIO	2011-03-03	Feminino	363763501	15895572493	\N	\N	(54)9107-2665	\N	Ensino superior Completo	\N	Ensino Técnico Completo	Pardos	Nenhuma	A pé	10 Km	Não	Aprovado	Concluida	2021-01-21	501	2021-08-30 00:45:40.763983
252	matriculas	273	PEDRO HENRIQUE NUNES FERREIRA	2011-08-06	Masculino	624943772	18000078750	\N	91788920	3291-6054	\N	Ensino Técnico Completo	\N	Ensino Técnico Completo	Indígenas	Nenhuma	A pé	20 Km	Não	Aprovado	Concluida	2021-01-21	501	2021-08-30 00:45:40.763983
253	matriculas	278	LUIZA BIASOTTO	2011-02-03	Feminino	211258855	80849223529	\N	(54)9980-4053	(54)9634-7738	\N	Ensino superior Completo	\N	Ensino fundamental Incomplento	Amarelos	Nenhuma	Moto	10 Km	Não	Pendente	Concluida	2021-02-06	501	2021-08-30 00:45:40.763983
254	matriculas	284	LUCILDA MARIA CHEMELLO	2011-07-03	Feminino	607912842	61599247927	\N	(54)9135-2436	3291 22 14	\N	Ensino superior Completo	\N	Ensino fundamental Completo	Brancos	Nenhuma	Ônibus	15 Km	Não	Aprovado	Concluida	2021-02-04	501	2021-08-30 00:45:40.763983
255	matriculas	298	LEANDRA JULIANA CARDOSO	2011-05-06	Feminino	748023729	37402202963	\N	(54)9177-0054	(54)3291-1148	\N	Ensino superior Incompleto	\N	Ensino superior Completo	Brancos	Nenhuma	Carro	15 Km	Não	Pendente	Pendente	2021-01-23	501	2021-08-30 00:45:40.763983
256	matriculas	303	IRIS ZANELLA VANIN	2011-04-08	Feminino	973388335	41263119717	\N	(54)9672-2864	(54)9902-5870	\N	Ensino médio Incomplento	\N	Ensino Técnico Completo	Pardos	Nenhuma	Carro	15 Km	Não	Pendente	Concluida	2021-02-02	501	2021-08-30 00:45:40.803379
257	matriculas	322	JURACI ZUANAZZI BORGHETTI	2011-09-20	Feminino	419591853	82413968250	\N	(54)9946-4408	(54)9943-1694	\N	Ensino fundamental Completo	\N	Ensino médio Completo	Brancos	Nenhuma	Ônibus	5 Km	Não	Aprovado	Concluida	2021-01-21	501	2021-08-30 00:45:40.803379
258	matriculas	382	MARIA EDUARDA MASCARELLO	2011-11-09	Feminino	324177350	53489635204	\N	\N	(54)9628-2100	\N	Ensino Técnico Incompleto	\N	Ensino médio Completo	Brancos	Nenhuma	Moto	5 Km	Não	Aprovado	Concluida	2021-01-14	501	2021-08-30 00:45:40.803379
259	matriculas	390	ANDREI BRANCO BORGHETTI	2011-04-05	Masculino	644384401	51518140096	\N	(54)9235-6282	(54)9694-6181	\N	Ensino médio Completo	\N	Ensino Técnico Completo	Brancos	Nenhuma	A pé	50 Km	Não	Aprovado	Concluida	2021-01-18	501	2021-08-30 00:45:40.803379
260	matriculas	395	CAMILA CASARA	2011-04-12	Feminino	398396803	32656746402	\N	(54)3291-3356	(54)3291-3508	\N	Ensino médio Incomplento	\N	Ensino médio Incomplento	Pardos	Nenhuma	Ônibus	15 Km	Não	Aprovado	Concluida	2021-01-17	501	2021-08-30 00:45:40.803379
261	matriculas	425	JONATAN ARGENTA TURCATI	2011-03-02	Masculino	185919617	28524702816	\N	(54)3291-6560	99448714	\N	Ensino médio Completo	\N	Ensino médio Incomplento	Pardos	Nenhuma	A pé	30 Km	Não	Aprovado	Concluida	2021-02-07	501	2021-08-30 00:45:40.803379
262	matriculas	444	MATHEUS RODRIGUES DE MACEDO	2011-07-18	Masculino	183596044	46342035631	\N	(54)8432-5367	3291-1011	\N	Ensino superior Completo	\N	Ensino Técnico Incompleto	Pardos	Nenhuma	A pé	15 Km	Não	Reprovou	Concluida	2021-02-06	502	2021-08-30 00:45:40.803379
263	matriculas	449	BRUNO VIEIRA	2011-12-18	Masculino	802926570	79147443776	\N	(54)9974-1439	91243521	\N	Ensino Técnico Incompleto	\N	Ensino superior Completo	Amarelos	Nenhuma	Ônibus	1 Km	Não	Pendente	Concluida	2021-02-01	502	2021-08-30 00:45:40.803379
264	matriculas	465	BRUNA DE ABREU DOS SANTOS	2011-06-01	Feminino	764836643	98010801208	\N	(11)1111-1111	(54)3291-6454	\N	Ensino médio Incomplento	\N	Ensino médio Completo	Pretos	Nenhuma	Ônibus	5 Km	Não	Pendente	Concluida	2021-02-07	502	2021-08-30 00:45:40.803379
265	matriculas	481	GUILHERME AUGUSTO RIBEIRO DE OLIVEIRA	2011-03-17	Feminino	449760985	61189020489	\N	(54)9923-7152	(54)3291-1355	\N	Ensino Técnico Completo	\N	Ensino médio Completo	Pardos	Nenhuma	Carro	20 Km	Não	Aprovado	Concluida	2021-01-23	502	2021-08-30 00:45:40.803379
266	matriculas	504	JÚLIO SERGIO	2011-06-08	Masculino	915426533	72675427078	\N	\N	(54)9998-3690	\N	Ensino Técnico Completo	\N	Ensino superior Completo	Brancos	Nenhuma	Carro	10 Km	Não	Aprovado	Concluida	2021-01-11	502	2021-08-30 00:45:40.803379
267	matriculas	521	MARLON NUNES	2011-08-16	Masculino	712895114	95529809046	\N	(54)9172-6865	3291-1933	\N	Ensino superior Completo	\N	Ensino Técnico Completo	Brancos	Nenhuma	Carro	1 Km	Não	Aprovado	Pendente	2021-01-27	502	2021-08-30 00:45:40.803379
268	matriculas	559	VITÓRIA PELIZZARI	2011-10-11	Feminino	240538747	80390801924	\N	(54)9904-0199	(54)3291-5329	\N	Ensino superior Completo	\N	Ensino fundamental Incomplento	Pardos	Nenhuma	A pé	5 Km	Não	Aprovado	Concluida	2021-01-30	502	2021-08-30 00:45:40.803379
269	matriculas	601	LUANA LETICIA DOS PASSOS	2011-01-31	Feminino	900192176	10062137068	\N	(54)3291-7236	(54)9193-4943	\N	Ensino fundamental Completo	\N	Ensino superior Completo	Brancos	Nenhuma	Ônibus	1 Km	Não	Reprovou	Pendente	2021-01-14	502	2021-08-30 00:45:40.803379
270	matriculas	606	JULIANA DE CASTILHOS DOS PASSOS	2011-02-19	Feminino	237380077	57918822885	\N	(54)9649-9834	(54)9987-3515	\N	Ensino superior Incompleto	\N	Ensino Técnico Incompleto	Brancos	Nenhuma	A pé	5 Km	Não	Pendente	Concluida	2021-01-14	502	2021-08-30 00:45:40.803379
271	matriculas	633	  CRISTIAN DE ATAIDE VIDI	2011-08-24	Masculino	786060334	39017143940	\N	(54)9111-7339	(54)9120-5973	\N	Ensino médio Completo	\N	Ensino Técnico Incompleto	Amarelos	Nenhuma	Moto	10 Km	Não	Reprovou	Pendente	2021-01-31	502	2021-08-30 00:45:40.803379
272	matriculas	656	 GERMANO BASSANESI ZUANAZZI	2011-12-25	Masculino	813789172	24168556015	\N	(54)3291-1412	(54)3291-5228	\N	Ensino médio Completo	\N	Ensino Técnico Completo	Amarelos	Nenhuma	Carro	30 Km	Não	Aprovado	Pendente	2021-01-16	502	2021-08-30 00:45:40.803379
273	matriculas	659	 GABRIEL DEBOVI LISBOA	2011-12-20	Masculino	816533507	95699716840	\N	(11)1111-1111	(54)9978-4303	\N	Ensino médio Incomplento	\N	Ensino fundamental Completo	Pardos	Nenhuma	Moto	5 Km	Não	Aprovado	Concluida	2021-01-30	502	2021-08-30 00:45:40.803379
274	matriculas	666	 ANA JULIA ALBUQUERQUE	2011-02-24	Feminino	118920505	90200567191	\N	(54)9165-9982	(54)9174-6571	\N	Ensino fundamental Incomplento	\N	Ensino médio Incomplento	Pretos	Nenhuma	Moto	5 Km	Não	Reprovou	Concluida	2021-01-27	502	2021-08-30 00:45:40.803379
275	matriculas	693	 ALEX DELFS DOS SANTOS	2011-03-14	Masculino	624090935	20169275342	\N	(54)9134-4156	(54)3291-3772	\N	Ensino fundamental Incomplento	\N	Ensino médio Completo	Indígenas	Nenhuma	Moto	20 Km	Não	Pendente	Concluida	2021-02-07	502	2021-08-30 00:45:40.803379
276	matriculas	759	JÚLIA SPIGOLON	2011-03-11	Feminino	207475169	20904228519	\N	(54)9101-4788	(54)9136-4687	\N	Ensino superior Incompleto	\N	Ensino médio Completo	Pardos	Nenhuma	Ônibus	5 Km	Não	Reprovou	Concluida	2021-01-25	502	2021-08-30 00:45:40.803379
277	matriculas	780	YURI P. MAGNABOSCO	2011-09-27	Masculino	897082244	53318153078	\N	(54)9616-5944	(54)3291-3950	\N	Ensino superior Completo	\N	Ensino médio Incomplento	Brancos	Nenhuma	Ônibus	10 Km	Não	Reprovou	Concluida	2021-01-19	502	2021-08-30 00:45:40.803379
278	matriculas	858	ANA DUARTE	2011-02-11	Feminino	684869489	73928863522	\N	(54)9123-3045	(54)9697-3179	\N	Ensino fundamental Completo	\N	Ensino fundamental Incomplento	Brancos	Nenhuma	Carro	10 Km	Sim	Aprovado	Concluida	2021-01-20	502	2021-08-30 00:45:40.803379
279	matriculas	862	EMILIO GOMES	2011-11-06	Masculino	178762375	43016001116	\N	(54)9181-5069	(54)9974-7497	\N	Ensino superior Incompleto	\N	Ensino superior Completo	Indígenas	Nenhuma	Ônibus	15 Km	Não	Aprovado	Concluida	2021-01-30	502	2021-08-30 00:45:40.803379
280	matriculas	895	ANDERSON ANTONIO DOS SANTOS BOEIRA	2011-06-26	Masculino	710884901	50020004304	\N	(54)9106-8656	(54)9958-2072	\N	Ensino médio Completo	\N	Ensino médio Completo	Indígenas	Nenhuma	Ônibus	5 Km	Não	Pendente	Concluida	2021-01-15	502	2021-08-30 00:45:40.803379
281	matriculas	905	GEORGIA VARGAS LOPES	2011-06-01	Feminino	791228136	89935257524	\N	(55)9915-3359	(54)9103-0149	\N	Ensino superior Incompleto	\N	Ensino superior Completo	Pretos	Nenhuma	A pé	30 Km	Não	Aprovado	Pendente	2021-01-23	502	2021-08-30 00:45:40.803379
282	matriculas	906	GUILHERME BIONDO BRAMBATTI	2011-11-07	Masculino	871259592	60276577915	\N	(54)9190-3185	(54)3267-8257	\N	Ensino Técnico Incompleto	\N	Ensino superior Completo	Brancos	Nenhuma	Ônibus	5 Km	Não	Aprovado	Concluida	2021-02-04	502	2021-08-30 00:45:40.803379
283	matriculas	911	ISABELLA BRUGALLI BORGHETTI	2011-03-02	Feminino	949097971	31659305961	\N	(54)3291-9810	(54)9996-8994	\N	Ensino superior Completo	\N	Ensino fundamental Incomplento	Amarelos	Nenhuma	Ônibus	1 Km	Não	Aprovado	Concluida	2021-01-20	502	2021-08-30 00:45:40.803379
284	matriculas	945	GRACIELE CAROLINE FERREIRA RAMOS	2011-02-28	Feminino	961382677	59660629447	\N	(54)9183-8207	(54)9603-2677	\N	Ensino superior Completo	\N	Ensino fundamental Completo	Brancos	Nenhuma	Moto	15 Km	Não	Reprovou	Pendente	2021-01-25	502	2021-08-30 00:45:40.803379
285	matriculas	988	ADRIANA CASTILHOS NASCIMENTO	2011-12-10	Feminino	897780480	62706445813	\N	(  )9991-4601	(54)9667-8063	\N	Ensino fundamental Incomplento	\N	Ensino médio Completo	Brancos	Nenhuma	Carro	10 Km	Não	Aprovado	Pendente	2021-02-03	502	2021-08-30 00:45:40.803379
286	matriculas	7	CAROLINE ZANELLA	2010-09-16	Feminino	729830732	62877269017	\N	(54)3291-7281	(54)3235-1634	\N	Ensino médio Completo	\N	Ensino superior Completo	Brancos	Nenhuma	A pé	50 Km	Não	Aprovado	Concluida	2021-01-13	601	2021-08-30 00:45:40.803379
287	matriculas	24	JOÃO CARLOS CIOATO	2010-08-12	Masculino	403179164	63316043996	\N	(54)9642-2654	(54)3235-1185	\N	Ensino superior Incompleto	\N	Ensino fundamental Incomplento	Brancos	Nenhuma	Ônibus	50 Km	Não	Aprovado	Concluida	2021-01-11	601	2021-08-30 00:45:40.803379
288	matriculas	34	PATRIC FERNANDES TREVISAN	2010-09-12	Masculino	486807587	79253800097	\N	32919172	(54)9913-0527	\N	Ensino médio Incomplento	\N	Ensino superior Completo	Brancos	Nenhuma	Ônibus	10 Km	Não	Aprovado	Concluida	2021-01-13	601	2021-08-30 00:45:40.803379
289	matriculas	43	UISLEI RIZZO	2010-11-19	Masculino	675507543	24752298556	\N	(54)9931-6402	(54)9912-6848	\N	Ensino superior Incompleto	\N	Ensino fundamental Incomplento	Pardos	Deficiência mental	Ônibus	15 Km	Não	Aprovado	Concluida	2021-01-15	601	2021-08-30 00:45:40.803379
290	matriculas	50	ANDRÉIA BORGES VIEIRA	2010-04-05	Feminino	732554964	20251228461	\N	(54)9114-4108	96192093	\N	Ensino Técnico Incompleto	\N	Ensino Técnico Incompleto	Pardos	Nenhuma	Carro	1 Km	Não	Reprovou	Pendente	2021-01-10	601	2021-08-30 00:45:40.803379
291	matriculas	59	LEONARDO RASADOR	2010-01-31	Masculino	501869535	24794088064	\N	(54)9115-6651	3291-4514	\N	Ensino superior Incompleto	\N	Ensino Técnico Incompleto	Indígenas	Nenhuma	A pé	10 Km	Não	Pendente	Concluida	2021-01-16	601	2021-08-30 00:45:40.803379
292	matriculas	62	JUSSARA VECHIATO	2010-10-11	Feminino	795164575	15411756733	\N	(54)9117-9740	32919071	\N	Ensino superior Completo	\N	Ensino superior Completo	Pardos	Nenhuma	Moto	15 Km	Não	Aprovado	Concluida	2021-02-05	601	2021-08-30 00:45:40.803379
293	matriculas	68	IRENE TERESINHA FOGAÇA	2010-10-22	Feminino	366754008	52502385017	\N	(54)3291-1072	96110017	\N	Ensino Técnico Incompleto	\N	Ensino superior Completo	Indígenas	Nenhuma	A pé	15 Km	Não	Aprovado	Concluida	2021-01-30	601	2021-08-30 00:45:40.803379
294	matriculas	86	MATEUS CIOATO POLETO	2010-05-18	Masculino	553809101	41776674058	\N	(54)9169-8787	(54)9195-4021	\N	Ensino Técnico Completo	\N	Ensino médio Incomplento	Brancos	Nenhuma	Ônibus	15 Km	Não	Pendente	Concluida	2021-01-30	601	2021-08-30 00:45:40.803379
295	matriculas	88	CATIA BIONDO	2010-01-04	Feminino	542428155	52951881744	\N	(54)3291-1967	3291-3572	\N	Ensino superior Incompleto	\N	Ensino Técnico Incompleto	Indígenas	Nenhuma	Ônibus	1 Km	Não	Aprovado	Concluida	2021-01-26	601	2021-08-30 00:45:40.803379
296	matriculas	117	TOBIAS BUGANÇA	2010-06-24	Masculino	799731468	81622055716	\N	(54)3291-3404	32916025	\N	Ensino Técnico Incompleto	\N	Ensino superior Incompleto	Pardos	Nenhuma	Carro	1 Km	Não	Pendente	Concluida	2021-02-07	601	2021-08-30 00:45:40.803379
297	matriculas	131	MATEUS BUGANÇA	2010-08-31	Masculino	481801598	26988906273	\N	(54)3291-5035	32911858	\N	Ensino superior Incompleto	\N	Ensino fundamental Incomplento	Pretos	Nenhuma	A pé	20 Km	Não	Aprovado	Concluida	2021-01-27	601	2021-08-30 00:45:40.803379
298	matriculas	147	MATEUS ALVES SCHUSTER	2010-01-10	Masculino	583303956	60017744244	\N	(54)9955-4420	(54)9196-8891	\N	Ensino superior Completo	\N	Ensino Técnico Incompleto	Pardos	Nenhuma	Ônibus	15 Km	Não	Aprovado	Concluida	2021-01-30	601	2021-08-30 00:45:40.803379
299	matriculas	187	LAVÍNIA STICH BIASOTTO	2010-05-17	Feminino	183126809	47311089386	\N	(54)9145-3026	81416266	\N	Ensino superior Incompleto	\N	Ensino superior Incompleto	Pardos	Nenhuma	A pé	1 Km	Sim	Aprovado	Concluida	2021-01-12	601	2021-08-30 00:45:40.803379
300	matriculas	190	MIRELA SANTANA	2010-11-21	Feminino	696333761	84310560319	\N	(54)9932-7421	32351693	\N	Ensino Técnico Incompleto	\N	Ensino Técnico Completo	Brancos	Nenhuma	Ônibus	5 Km	Não	Aprovado	Concluida	2021-01-20	601	2021-08-30 00:45:40.803379
301	matriculas	205	RAFAEL BENATO BOFF	2010-01-04	Masculino	671952979	94802532309	\N	(54)9197-7832	(54)9922-4369	\N	Ensino médio Completo	\N	Ensino Técnico Incompleto	Amarelos	Nenhuma	Ônibus	20 Km	Não	Aprovado	Concluida	2021-02-05	601	2021-08-30 00:45:40.803379
302	matriculas	260	FRANCINE NILZA DA SILVA	2010-01-07	Feminino	640900358	94851911344	\N	(54)9632-6696	(54)9661-0384	\N	Ensino médio Incomplento	\N	Ensino superior Incompleto	Indígenas	Deficiência motora	A pé	20 Km	Não	Aprovado	Concluida	2021-02-03	601	2021-08-30 00:45:40.803379
303	matriculas	277	LUCAS JORDANI MACHADO	2010-11-02	Masculino	753925679	20703655843	\N	(54)9155-7043	32912653	\N	Ensino fundamental Completo	\N	Ensino Técnico Completo	Brancos	Nenhuma	Carro	1 Km	Não	Aprovado	Concluida	2021-01-21	601	2021-08-30 00:45:40.803379
304	matriculas	282	CAMILA RODRIGUES ALVES	2010-10-11	Feminino	801228632	98577325735	\N	(54)9668-5318	32801189	\N	Ensino Técnico Incompleto	\N	Ensino superior Incompleto	Brancos	Nenhuma	A pé	20 Km	Não	Pendente	Concluida	2021-01-29	601	2021-08-30 00:45:40.803379
305	matriculas	289	THIAGO GABRIEL DE SOUSA SANTOS	2010-06-17	Masculino	295127112	72154115893	\N	(54)8122-7596	(54)9135-0541	\N	Ensino superior Incompleto	\N	Ensino superior Incompleto	Brancos	Nenhuma	Carro	15 Km	Não	Pendente	Pendente	2021-01-31	601	2021-08-30 00:45:40.803379
306	matriculas	295	NEURA LETTI BORGHETTI	2010-10-20	Feminino	771940043	19080380813	\N	(54)3291-4212	(54)3267-8091	\N	Ensino Técnico Incompleto	\N	Ensino superior Completo	Pardos	Nenhuma	Carro	10 Km	Não	Aprovado	Concluida	2021-01-21	601	2021-08-30 00:45:40.803379
307	matriculas	328	FELIPE DE MORAES SILVA	2010-10-07	Masculino	322455405	32338215900	\N	(54)9173-2117	(54)3291-1239	\N	Ensino Técnico Incompleto	\N	Ensino médio Incomplento	Amarelos	Nenhuma	Ônibus	15 Km	Não	Reprovou	Pendente	2021-01-12	601	2021-08-30 00:45:40.803379
308	matriculas	333	GILBERTO ASCARI	2010-03-30	Masculino	515347001	27728772075	\N	(54)3291-2103	(54)9615-7575	\N	Ensino médio Incomplento	\N	Ensino fundamental Completo	Brancos	Nenhuma	Carro	1 Km	Não	Aprovado	Concluida	2021-01-28	601	2021-08-30 00:45:40.803379
309	matriculas	351	JONATAN NOVELLO	2010-08-03	Masculino	524029745	43308271583	\N	(54)3291-7460	(54)3291-3496	\N	Ensino superior Completo	\N	Ensino Técnico Completo	Pretos	Nenhuma	A pé	5 Km	Não	Aprovado	Concluida	2021-01-27	602	2021-08-30 00:45:40.803379
310	matriculas	356	JESSICA FRANCIELLE MATAURO	2010-12-04	Feminino	727812756	64072420393	\N	(54)9668-1587	(54)3291-5350	\N	Ensino fundamental Completo	\N	Ensino médio Completo	Brancos	Nenhuma	Ônibus	15 Km	Não	Aprovado	Concluida	2021-01-18	602	2021-08-30 00:45:40.803379
311	matriculas	385	BRUNA DE JESUS	2010-09-05	Feminino	501927643	20235716815	\N	(54)8115-7336	(54)9191-2310	\N	Ensino médio Incomplento	\N	Ensino médio Incomplento	Pardos	Nenhuma	Ônibus	10 Km	Sim	Aprovado	Concluida	2021-02-01	602	2021-08-30 00:45:40.803379
312	matriculas	405	YASMIN RECH SOARES	2010-04-14	Feminino	759061724	60975103764	\N	(54)9662-5762	(54)9119-2407	\N	Ensino médio Completo	\N	Ensino Técnico Incompleto	Pardos	Deficiência visual	Carro	30 Km	Não	Aprovado	Pendente	2021-01-26	602	2021-08-30 00:45:40.803379
313	matriculas	447	ÁLVARO POGGERE	2010-12-31	Masculino	158648981	93996358896	\N	\N	32913821	\N	Ensino superior Incompleto	\N	Ensino Técnico Incompleto	Pardos	Nenhuma	Carro	5 Km	Não	Aprovado	Concluida	2021-01-25	602	2021-08-30 00:45:40.803379
314	matriculas	462	JAMILLY DOS SANTOS CORRÊA	2010-04-24	Feminino	592447800	61735528396	\N	(54)9651-5176	(54)3291-4990	\N	Ensino Técnico Incompleto	\N	Ensino médio Completo	Pardos	Nenhuma	Moto	1 Km	Não	Aprovado	Concluida	2021-01-17	602	2021-08-30 00:45:40.803379
315	matriculas	474	ANDREIA LOPES	2010-05-26	Feminino	959285668	19274457251	\N	(54)9197-9444	32911011	\N	Ensino médio Completo	\N	Ensino médio Completo	Pardos	Nenhuma	Ônibus	15 Km	Não	Aprovado	Concluida	2021-02-08	602	2021-08-30 00:45:40.803379
316	matriculas	483	SABRINA DUTRA DOS REIS	2010-04-02	Feminino	793176095	41311294097	\N	(54)9214-4428	(54)8144-9362	\N	Ensino médio Incomplento	\N	Ensino fundamental Incomplento	Indígenas	Nenhuma	Ônibus	20 Km	Sim	Aprovado	Concluida	2021-01-27	602	2021-08-30 00:45:40.803379
317	matriculas	491	FELIPE GOMES MEDEIROS	2010-09-03	Feminino	327962871	86573337418	\N	(54)3291-4819	(54)3291-5141	\N	Ensino fundamental Incomplento	\N	Ensino superior Incompleto	Pretos	Nenhuma	Carro	5 Km	Não	Aprovado	Concluida	2021-01-22	602	2021-08-30 00:45:40.803379
318	matriculas	494	DALTRO LEONCIO	2010-08-07	Masculino	610169102	22086154909	\N	(54)9687-7052	(54)9665-4965	\N	Ensino fundamental Completo	\N	Ensino médio Incomplento	Brancos	Nenhuma	Carro	1 Km	Não	Aprovado	Concluida	2021-01-29	602	2021-08-30 00:45:40.803379
319	matriculas	503	ALLAN SILVA DE SOUSA	2010-01-15	Feminino	667179219	48371071455	\N	\N	(54)3291-2135	\N	Ensino superior Incompleto	\N	Ensino superior Completo	Brancos	Nenhuma	Carro	5 Km	Não	Aprovado	Concluida	2021-01-21	602	2021-08-30 00:45:40.803379
320	matriculas	508	GABRIEL DE SOUSA	2010-03-07	Masculino	604390304	59518442763	\N	32916469	(54)3291-2244	\N	Ensino superior Incompleto	\N	Ensino fundamental Incomplento	Pretos	Nenhuma	Ônibus	15 Km	Não	Aprovado	Concluida	2021-01-12	602	2021-08-30 00:45:40.803379
321	matriculas	512	ALINE BRUNELLO	2010-05-02	Feminino	442901453	48642640804	\N	32916336	(54)3291-2835	\N	Ensino médio Completo	\N	Ensino Técnico Incompleto	Pretos	Nenhuma	Bicicleta	10 Km	Não	Aprovado	Concluida	2021-01-29	602	2021-08-30 00:45:40.803379
322	matriculas	519	JOÃO VICTOR ALMEIDA POSSA	2010-11-09	Masculino	678184990	23511907713	\N	(54)3280-1016	32914138	\N	Ensino Técnico Incompleto	\N	Ensino médio Incomplento	Indígenas	Nenhuma	Ônibus	10 Km	Sim	Aprovado	Pendente	2021-01-15	602	2021-08-30 00:45:40.803379
323	matriculas	523	CANDICE SOLDATELLI	2010-08-02	Feminino	829781354	19246880297	\N	3291-3170	3291-1364	\N	Ensino fundamental Completo	\N	Ensino superior Completo	Brancos	Nenhuma	A pé	1 Km	Não	Aprovado	Concluida	2021-02-02	602	2021-08-30 00:45:40.803379
324	matriculas	529	GABRIEL LUÍS FOCHESATO	2010-03-05	Masculino	606882229	54002512697	\N	(54)3291-4017	(54)9682-4398	\N	Ensino superior Incompleto	\N	Ensino médio Completo	Amarelos	Nenhuma	Carro	1 Km	Não	Aprovado	Pendente	2021-01-27	602	2021-08-30 00:45:40.803379
325	matriculas	535	MARIANA ARMILIATO	2010-12-31	Feminino	514600378	61329770491	\N	(54)9948-6555	(54)9165-9716	\N	Ensino médio Completo	\N	Ensino médio Completo	Pardos	Nenhuma	A pé	5 Km	Sim	Reprovou	Concluida	2021-02-02	602	2021-08-30 00:45:40.803379
326	matriculas	536	FABIO DAL ZOTTO	2010-06-17	Masculino	489229044	60725773392	\N	(54)3291-1078	(54)9165-9716	\N	Ensino fundamental Completo	\N	Ensino médio Completo	Brancos	Nenhuma	Ônibus	10 Km	Sim	Pendente	Pendente	2021-01-20	602	2021-08-30 00:45:40.803379
327	matriculas	542	TIAGO GABRIEL DAROS VELHO	2010-12-11	Masculino	207911697	26437286480	\N	(54)9623-0818	(54)3291-9039	\N	Ensino médio Completo	\N	Ensino superior Completo	Amarelos	Nenhuma	Carro	30 Km	Não	Aprovado	Concluida	2021-01-16	602	2021-08-30 00:45:40.803379
328	matriculas	555	ERIC DA CRUZ VAZ	2010-08-12	Masculino	327666364	54223372629	\N	(54)3291-3208	(54)3291-2653	\N	Ensino médio Incomplento	\N	Ensino Técnico Incompleto	Brancos	Nenhuma	Moto	5 Km	Não	Aprovado	Concluida	2021-02-04	602	2021-08-30 00:45:40.803379
329	matriculas	558	VITORIA WILLRICH DE ARAUJO	2010-07-03	Feminino	734180514	85873499108	\N	(54)9990-6774	(54)9207-1163	\N	Ensino Técnico Incompleto	\N	Ensino Técnico Completo	Pardos	Nenhuma	Carro	1 Km	Não	Aprovado	Concluida	2021-01-13	603	2021-08-30 00:45:40.803379
330	matriculas	571	NARCISO OSNI LUCRÉCIO	2010-06-09	Masculino	255232084	49882298472	\N	(54)9157-3336	(54)9951-2690	\N	Ensino fundamental Completo	\N	Ensino superior Completo	Indígenas	Nenhuma	Ônibus	15 Km	Não	Aprovado	Concluida	2021-01-18	603	2021-08-30 00:45:40.803379
331	matriculas	587	SILVIA MARA BOFF	2010-02-25	Feminino	326741679	52359055042	\N	(54)9997-9784	(54)9127-1444	\N	Ensino superior Completo	\N	Ensino médio Incomplento	Brancos	Nenhuma	Carro	10 Km	Não	Pendente	Concluida	2021-01-22	603	2021-08-30 00:45:40.803379
332	matriculas	614	RAFAELA SOUZA ESTEVO	2010-07-07	Feminino	432299414	84764701118	\N	\N	(54)9962-1420	\N	Ensino Técnico Incompleto	\N	Ensino médio Incomplento	Brancos	Nenhuma	A pé	30 Km	Sim	Aprovado	Concluida	2021-01-17	603	2021-08-30 00:45:40.803379
333	matriculas	626	 CHARLES GRISON	2010-03-14	Masculino	515388568	17963907819	\N	(54)9165-3969	(54)9992-8969	\N	Ensino médio Completo	\N	Ensino médio Incomplento	Pardos	Nenhuma	Ônibus	5 Km	Não	Aprovado	Concluida	2021-01-24	603	2021-08-30 00:45:40.803379
334	matriculas	634	 MAURICIO DALSOTTO	2010-05-29	Masculino	367506833	27731218519	\N	(54)9197-2329	(54)9667-7878	\N	Ensino Técnico Completo	\N	Ensino superior Completo	Pretos	Nenhuma	Moto	5 Km	Não	Aprovado	Pendente	2021-01-27	603	2021-08-30 00:45:40.803379
335	matriculas	643	 LEONARDO BRIGOLINI	2010-12-21	Masculino	550357088	24552362317	\N	(54)9631-505	(54)3235-5117	\N	Ensino fundamental Incomplento	\N	Ensino fundamental Completo	Brancos	Deficiência visual	Ônibus	5 Km	Sim	Aprovado	Concluida	2021-01-10	603	2021-08-30 00:45:40.803379
336	matriculas	651	 VITÓRIA TOMAZ	2010-04-28	Feminino	383515333	17308834792	\N	(54)9184-2962	(54)3291-6094	\N	Ensino fundamental Completo	\N	Ensino médio Incomplento	Brancos	Nenhuma	Ônibus	5 Km	Não	Aprovado	Concluida	2021-01-16	603	2021-08-30 00:45:40.803379
337	matriculas	673	 GUSTAVO BIZOTTO SECCO	2010-10-07	Masculino	338308093	63579941517	\N	(54)9124-3297	(54)9614-6711	\N	Ensino médio Completo	\N	Ensino superior Completo	Pardos	Nenhuma	Carro	5 Km	Não	Aprovado	Concluida	2021-01-23	603	2021-08-30 00:45:40.803379
338	matriculas	708	DANDARA BOEIRA QUINTANILHA	2010-04-30	Feminino	858191753	68908629030	\N	32913030	(54)9965-3111	\N	Ensino médio Incomplento	\N	Ensino médio Completo	Brancos	Nenhuma	A pé	5 Km	Sim	Aprovado	Concluida	2021-02-01	603	2021-08-30 00:45:40.803379
339	matriculas	710	MILEIDE SILVA	2010-12-21	Feminino	924491950	87763679818	\N	(54)3291-7105	(54)9146-3068	\N	Ensino Técnico Incompleto	\N	Ensino Técnico Incompleto	Amarelos	Nenhuma	Ônibus	5 Km	Não	Aprovado	Concluida	2021-01-15	603	2021-08-30 00:45:40.803379
340	matriculas	732	MIKAELEN GONÇALVES DA SILVA	2010-06-10	Feminino	672684295	65416368705	\N	(54)3291-2030	(54)3291-2866	\N	Ensino fundamental Completo	\N	Ensino fundamental Incomplento	Pretos	Nenhuma	Carro	10 Km	Não	Aprovado	Concluida	2021-02-05	603	2021-08-30 00:45:40.803379
341	matriculas	790	MATHEUS SOARES QUINTANA	2010-05-02	Masculino	658742690	23155800040	\N	(54)3291-2713	(54)9900-5876	\N	Ensino Técnico Completo	\N	Ensino superior Completo	Brancos	Nenhuma	Ônibus	1 Km	Não	Aprovado	Concluida	2021-02-04	603	2021-08-30 00:45:40.803379
342	matriculas	794	DANIELA DE FARIA	2010-04-17	Feminino	730121742	69410609500	\N	(54)9971-5520	(54)9156-5182	\N	Ensino fundamental Incomplento	\N	Ensino médio Incomplento	Brancos	Nenhuma	A pé	5 Km	Não	Aprovado	Concluida	2021-01-12	603	2021-08-30 00:45:40.803379
343	matriculas	833	JOÃO PEDRO DE GOIS DOS REIS	2010-02-02	Masculino	190315524	13497823974	\N	(54)9255-4210	(54)9697-3615	\N	Ensino fundamental Completo	\N	Ensino Técnico Completo	Brancos	Nenhuma	Carro	10 Km	Não	Aprovado	Pendente	2021-02-01	603	2021-08-30 00:45:40.803379
344	matriculas	843	VINÍCIUS GIRARDINI MOREIRA E SILVA	2010-04-09	Masculino	817285485	91831353875	\N	(54)9955-0096	(54)3291-1407	\N	Ensino Técnico Incompleto	\N	Ensino superior Completo	Pardos	Deficiência visual	Carro	10 Km	Sim	Reprovou	Concluida	2021-01-13	603	2021-08-30 00:45:40.803379
345	matriculas	861	MARCELA SCOPEL	2010-07-20	Feminino	382960074	43637427319	\N	(54)3291-2478	(54)9180-9191	\N	Ensino superior Completo	\N	Ensino Técnico Completo	Amarelos	Nenhuma	A pé	20 Km	Não	Aprovado	Concluida	2021-01-22	603	2021-08-30 00:45:40.803379
346	matriculas	891	FERNANDA POZZO	2010-02-09	Feminino	236138207	18907269740	\N	(54)9152-1297	(54)3291-1210	\N	Ensino médio Incomplento	\N	Ensino superior Completo	Brancos	Deficiência auditiva	A pé	20 Km	Não	Reprovou	Concluida	2021-02-06	603	2021-08-30 00:45:40.803379
347	matriculas	928	LETÍCIA APARECIDA EBERT	2010-04-19	Feminino	469700616	28840409028	\N	(54)9703-3352	(54)3291-3382	\N	Ensino superior Completo	\N	Ensino superior Completo	Brancos	Nenhuma	Carro	5 Km	Sim	Pendente	Concluida	2021-01-16	603	2021-08-30 00:45:40.803379
348	matriculas	938	MICHAEL RECH	2010-01-16	Feminino	959741656	20323936164	\N	(54)3291-1934	(54)9984-7729	\N	Ensino fundamental Incomplento	\N	Ensino superior Completo	Brancos	Nenhuma	Ônibus	1 Km	Não	Aprovado	Concluida	2021-01-31	603	2021-08-30 00:45:40.803379
349	matriculas	959	JEAN BARBOSA	2010-10-15	Masculino	633509174	57499013361	\N	32917066	(54)9609-2186	\N	Ensino superior Incompleto	\N	Ensino Técnico Incompleto	Pardos	Nenhuma	Ônibus	5 Km	Não	Aprovado	Pendente	2021-01-24	603	2021-08-30 00:45:40.803379
350	matriculas	974	DIEGO BUSIN	2010-09-08	Masculino	503345779	39023789410	\N	(54)3291-9094	(54)9663-2977	\N	Ensino médio Incomplento	\N	Ensino Técnico Completo	Brancos	Nenhuma	Carro	10 Km	Não	Reprovou	Concluida	2021-02-07	603	2021-08-30 00:45:40.803379
351	matriculas	995	CRISELEN CASTAGNA	2010-08-26	Feminino	828970192	10131208377	\N	(54)3291-4629	(54)9158-4943	\N	Ensino fundamental Incomplento	\N	Ensino fundamental Completo	Pardos	Nenhuma	Ônibus	5 Km	Não	Reprovou	Concluida	2021-01-25	603	2021-08-30 00:45:40.803379
352	matriculas	1	DANIELI SANTINI	2009-06-14	Feminino	662817027	50465101929	\N	(54)3291-3073	(54)9195-2874	\N	Ensino fundamental Completo	\N	Ensino médio Incomplento	Indígenas	Nenhuma	Ônibus	1 Km	Não	Aprovado	Concluida	2021-01-24	701	2021-08-30 00:45:40.803379
353	matriculas	41	CRISTIAN FURLAN	2009-01-17	Masculino	888538149	60225768873	\N	(54)9987-8987	99043429	\N	Ensino Técnico Completo	\N	Ensino médio Incomplento	Pardos	Nenhuma	Carro	15 Km	Sim	Reprovou	Concluida	2021-01-19	701	2021-08-30 00:45:40.803379
354	matriculas	83	LUIZ FERNANDO RIZZON	2009-06-22	Masculino	891542226	97396707523	\N	(54)3291-1453	(54)3291-2088	\N	Ensino Técnico Incompleto	\N	Ensino fundamental Incomplento	Brancos	Nenhuma	A pé	5 Km	Não	Aprovado	Concluida	2021-02-02	701	2021-08-30 00:45:40.803379
355	matriculas	109	BRUNA DA SILVA	2009-12-15	Feminino	918084127	61552415735	\N	(54)3291-1870	(54)3291-2060	\N	Ensino fundamental Incomplento	\N	Ensino médio Completo	Pardos	Nenhuma	Moto	15 Km	Não	Aprovado	Pendente	2021-01-17	701	2021-08-30 00:45:40.803379
356	matriculas	122	ONADIR DA SILVA DE OLIVEIRA	2009-09-05	Masculino	783643207	65436326851	\N	(54)9121-9821	32911963	\N	Ensino superior Incompleto	\N	Ensino médio Completo	Pardos	Nenhuma	A pé	1 Km	Não	Pendente	Concluida	2021-01-19	701	2021-08-30 00:45:40.803379
357	matriculas	134	FELIPE ZAMBONI	2009-10-17	Masculino	766773646	30487087843	\N	(54)3291-1393	(54)3235-5097	\N	Ensino superior Incompleto	\N	Ensino fundamental Completo	Brancos	Nenhuma	Ônibus	30 Km	Não	Aprovado	Pendente	2021-01-25	701	2021-08-30 00:45:40.803379
358	matriculas	135	ALINE SILVA VIEIRA	2009-05-31	Feminino	113347236	79795992382	\N	(54)9152-9690	(54)3235-5096	\N	Ensino médio Completo	\N	Ensino Técnico Incompleto	Pardos	Deficiência visual	Moto	1 Km	Não	Aprovado	Pendente	2021-01-10	701	2021-08-30 00:45:40.803379
359	matriculas	144	GABRIELLY GRAZIOTIN ALMEIDA	2009-11-29	Feminino	529110354	57204711815	\N	(54)9192-3293	(54)9938-2822	\N	Ensino médio Incomplento	\N	Ensino superior Completo	Pretos	Nenhuma	Ônibus	1 Km	Não	Aprovado	Pendente	2021-01-30	701	2021-08-30 00:45:40.803379
360	matriculas	146	MICAEL BIANCHI SPIGOLON	2009-08-07	Masculino	144562483	37874329609	\N	(54)9624-1476	(54)3291-2883	\N	Ensino médio Completo	\N	Ensino Técnico Completo	Brancos	Nenhuma	Carro	20 Km	Não	Pendente	Pendente	2021-01-17	701	2021-08-30 00:45:40.803379
361	matriculas	166	SAMANTA DA LUZ FEREIRA	2009-08-25	Feminino	637036617	82379117283	\N	(54)9985-2966	32914516	\N	Ensino fundamental Completo	\N	Ensino Técnico Incompleto	Brancos	Deficiência mental	Carro	20 Km	Não	Aprovado	Concluida	2021-01-21	701	2021-08-30 00:45:40.803379
362	matriculas	177	REGINA MARIA ALVES CAMELO	2009-12-11	Feminino	716523171	18354237189	\N	(54)9691-0709	(54)3291-1207	\N	Ensino fundamental Completo	\N	Ensino superior Completo	Pretos	Nenhuma	Ônibus	30 Km	Não	Aprovado	Concluida	2021-02-08	701	2021-08-30 00:45:40.803379
363	matriculas	225	SEBASTIÃO VALDERES BOEIRA	2009-12-30	Feminino	407430711	11695418076	\N	(54)9147-3927	\N	\N	Ensino Técnico Incompleto	\N	Ensino médio Completo	Indígenas	Deficiência visual	Carro	5 Km	Não	Aprovado	Pendente	2021-02-08	701	2021-08-30 00:45:40.803379
364	matriculas	226	ELFIRA MACHADO BOEIRA	2009-04-07	Masculino	324226729	58782183925	\N	(54)8148-6576	(54)9128-2751	\N	Ensino médio Incomplento	\N	Ensino Técnico Completo	Pardos	Nenhuma	Ônibus	5 Km	Não	Aprovado	Concluida	2021-02-03	701	2021-08-30 00:45:40.803379
365	matriculas	252	DANIEL PELIZZARI	2009-07-20	Masculino	101250898	78057904728	\N	(54)9157-4055	(54)9932-0850	\N	Ensino médio Completo	\N	Ensino superior Incompleto	Pretos	Nenhuma	Carro	10 Km	Sim	Pendente	Pendente	2021-01-13	701	2021-08-30 00:45:40.803379
366	matriculas	254	IRAN ANDRADE DE LIMA	2009-06-04	Masculino	485433087	13756564852	\N	(54)9692-9892	(54)9928-0226	\N	Ensino Técnico Incompleto	\N	Ensino fundamental Completo	Indígenas	Nenhuma	Ônibus	1 Km	Sim	Reprovou	Pendente	2021-01-31	701	2021-08-30 00:45:40.803379
367	matriculas	256	CAROLAINE MULLER	2009-12-24	Feminino	646878022	50063351271	\N	(54)9980-7422	(54)9907-2318	\N	Ensino fundamental Completo	\N	Ensino superior Incompleto	Pretos	Nenhuma	Ônibus	5 Km	Não	Reprovou	Concluida	2021-02-03	701	2021-08-30 00:45:40.803379
368	matriculas	279	LUCIANA APARECIDA CARDOSO HENRIQUE SANT	2009-08-04	Feminino	655297447	49295687603	\N	(54)9603-8361	32914238	\N	Ensino médio Incomplento	\N	Ensino fundamental Completo	Brancos	Nenhuma	A pé	20 Km	Não	Reprovou	Concluida	2021-01-23	701	2021-08-30 00:45:40.803379
369	matriculas	294	EDRIELE CAVALLI	2009-10-24	Feminino	416819363	93357001212	\N	(54)8105-4278	(54)3291-3751	\N	Ensino Técnico Incompleto	\N	Ensino superior Completo	Brancos	Nenhuma	Carro	10 Km	Não	Pendente	Concluida	2021-01-23	701	2021-08-30 00:45:40.803379
370	matriculas	368	AUGUSTO BURATTI	2009-03-14	Masculino	741445562	41797588344	\N	(54)9114-5621	(54)9932-2782	\N	Ensino médio Completo	\N	Ensino superior Completo	Brancos	Nenhuma	A pé	10 Km	Não	Aprovado	Pendente	2021-02-07	701	2021-08-30 00:45:40.803379
371	matriculas	372	ITAMARA GUZZON	2009-06-09	Feminino	259215045	33002135057	\N	(54)9203-5404	(54)9902-8906	\N	Ensino fundamental Incomplento	\N	Ensino superior Completo	Brancos	Nenhuma	Bicicleta	1 Km	Não	Pendente	Concluida	2021-01-14	701	2021-08-30 00:45:40.803379
372	matriculas	377	MARCELO PEREIRA VARELA	2009-07-28	Masculino	999354378	79173660675	\N	(54)9173-2696	(54)9922-9397	\N	Ensino fundamental Completo	\N	Ensino Técnico Completo	Pardos	Nenhuma	Ônibus	50 Km	Não	Aprovado	Concluida	2021-01-22	701	2021-08-30 00:45:40.803379
373	matriculas	396	JOSÉ CARLOS HASKEL VELHO	2009-09-03	Masculino	617682521	18540186326	\N	(54)9924-0099	(54)9700-8428	\N	Ensino fundamental Incomplento	\N	Ensino fundamental Incomplento	Brancos	Deficiência motora	Carro	10 Km	Não	Aprovado	Pendente	2021-02-04	701	2021-08-30 00:45:40.803379
374	matriculas	397	MATHEUS SOARES QUINTANA	2009-12-07	Masculino	717439540	43768606038	\N	(54)9714-3892	(54)3291-3305	\N	Ensino médio Incomplento	\N	Ensino superior Completo	Pardos	Nenhuma	Carro	5 Km	Sim	Aprovado	Concluida	2021-02-06	701	2021-08-30 00:45:40.803379
375	matriculas	415	MARINETE BONNI FANTIN	2009-06-07	Feminino	218266743	84288804536	\N	(54)3280-1170	(54)9976-2832	\N	Ensino fundamental Completo	\N	Ensino fundamental Completo	Brancos	Nenhuma	Ônibus	15 Km	Não	Aprovado	Concluida	2021-01-21	701	2021-08-30 00:45:40.803379
376	matriculas	419	CRISTINE CHINELATO	2009-11-22	Feminino	459286679	28811448675	\N	(54)3291-4573	(54)9134-5890	\N	Ensino fundamental Incomplento	\N	Ensino superior Incompleto	Pardos	Nenhuma	A pé	15 Km	Não	Pendente	Concluida	2021-01-21	702	2021-08-30 00:45:40.803379
377	matriculas	437	SANDRA  MARIA DE LIMA LOURENÇO	2009-09-25	Feminino	445247967	93952621474	\N	(54)9938-6583	(54)3291-6318	\N	Ensino superior Completo	\N	Ensino Técnico Incompleto	Brancos	Nenhuma	Carro	5 Km	Não	Aprovado	Concluida	2021-02-05	702	2021-08-30 00:45:40.803379
378	matriculas	463	MAURO POLO GIORDANI	2009-03-28	Masculino	288553225	21607024142	\N	(11)1111-1111	32914159	\N	Ensino superior Completo	\N	Ensino superior Completo	Brancos	Nenhuma	Ônibus	15 Km	Não	Aprovado	Pendente	2021-01-16	702	2021-08-30 00:45:40.803379
379	matriculas	464	MARCO ANTONIO STEDILE	2009-08-07	Masculino	413161730	45850846817	\N	(11)1111-1111	32912182	\N	Ensino superior Incompleto	\N	Ensino Técnico Incompleto	Brancos	Nenhuma	Carro	30 Km	Não	Pendente	Concluida	2021-02-06	702	2021-08-30 00:45:40.803379
380	matriculas	469	SABRINA SALVADOR CARARO	2009-05-01	Feminino	721019960	97202180559	\N	(54)3291-2244	32919009	\N	Ensino fundamental Completo	\N	Ensino Técnico Completo	Amarelos	Nenhuma	Moto	1 Km	Não	Aprovado	Concluida	2021-01-31	702	2021-08-30 00:45:40.803379
381	matriculas	477	GREICIELI SANTINI	2009-07-16	Feminino	307094132	36473541683	\N	(54)8432-4133	(54)3291-1809	\N	Ensino superior Completo	\N	Ensino fundamental Completo	Pardos	Nenhuma	A pé	1 Km	Não	Aprovado	Pendente	2021-01-20	702	2021-08-30 00:45:40.803379
382	matriculas	484	MAIRA FONGARO	2009-03-27	Feminino	172375181	71192066721	\N	(54)9646-4832	(54)3291-2273	\N	Ensino fundamental Completo	\N	Ensino Técnico Completo	Pardos	Nenhuma	A pé	1 Km	Não	Aprovado	Concluida	2021-01-23	702	2021-08-30 00:45:40.803379
383	matriculas	525	LUIZ HENRIQUE P. KAPP	2009-09-10	Masculino	446819350	32553982652	\N	(11)1111-1111	32912121	\N	Ensino superior Incompleto	\N	Ensino médio Completo	Pardos	Nenhuma	Carro	10 Km	Não	Aprovado	Pendente	2021-01-20	702	2021-08-30 00:45:40.803379
384	matriculas	528	JULIO CÉSAR CAMELO	2009-07-03	Masculino	310767265	47272164723	\N	(54)3280-1142	32915346	\N	Ensino superior Completo	\N	Ensino Técnico Completo	Pardos	Nenhuma	Ônibus	5 Km	Sim	Aprovado	Concluida	2021-02-01	702	2021-08-30 00:45:40.803379
385	matriculas	539	GUSTAVO ZANOL	2009-02-07	Masculino	263230770	70178800899	\N	(  )    -	(54)9175-5155	\N	Ensino Técnico Incompleto	\N	Ensino médio Completo	Pardos	Nenhuma	A pé	30 Km	Não	Reprovou	Concluida	2021-01-19	702	2021-08-30 00:45:40.803379
386	matriculas	541	BEATRIZ PAOLA CABRAL DA S. RIBEIRO	2009-02-15	Feminino	687359276	29290160302	\N	(54)3291-5111	(54)3291-3937	\N	Ensino superior Incompleto	\N	Ensino fundamental Incomplento	Pardos	Nenhuma	Moto	5 Km	Não	Aprovado	Concluida	2021-02-03	702	2021-08-30 00:45:40.803379
387	matriculas	548	KETLIN RAMONE DE LIMA BOEIRA	2009-06-18	Feminino	120192045	73092074325	\N	(54)3291-1329	\N	\N	Ensino Técnico Incompleto	\N	Ensino Técnico Incompleto	Pardos	Nenhuma	A pé	15 Km	Sim	Aprovado	Concluida	2021-01-11	702	2021-08-30 00:45:40.803379
388	matriculas	551	GABRIEL	2009-06-25	Masculino	353361339	48008318515	\N	(54)3291-7550	(54)3291-3059	\N	Ensino Técnico Incompleto	\N	Ensino fundamental Incomplento	Pretos	Nenhuma	Carro	15 Km	Não	Reprovou	Concluida	2021-01-21	702	2021-08-30 00:45:40.803379
389	matriculas	630	 CAMILE SANDRI	2009-03-30	Feminino	937587490	44250650412	\N	(54)9999-0607	(54)9626-5117	\N	Ensino médio Incomplento	\N	Ensino médio Completo	Pardos	Nenhuma	Carro	20 Km	Não	Pendente	Pendente	2021-01-20	702	2021-08-30 00:45:40.803379
390	matriculas	641	 ALISSON LEONARDO DE OLVIEIRA	2009-08-04	Masculino	481496043	73517101790	\N	(54)9118-5198	(54)3034-0309	\N	Ensino Técnico Incompleto	\N	Ensino Técnico Completo	Brancos	Nenhuma	Moto	30 Km	Não	Aprovado	Concluida	2021-01-18	702	2021-08-30 00:45:40.803379
391	matriculas	686	 SILVIA RECH POLETO	2009-01-19	Feminino	647072902	14379928887	\N	(54)9701-5419	(54)9908-2637	\N	Ensino superior Incompleto	\N	Ensino superior Incompleto	Pretos	Nenhuma	A pé	10 Km	Sim	Aprovado	Concluida	2021-01-25	702	2021-08-30 00:45:40.803379
392	matriculas	712	JOANA DARK	2009-05-11	Feminino	824529227	43658006253	\N	(54)3291-3647	(54)3291-4602	\N	Ensino Técnico Incompleto	\N	Ensino Técnico Incompleto	Pardos	Nenhuma	Ônibus	5 Km	Não	Aprovado	Concluida	2021-01-22	702	2021-08-30 00:45:40.803379
393	matriculas	717	OTÁVIO RECH CAMASSOLA	2009-12-26	Masculino	853062734	76110875615	\N	(54)3291-3929	\N	\N	Ensino médio Incomplento	\N	Ensino Técnico Incompleto	Pardos	Nenhuma	Carro	5 Km	Não	Aprovado	Concluida	2021-01-10	702	2021-08-30 00:45:40.803379
394	matriculas	725	LUIZ HENRIQUE SOLDERA	2009-07-28	Masculino	720515696	63855176833	\N	(54)3291-3016	32801142	\N	Ensino fundamental Completo	\N	Ensino médio Completo	Pardos	Nenhuma	A pé	30 Km	Não	Aprovado	Concluida	2021-02-06	702	2021-08-30 00:45:40.803379
395	matriculas	731	EDUARDO ROSSI	2009-06-01	Masculino	950233125	84985458371	\N	(54)9998-7926	(54)9914-0240	\N	Ensino Técnico Incompleto	\N	Ensino fundamental Incomplento	Brancos	Deficiência visual	Carro	1 Km	Sim	Reprovou	Concluida	2021-01-30	702	2021-08-30 00:45:40.803379
396	matriculas	739	BERNARDO FREDERICK ASCARI	2009-03-07	Masculino	671430468	44170424326	\N	(54)9657-3417	(54)9193-2300	\N	Ensino médio Completo	\N	Ensino superior Incompleto	Amarelos	Nenhuma	Ônibus	30 Km	Não	Aprovado	Concluida	2021-01-11	702	2021-08-30 00:45:40.803379
397	matriculas	742	GIOVANI DA SILVA FANTIN	2009-05-05	Feminino	223215142	23938275787	\N	(54)9656-6362	(54)9182-9947	\N	Ensino superior Completo	\N	Ensino superior Completo	Brancos	Deficiência visual	Carro	10 Km	Não	Aprovado	Pendente	2021-01-19	702	2021-08-30 00:45:40.803379
398	matriculas	761	MAURO RICARDO DE CASTILHOS	2009-04-03	Masculino	154229055	35718038434	\N	(54)9926-2960	(54)3291-1096	\N	Ensino fundamental Incomplento	\N	Ensino Técnico Incompleto	Brancos	Nenhuma	Moto	5 Km	Não	Aprovado	Concluida	2021-01-24	702	2021-08-30 00:45:40.803379
399	matriculas	773	TIAGO BRASIL	2009-02-18	Masculino	625422837	57577995597	\N	(54)9165-9716	(54)9204-9549	\N	Ensino Técnico Completo	\N	Ensino médio Incomplento	Indígenas	Nenhuma	Ônibus	5 Km	Não	Aprovado	Concluida	2021-01-29	702	2021-08-30 00:45:40.803379
400	matriculas	774	GABRIELE CAMPOS PIRES	2009-12-28	Feminino	539534436	89525332640	\N	(54)9925-3198	(54)3291-3301	\N	Ensino superior Completo	\N	Ensino Técnico Incompleto	Pretos	Deficiência motora	Carro	15 Km	Não	Pendente	Concluida	2021-02-04	702	2021-08-30 00:45:40.803379
401	matriculas	788	ERIC DA SILVA FONTANA	2009-01-04	Masculino	814688373	96840433359	\N	(54)3291-4449	(54)9999-9999	\N	Ensino Técnico Completo	\N	Ensino fundamental Completo	Brancos	Nenhuma	Carro	5 Km	Não	Pendente	Concluida	2021-01-18	702	2021-08-30 00:45:40.803379
402	matriculas	852	BRUNA TREVIZAN	2009-11-25	Feminino	936990616	72316053413	\N	(54)9900-2157	(54)9904-3367	\N	Ensino superior Completo	\N	Ensino superior Incompleto	Amarelos	Nenhuma	Moto	15 Km	Não	Aprovado	Pendente	2021-01-10	702	2021-08-30 00:45:40.803379
403	matriculas	867	ISMAEL TORRESAN	2009-03-03	Masculino	166853793	32018352753	\N	(54)3291-3600	(54)3291-5221	\N	Ensino médio Completo	\N	Ensino superior Incompleto	Brancos	Nenhuma	Ônibus	15 Km	Não	Aprovado	Concluida	2021-01-30	702	2021-08-30 00:45:40.803379
404	matriculas	870	MARIA DE LOURDES DE CASTILHOS FORTUNATTI	2009-12-18	Feminino	952892463	24525286322	\N	(54)3291-4101	(54)9612-6333	\N	Ensino Técnico Incompleto	\N	Ensino Técnico Completo	Brancos	Nenhuma	Ônibus	20 Km	Não	Aprovado	Pendente	2021-01-29	702	2021-08-30 00:45:40.803379
405	matriculas	899	MARIA MARGARIDA CORREA BORGES	2009-09-03	Feminino	413182209	34429767397	\N	(54)9922-4369	(54)9932-7421	\N	Ensino superior Completo	\N	Ensino Técnico Completo	Pardos	Nenhuma	Carro	1 Km	Não	Aprovado	Concluida	2021-02-01	702	2021-08-30 00:45:40.803379
406	matriculas	921	RAQUEL BOLZON	2009-12-13	Feminino	960507962	43551106697	\N	(54)9145-6452	(54)9708-8199	\N	Ensino superior Completo	\N	Ensino médio Completo	Pardos	Nenhuma	Carro	20 Km	Sim	Pendente	Concluida	2021-01-31	702	2021-08-30 00:45:40.803379
407	matriculas	948	ANDRÉ MORANDI	2009-02-20	Masculino	597379029	50740260384	\N	(54)9644-3500	(55)9627-1430	\N	Ensino fundamental Completo	\N	Ensino médio Completo	Brancos	Nenhuma	Carro	50 Km	Não	Pendente	Concluida	2021-01-23	702	2021-08-30 00:45:40.803379
408	matriculas	949	MATEUS CASANOVA	2009-02-23	Masculino	587805404	55377464651	\N	(54)9100-9027	(54)9164-2537	\N	Ensino médio Completo	\N	Ensino médio Completo	Brancos	Nenhuma	Moto	15 Km	Não	Aprovado	Concluida	2021-01-19	702	2021-08-30 00:45:40.803379
409	matriculas	994	CLARISSA TOLARDO	2009-03-10	Feminino	885267165	52647082458	\N	(54)3280-1187	(54)9155-2281	\N	Ensino superior Completo	\N	Ensino fundamental Completo	Brancos	Nenhuma	Ônibus	10 Km	Não	Aprovado	Pendente	2021-01-12	702	2021-08-30 00:45:40.803379
410	matriculas	15	VILMA CECILIA LEONARDELLI CARRARO	2008-12-20	Feminino	306267021	63425069913	\N	(54)3291-1641	(54)9619-9161	\N	Ensino Técnico Incompleto	\N	Ensino Técnico Completo	Amarelos	Nenhuma	A pé	1 Km	Não	Aprovado	Pendente	2021-01-14	801	2021-08-30 00:45:40.803379
411	matriculas	30	MICHEL MARCON	2008-10-16	Masculino	212294900	11983556666	\N	(54)9103-5320	\N	\N	Ensino Técnico Completo	\N	Ensino médio Incomplento	Brancos	Nenhuma	Moto	20 Km	Não	Aprovado	Concluida	2021-01-13	801	2021-08-30 00:45:40.803379
412	matriculas	55	RANGEL RIZZO	2008-07-09	Masculino	969019360	51835068921	\N	(54)9116-6359	99368582	\N	Ensino superior Incompleto	\N	Ensino fundamental Incomplento	Pardos	Nenhuma	Ônibus	5 Km	Não	Reprovou	Concluida	2021-01-18	801	2021-08-30 00:45:40.803379
413	matriculas	111	NEIVA TEREZINHA BORGUETTI	2008-12-22	Feminino	904792798	35237342688	\N	(54)9157-3336	(54)9146-1700	\N	Ensino Técnico Completo	\N	Ensino fundamental Incomplento	Brancos	Nenhuma	Carro	5 Km	Sim	Aprovado	Pendente	2021-02-04	801	2021-08-30 00:45:40.803379
414	matriculas	126	MARCOS GRIZZON	2008-01-12	Masculino	873752141	67037133473	\N	(54)9183-9216	32912749	\N	Ensino superior Completo	\N	Ensino médio Incomplento	Amarelos	Nenhuma	Carro	20 Km	Não	Aprovado	Concluida	2021-02-06	801	2021-08-30 00:45:40.803379
415	matriculas	141	ROGER FONTANA DA CRUZ	2008-01-02	Masculino	793536175	64746874585	\N	(54)9132-6922	(54)3291-2359	\N	Ensino superior Incompleto	\N	Ensino Técnico Completo	Pardos	Nenhuma	Bicicleta	30 Km	Não	Aprovado	Concluida	2021-01-31	801	2021-08-30 00:45:40.803379
416	matriculas	142	CAMILI VITÓRIA FONGARO	2008-02-27	Feminino	673638336	70677350883	\N	(54)9613-3419	(54)9143-9980	\N	Ensino médio Completo	\N	Ensino Técnico Completo	Pardos	Nenhuma	A pé	20 Km	Não	Aprovado	Concluida	2021-01-20	801	2021-08-30 00:45:40.803379
417	matriculas	227	JULIANO MARCELO BONELLA	2008-08-27	Masculino	443059445	11213023118	\N	(54)9174-6069	(54)9644-0712	\N	Ensino Técnico Incompleto	\N	Ensino superior Completo	Brancos	Nenhuma	Ônibus	10 Km	Não	Aprovado	Concluida	2021-01-16	801	2021-08-30 00:45:40.803379
418	matriculas	232	GEISON CARDOSO	2008-06-30	Masculino	428678647	63744265676	\N	(54)9704-1922	(54)9989-1731	\N	Ensino superior Completo	\N	Ensino Técnico Completo	Pardos	Nenhuma	A pé	10 Km	Não	Pendente	Concluida	2021-01-18	801	2021-08-30 00:45:40.803379
419	matriculas	250	KELVIN DIOGO GOMES RICARDO	2008-01-04	Masculino	856880247	64617615103	\N	(54)8147-1101	(54)9977-7851	\N	Ensino superior Incompleto	\N	Ensino superior Incompleto	Brancos	Nenhuma	A pé	15 Km	Não	Aprovado	Pendente	2021-01-16	801	2021-08-30 00:45:40.803379
420	matriculas	268	JOANA EDUARDA PEREIRA GOBBI	2008-05-18	Feminino	139990779	11180301928	\N	(11)1111-1111	(54)9158-3355	\N	Ensino fundamental Completo	\N	Ensino médio Completo	Brancos	Nenhuma	Carro	20 Km	Não	Aprovado	Concluida	2021-02-03	801	2021-08-30 00:45:40.803379
421	matriculas	276	JULIANA DE SOUZA PONES	2008-09-21	Feminino	868882913	88369046968	\N	(54)3291-4928	3291- 2674	\N	Ensino fundamental Incomplento	\N	Ensino médio Completo	Brancos	Nenhuma	A pé	5 Km	Sim	Aprovado	Concluida	2021-02-04	801	2021-08-30 00:45:40.803379
422	matriculas	306	LIVIA LEITE RODRIGUES	2008-10-07	Feminino	156354480	87863828467	\N	(54)9602-3359	(54)3291-3382	\N	Ensino superior Completo	\N	Ensino superior Incompleto	Brancos	Nenhuma	A pé	5 Km	Não	Reprovou	Concluida	2021-01-21	801	2021-08-30 00:45:40.803379
423	matriculas	331	RIAN ANDREOLA RENOSTO	2008-04-02	Masculino	384518994	74770230513	\N	(54)3291-1802	(54)3291-2002	\N	Ensino Técnico Incompleto	\N	Ensino fundamental Incomplento	Indígenas	Nenhuma	Carro	5 Km	Não	Pendente	Concluida	2021-01-26	801	2021-08-30 00:45:40.803379
424	matriculas	338	MORGANA SANDI	2008-02-16	Feminino	557061350	14462939493	\N	(54)9908-4074	(54)3280-1069	\N	Ensino superior Incompleto	\N	Ensino Técnico Incompleto	Pardos	Deficiência visual	Moto	30 Km	Não	Aprovado	Concluida	2021-01-21	801	2021-08-30 00:45:40.803379
425	matriculas	345	NICOLLY DE CASTRO	2008-04-02	Feminino	447852023	28965814279	\N	(  )    -	(54)9152-0846	\N	Ensino fundamental Incomplento	\N	Ensino médio Incomplento	Brancos	Deficiência motora	A pé	5 Km	Não	Aprovado	Concluida	2021-01-12	801	2021-08-30 00:45:40.803379
426	matriculas	348	JAQUELINE SOLDERA	2008-10-04	Feminino	202199992	78274914663	\N	(54)3291-2700	(54)9154-9752	\N	Ensino Técnico Incompleto	\N	Ensino superior Incompleto	Brancos	Nenhuma	Ônibus	20 Km	Não	Aprovado	Concluida	2021-01-18	801	2021-08-30 00:45:40.803379
427	matriculas	358	LIRIA MARILEI DE OLIVEIRA	2008-05-26	Feminino	844763375	43713949702	\N	(54)3291-3929	(54)3235-1150	\N	Ensino superior Incompleto	\N	Ensino superior Completo	Indígenas	Nenhuma	Moto	5 Km	Não	Aprovado	Concluida	2021-01-13	801	2021-08-30 00:45:40.803379
428	matriculas	373	LUANA MAGRIN	2008-06-16	Feminino	326243611	33934269041	\N	(54)9920-8653	(54)3291-2151	\N	Ensino superior Incompleto	\N	Ensino superior Incompleto	Brancos	Nenhuma	A pé	5 Km	Não	Aprovado	Pendente	2021-01-11	801	2021-08-30 00:45:40.803379
429	matriculas	432	MARLI ANDREOLA CASANOVA	2008-12-28	Feminino	753660687	77716884655	\N	(54)3291-2447	(54)3291-9133	\N	Ensino superior Completo	\N	Ensino superior Incompleto	Pardos	Nenhuma	Ônibus	30 Km	Não	Aprovado	Pendente	2021-01-10	801	2021-08-30 00:45:40.803379
430	matriculas	448	GIOVANNI POGGERE	2008-03-04	Masculino	605472267	51754978985	\N	(54)3291-3883	30342623	\N	Ensino superior Completo	\N	Ensino Técnico Completo	Pretos	Nenhuma	Moto	10 Km	Não	Pendente	Concluida	2021-01-26	801	2021-08-30 00:45:40.803379
431	matriculas	493	ANDRÉIA PINHEIROS	2008-12-30	Masculino	492950199	18712898050	\N	(54)9127-8073	(54)9983-4926	\N	Ensino fundamental Completo	\N	Ensino fundamental Incomplento	Brancos	Nenhuma	Ônibus	20 Km	Não	Pendente	Concluida	2021-01-18	801	2021-08-30 00:45:40.803379
432	matriculas	497	FERNANDA CIOATO	2008-12-27	Masculino	577742381	25784515070	\N	\N	(54)3291-2344	\N	Ensino superior Incompleto	\N	Ensino Técnico Completo	Pardos	Deficiência visual	Carro	1 Km	Sim	Aprovado	Concluida	2021-01-30	801	2021-08-30 00:45:40.803379
433	matriculas	511	TERSA BATISTA DA SILVA	2008-12-23	Feminino	864730606	65879834492	\N	(54)3291-2133	(54)9171-6949	\N	Ensino Técnico Incompleto	\N	Ensino superior Incompleto	Pardos	Nenhuma	Bicicleta	30 Km	Sim	Aprovado	Pendente	2021-01-13	801	2021-08-30 00:45:40.803379
434	matriculas	545	GABRIELE MOTA PEREIRA	2008-02-08	Feminino	471046547	21326706451	\N	(54)9603-7744	(54)3291-2002	\N	Ensino fundamental Completo	\N	Ensino Técnico Completo	Pardos	Nenhuma	A pé	20 Km	Não	Reprovou	Concluida	2021-01-20	801	2021-08-30 00:45:40.803379
435	matriculas	546	VIRGINIA MARIA MARQUES DOS SANTOS	2008-12-08	Feminino	299085547	73979247605	\N	(54)9141-9255	(54)9906-5274	\N	Ensino fundamental Incomplento	\N	Ensino Técnico Completo	Pretos	Nenhuma	Moto	30 Km	Sim	Pendente	Concluida	2021-01-10	802	2021-08-30 00:45:40.803379
436	matriculas	557	LEONARDO DE SOUZA	2008-06-18	Masculino	258853928	74587897161	\N	(54)9606-4308	(54)9178-2603	\N	Ensino médio Completo	\N	Ensino Técnico Incompleto	Amarelos	Nenhuma	Ônibus	30 Km	Não	Pendente	Pendente	2021-01-15	802	2021-08-30 00:45:40.803379
437	matriculas	580	VITOR QUISSINI MARTININGHI	2008-09-22	Masculino	521756520	83282339002	\N	(54)9148-9448	(54)9108-8069	\N	Ensino superior Completo	\N	Ensino Técnico Completo	Pardos	Nenhuma	Ônibus	5 Km	Não	Aprovado	Concluida	2021-02-04	802	2021-08-30 00:45:40.803379
438	matriculas	637	 SILVANE FRANCI DE PAULA SCAIN	2008-01-13	Feminino	545603898	15026651000	\N	(54)9215-2118	(54)3291-3933	\N	Ensino fundamental Completo	\N	Ensino superior Completo	Pretos	Nenhuma	Ônibus	20 Km	Não	Pendente	Concluida	2021-01-21	802	2021-08-30 00:45:40.803379
439	matriculas	646	 JONATHAN PELLIZZARI	2008-10-01	Masculino	823569394	68350944811	\N	(54)3291-3446	(54)9977-2699	\N	Ensino médio Completo	\N	Ensino fundamental Completo	Brancos	Nenhuma	Carro	10 Km	Sim	Aprovado	Pendente	2021-01-17	802	2021-08-30 00:45:40.803379
440	matriculas	664	 MARIA CRISTINA SCODRO MICHELON	2008-08-31	Feminino	434832255	11734843391	\N	(54)9206-5857	(54)3291-4039	\N	Ensino superior Completo	\N	Ensino superior Completo	Pardos	Nenhuma	Moto	5 Km	Não	Aprovado	Concluida	2021-01-23	802	2021-08-30 00:45:40.803379
441	matriculas	685	 BRUNO DE CASTILHOS FORTUNATTI	2008-03-06	Masculino	267698664	43997075501	\N	(54)9136-7949	(54)9903-0268	\N	Ensino médio Incomplento	\N	Ensino superior Incompleto	Pretos	Nenhuma	Ônibus	10 Km	Sim	Pendente	Concluida	2021-01-26	802	2021-08-30 00:45:40.803379
442	matriculas	692	 AMANDA UBATUBA FERREIRA	2008-05-22	Feminino	450460996	35326937042	\N	(54)9901-9284	(54)3291-1939	\N	Ensino Técnico Incompleto	\N	Ensino superior Incompleto	Amarelos	Nenhuma	A pé	15 Km	Não	Aprovado	Concluida	2021-01-14	802	2021-08-30 00:45:40.803379
443	matriculas	696	 ERICK CASANOVA QUADROS	2008-10-19	Masculino	351154699	14423513989	\N	(54)9963-0143	(54)9991-6502	\N	Ensino superior Incompleto	\N	Ensino superior Incompleto	Brancos	Nenhuma	Carro	20 Km	Não	Aprovado	Concluida	2021-01-21	802	2021-08-30 00:45:40.803379
444	matriculas	706	CLARA BEATRIZ MAR LEMOS	2008-07-20	Feminino	533329470	38425124025	\N	(54)3291-1756	(54)9645-8990	\N	Ensino superior Incompleto	\N	Ensino fundamental Incomplento	Indígenas	Nenhuma	Ônibus	10 Km	Não	Aprovado	Pendente	2021-02-04	802	2021-08-30 00:45:40.803379
445	matriculas	709	FATIMA INES BORTOLON	2008-10-08	Feminino	163427011	26321754373	\N	(54)9699-2843	(54)3291-4970	\N	Ensino médio Incomplento	\N	Ensino fundamental Incomplento	Pardos	Nenhuma	A pé	50 Km	Sim	Aprovado	Concluida	2021-01-29	802	2021-08-30 00:45:40.803379
446	matriculas	723	NYCOLAS ZANELA BIANCHI	2008-12-24	Masculino	954835324	55245545187	\N	(54)9978-5687	3291-3125	\N	Ensino Técnico Incompleto	\N	Ensino Técnico Completo	Brancos	Nenhuma	Carro	20 Km	Não	Aprovado	Concluida	2021-01-20	802	2021-08-30 00:45:40.803379
447	matriculas	734	BERNARDO ALEXANDRE P. DOS SANTOS	2008-10-08	Masculino	440248264	11748957065	\N	(54)3291-1116	(54)3291-1939	\N	Ensino superior Completo	\N	Ensino Técnico Incompleto	Brancos	Nenhuma	Ônibus	30 Km	Não	Aprovado	Concluida	2021-01-27	802	2021-08-30 00:45:40.803379
448	matriculas	754	GUSTAVO GALVAM	2008-06-02	Masculino	425543913	50928862555	\N	(54)3267-8035	(54)9939-7752	\N	Ensino Técnico Incompleto	\N	Ensino médio Completo	Brancos	Nenhuma	Carro	30 Km	Não	Aprovado	Pendente	2021-01-21	802	2021-08-30 00:45:40.803379
449	matriculas	756	MARINA CICHIN CARARO	2008-11-06	Feminino	456815902	24005322673	\N	(54)8432-5367	(54)9159-5658	\N	Ensino fundamental Completo	\N	Ensino fundamental Incomplento	Indígenas	Nenhuma	Carro	30 Km	Sim	Reprovou	Concluida	2021-01-24	802	2021-08-30 00:45:40.803379
450	matriculas	783	JONATHAN DE LIMA GOMES	2008-11-19	Masculino	529916746	19712316491	\N	(54)9980-8528	(54)9172-6795	\N	Ensino fundamental Incomplento	\N	Ensino médio Completo	Pardos	Nenhuma	Ônibus	30 Km	Não	Reprovou	Concluida	2021-01-14	802	2021-08-30 00:45:40.803379
451	matriculas	800	VITÓRIA APARECIDA SOGARI	2008-10-18	Feminino	131890372	54681479892	\N	(54)9704-1687	(54)9715-3522	\N	Ensino superior Completo	\N	Ensino fundamental Incomplento	Pardos	Nenhuma	Carro	5 Km	Sim	Aprovado	Concluida	2021-01-24	802	2021-08-30 00:45:40.803379
452	matriculas	804	MARIA ISABEL MOTA DA SILVA	2008-09-06	Feminino	262031596	15476572201	\N	(54)3291-3234	(54)3291-6334	\N	Ensino superior Completo	\N	Ensino Técnico Completo	Brancos	Nenhuma	Carro	15 Km	Não	Aprovado	Pendente	2021-01-15	802	2021-08-30 00:45:40.803379
453	matriculas	805	RAFAEL GUERRA DA ROSA	2008-03-16	Masculino	520659034	80492442080	\N	(54)3291-5272	(54)3280-1016	\N	Ensino superior Incompleto	\N	Ensino Técnico Incompleto	Brancos	Nenhuma	A pé	1 Km	Não	Aprovado	Concluida	2021-01-15	802	2021-08-30 00:45:40.803379
454	matriculas	816	TALISON DALBERTO DO AMARANTE	2008-04-22	Masculino	456069194	49126930635	\N	(54)9689-9395	(54)9685-0247	\N	Ensino superior Incompleto	\N	Ensino fundamental Incomplento	Pardos	Deficiência auditiva	Moto	15 Km	Não	Aprovado	Concluida	2021-01-26	802	2021-08-30 00:45:40.803379
455	matriculas	830	JULIANA BRASIL	2008-09-08	Feminino	938551383	78402431703	\N	(54)9644-9117	(54)9925-7912	\N	Ensino médio Completo	\N	Ensino fundamental Completo	Pretos	Nenhuma	Carro	10 Km	Não	Aprovado	Pendente	2021-01-13	802	2021-08-30 00:45:40.803379
456	matriculas	840	SUELIN PELLIZZARI	2008-11-26	Feminino	427331164	93512503529	\N	(54)9124-3297	(54)9645-2711	\N	Ensino Técnico Completo	\N	Ensino superior Completo	Pardos	Nenhuma	Carro	10 Km	Sim	Aprovado	Concluida	2021-01-16	802	2021-08-30 00:45:40.803379
457	matriculas	842	EDUARDA CASTILHOS	2008-04-07	Feminino	571585155	81310949073	\N	(54)9215-0650	(54)3291-2874	\N	Ensino fundamental Completo	\N	Ensino fundamental Completo	Pardos	Deficiência visual	Carro	1 Km	Não	Aprovado	Concluida	2021-01-24	802	2021-08-30 00:45:40.803379
458	matriculas	853	ADRIELI NUNES	2008-11-30	Feminino	790552033	73517068488	\N	(11)1111-1111	(54)9108-5691	\N	Ensino superior Incompleto	\N	Ensino Técnico Completo	Pardos	Nenhuma	Ônibus	1 Km	Sim	Aprovado	Concluida	2021-01-27	802	2021-08-30 00:45:40.803379
459	matriculas	859	LOGAN R. DOS SANTOS	2008-10-07	Masculino	261440063	12806895616	\N	(54)9122-8019	(54)9961-3621	\N	Ensino Técnico Completo	\N	Ensino médio Completo	Brancos	Nenhuma	Carro	1 Km	Não	Pendente	Concluida	2021-02-03	802	2021-08-30 00:45:40.803379
460	matriculas	873	ANA CLAUDIA SORANZO	2008-10-05	Feminino	527894039	98810928438	\N	(54)9164-2653	(54)3291-2670	\N	Ensino Técnico Completo	\N	Ensino Técnico Incompleto	Pardos	Nenhuma	Carro	1 Km	Sim	Reprovou	Pendente	2021-01-29	802	2021-08-30 00:45:40.803379
461	matriculas	875	VERGILIO TOME	2008-03-06	Masculino	775142032	37865504892	\N	(54)9109-1841	32911360	\N	Ensino superior Completo	\N	Ensino médio Completo	Pretos	Deficiência auditiva	Carro	15 Km	Não	Aprovado	Pendente	2021-01-22	802	2021-08-30 00:45:40.803379
462	matriculas	878	SIRLEI CECHIN	2008-12-21	Feminino	425978664	93297786770	\N	(54)3291-1854	(54)3291-2614	\N	Ensino superior Completo	\N	Ensino superior Incompleto	Brancos	Nenhuma	A pé	5 Km	Não	Aprovado	Concluida	2021-01-30	802	2021-08-30 00:45:40.803379
463	matriculas	915	JONATAN GIACOMELLI PAGNO	2008-01-12	Masculino	645486632	96169906977	\N	(54)9120-2190	32913382	\N	Ensino superior Incompleto	\N	Ensino superior Incompleto	Pardos	Deficiência auditiva	Ônibus	20 Km	Não	Pendente	Concluida	2021-02-05	802	2021-08-30 00:45:40.803379
464	matriculas	923	FRANCIELE DA ROSA DOS SANTOS	2008-10-27	Feminino	975924181	41280690824	\N	(54)9904-2624	(54)3291-7996	\N	Ensino Técnico Completo	\N	Ensino superior Completo	Amarelos	Nenhuma	Ônibus	30 Km	Não	Aprovado	Concluida	2021-01-15	802	2021-08-30 00:45:40.803379
465	matriculas	931	LETICIA POLIDORO SUSIN	2008-06-13	Feminino	460194499	77879209162	\N	(54)9919-1034	(54)3291-2135	\N	Ensino Técnico Incompleto	\N	Ensino fundamental Completo	Indígenas	Nenhuma	Carro	15 Km	Não	Aprovado	Concluida	2021-01-27	802	2021-08-30 00:45:40.803379
466	matriculas	993	TIAGO SPIGOLON	2008-12-01	Masculino	299414043	93203670200	\N	(54)3291-4145	(54)9940-2531	\N	Ensino fundamental Completo	\N	Ensino fundamental Completo	Brancos	Nenhuma	Ônibus	10 Km	Não	Aprovado	Pendente	2021-01-28	802	2021-08-30 00:45:40.803379
467	matriculas	996	ALINE ARGENTA	2008-11-12	Feminino	827328008	76487500462	\N	\N	(54)9983-5200	\N	Ensino superior Incompleto	\N	Ensino Técnico Completo	Pardos	Nenhuma	A pé	5 Km	Não	Aprovado	Pendente	2021-01-16	802	2021-08-30 00:45:40.803379
468	matriculas	14	MADALENA FATIMA LIMA NAZARIO	2007-04-30	Feminino	376314356	36412271835	\N	32912205	(54)9619-9161	\N	Ensino médio Completo	\N	Ensino superior Completo	Amarelos	Nenhuma	Carro	5 Km	Não	Aprovado	Concluida	2021-02-05	901	2021-08-30 00:45:40.803379
469	matriculas	16	ROSMARI LEONCIO	2007-10-29	Feminino	217154534	25237422895	\N	\N	(54)3817-1807	\N	Ensino fundamental Completo	\N	Ensino fundamental Incomplento	Brancos	Nenhuma	Ônibus	5 Km	Não	Aprovado	Concluida	2021-02-02	901	2021-08-30 00:45:40.803379
470	matriculas	19	FLAVIA CAPELETTI	2007-12-05	Feminino	427941109	25360704737	\N	91549871	(54)9913-2794	\N	Ensino médio Incomplento	\N	Ensino fundamental Incomplento	Pretos	Nenhuma	Carro	10 Km	Não	Aprovado	Concluida	2021-01-11	901	2021-08-30 00:45:40.803379
471	matriculas	26	JUNIOR NOVELLO	2007-08-12	Masculino	392093707	68165546232	\N	(54)9938-3016	(54)9694-7124	\N	Ensino médio Completo	\N	Ensino superior Completo	Brancos	Nenhuma	Ônibus	50 Km	Não	Pendente	Concluida	2021-02-04	901	2021-08-30 00:45:40.803379
472	matriculas	46	FABRÍCIO LUIZ CAVALI	2007-11-26	Masculino	886887891	70308199468	\N	(54)9163-4604	3291-5361	\N	Ensino médio Completo	\N	Ensino superior Incompleto	Pardos	Nenhuma	Ônibus	20 Km	Não	Aprovado	Concluida	2021-01-25	901	2021-08-30 00:45:40.803379
473	matriculas	48	VALDOIR DOS SANTOS NAZARIO	2007-08-20	Masculino	900860175	36266625031	\N	(54)3291-4293	3291-1239	\N	Ensino fundamental Incomplento	\N	Ensino fundamental Incomplento	Brancos	Nenhuma	Moto	10 Km	Não	Pendente	Concluida	2021-01-10	901	2021-08-30 00:45:40.803379
474	matriculas	56	LUCAS DEON SORANZO	2007-05-12	Masculino	617884926	87751967464	\N	(54)3291-2109	(54)9134-0467	\N	Ensino médio Completo	\N	Ensino Técnico Incompleto	Amarelos	Nenhuma	A pé	5 Km	Não	Aprovado	Concluida	2021-01-19	901	2021-08-30 00:45:40.803379
475	matriculas	79	IRACEMA LORITA BUSIN BERNARDI	2007-05-15	Feminino	933958734	76539394787	\N	(54)9133-5585	1213165465	\N	Ensino médio Completo	\N	Ensino superior Incompleto	Brancos	Nenhuma	Ônibus	1 Km	Não	Aprovado	Concluida	2021-01-18	901	2021-08-30 00:45:40.803379
476	matriculas	82	MARIO LUIZ STEDILE	2007-02-05	Masculino	756500223	86435003026	\N	(54)3291-2298	(54)3291-3059	\N	Ensino Técnico Incompleto	\N	Ensino superior Incompleto	Brancos	Nenhuma	Carro	15 Km	Não	Reprovou	Pendente	2021-02-06	901	2021-08-30 00:45:40.803379
477	matriculas	90	ANA DAGMAR MACHADO	2007-12-04	Feminino	992774314	84745891362	\N	(54)9119-1206	32914426	\N	Ensino médio Incomplento	\N	Ensino superior Completo	Pardos	Nenhuma	Moto	5 Km	Não	Reprovou	Concluida	2021-02-06	901	2021-08-30 00:45:40.803379
478	matriculas	101	MAURÍCIO VIGANÓ MARCON	2007-07-06	Masculino	792634233	43672268875	\N	(54)9187-2663	(54)9998-3340	\N	Ensino médio Completo	\N	Ensino superior Completo	Pardos	Nenhuma	Carro	5 Km	Não	Aprovado	Concluida	2021-02-02	901	2021-08-30 00:45:40.803379
479	matriculas	156	GABRIELLY NAVARINI	2007-01-12	Feminino	694129199	41333280679	\N	(54)9952-9474	(54)3291-7525	\N	Ensino Técnico Incompleto	\N	Ensino superior Incompleto	Brancos	Nenhuma	Ônibus	5 Km	Não	Aprovado	Concluida	2021-01-13	901	2021-08-30 00:45:40.803379
480	matriculas	165	KETLEN PADILHA BOGO	2007-03-14	Feminino	945942360	68154502015	\N	(54)3291-4609	3291-3161	\N	Ensino superior Incompleto	\N	Ensino superior Incompleto	Brancos	Deficiência visual	Ônibus	15 Km	Não	Aprovado	Concluida	2021-02-04	901	2021-08-30 00:45:40.803379
481	matriculas	195	LUCIANO AMPESSAN GENEROSO	2007-11-21	Masculino	122692178	77094397854	\N	(54)9933-7582	32911790	\N	Ensino fundamental Incomplento	\N	Ensino superior Completo	Pardos	Deficiência auditiva	A pé	15 Km	Não	Aprovado	Concluida	2021-02-03	901	2021-08-30 00:45:40.803379
482	matriculas	216	ALEX SANDRO ALMEIDA BERTELLI	2007-02-08	Masculino	285887566	31435192433	\N	(54)9699-2843	32912729	\N	Ensino fundamental Completo	\N	Ensino superior Incompleto	Indígenas	Nenhuma	A pé	1 Km	Não	Aprovado	Pendente	2021-02-03	901	2021-08-30 00:45:40.803379
483	matriculas	233	RAFAEL AUGUSTO BOLZAN	2007-07-20	Masculino	540010510	32194416343	\N	(54)9950-6026	(54)8138-1996	\N	Ensino médio Completo	\N	Ensino superior Completo	Brancos	Nenhuma	Ônibus	30 Km	Sim	Aprovado	Pendente	2021-01-14	901	2021-08-30 00:45:40.803379
484	matriculas	251	ELENISA DUTRA DEMORI	2007-06-20	Feminino	247191793	31161645706	\N	(54)9200-0643	(54)3291-4551	\N	Ensino superior Incompleto	\N	Ensino superior Incompleto	Pretos	Nenhuma	Ônibus	15 Km	Não	Aprovado	Pendente	2021-01-20	901	2021-08-30 00:45:40.803379
485	matriculas	257	FELIPE FIAMINGHI	2007-08-17	Masculino	942750753	35115479070	\N	(54)9253-2184	(54)9636-2620	\N	Ensino fundamental Completo	\N	Ensino fundamental Incomplento	Brancos	Deficiência auditiva	Ônibus	20 Km	Não	Reprovou	Pendente	2021-01-25	901	2021-08-30 00:45:40.803379
486	matriculas	265	JOANA HELENA LUZ	2007-03-21	Feminino	665243178	32938084567	\N	(54)9133-4599	(54)9663-6281	\N	Ensino fundamental Completo	\N	Ensino fundamental Completo	Brancos	Deficiência mental	Carro	10 Km	Não	Reprovou	Concluida	2021-01-12	901	2021-08-30 00:45:40.803379
487	matriculas	324	GABRIELLY ALMEIDA VEDANA	2007-07-08	Feminino	450213208	46765883010	\N	(  )    -	(54)3291-9140	\N	Ensino superior Incompleto	\N	Ensino Técnico Incompleto	Pardos	Nenhuma	Ônibus	50 Km	Não	Aprovado	Concluida	2021-01-25	901	2021-08-30 00:45:40.803379
488	matriculas	344	DOUGLAS TOLEDO DANDOLINI	2007-12-12	Masculino	533058409	98959514110	\N	32912884	(54)9919-2656	\N	Ensino fundamental Completo	\N	Ensino médio Incomplento	Brancos	Nenhuma	Ônibus	10 Km	Não	Aprovado	Pendente	2021-01-20	901	2021-08-30 00:45:40.803379
489	matriculas	361	JONATAN FIAMINGHI	2007-11-22	Masculino	635197549	41686013289	\N	(54)9187-0266	(54)9642-8685	\N	Ensino superior Completo	\N	Ensino fundamental Incomplento	Brancos	Nenhuma	A pé	1 Km	Não	Aprovado	Pendente	2021-01-28	901	2021-08-30 00:45:40.803379
490	matriculas	407	LEOMAR DA SILVA RODRIGUES	2007-05-18	Masculino	403702457	62119629969	\N	(54)3291-9007	(54)9663-3512	\N	Ensino fundamental Incomplento	\N	Ensino superior Completo	Pretos	Nenhuma	Moto	5 Km	Não	Pendente	Concluida	2021-01-30	901	2021-08-30 00:45:40.803379
491	matriculas	414	ARTUR NOVELO	2007-07-10	Masculino	420942222	28982702966	\N	(54)3034-0309	(54)9167-9108	\N	Ensino médio Incomplento	\N	Ensino médio Completo	Amarelos	Nenhuma	Carro	10 Km	Não	Pendente	Pendente	2021-02-08	901	2021-08-30 00:45:40.803379
492	matriculas	435	HENRIQUE CASTILHOS DA SILVA	2007-02-28	Masculino	137783857	52852324183	\N	(54)9992-9158	(54)9608-8577	\N	Ensino Técnico Completo	\N	Ensino médio Incomplento	Pardos	Deficiência auditiva	Carro	1 Km	Sim	Aprovado	Concluida	2021-01-27	901	2021-08-30 00:45:40.803379
493	matriculas	450	VITORIA RODRIGUES BAHU	2007-09-11	Feminino	964771796	15302753876	\N	(54)3291-4412	(54)3291-3550	\N	Ensino médio Incomplento	\N	Ensino fundamental Completo	Brancos	Nenhuma	A pé	5 Km	Não	Aprovado	Pendente	2021-02-05	901	2021-08-30 00:45:40.803379
494	matriculas	470	MIRIÃ HOFFMANN ZORZIN	2007-08-29	Feminino	469737373	63977302243	\N	(11)1111-1111	96214415	\N	Ensino fundamental Completo	\N	Ensino superior Incompleto	Brancos	Nenhuma	Ônibus	5 Km	Não	Reprovou	Concluida	2021-01-11	901	2021-08-30 00:45:40.803379
495	matriculas	471	ALEX DALPONTE	2007-03-04	Masculino	835164161	91874172280	\N	(54)3291-3772	32914062	\N	Ensino fundamental Completo	\N	Ensino médio Incomplento	Pardos	Nenhuma	Moto	5 Km	Não	Aprovado	Concluida	2021-02-01	901	2021-08-30 00:45:40.803379
496	matriculas	480	DANIELA GIRARDELLO	2007-04-14	Feminino	417575802	25996786093	\N	(11)1111-1111	(54)3291-9003	\N	Ensino médio Completo	\N	Ensino médio Completo	Pardos	Nenhuma	A pé	20 Km	Sim	Reprovou	Pendente	2021-02-05	901	2021-08-30 00:45:40.803379
497	matriculas	488	UILIAN PEREIRA	2007-04-26	Masculino	689686079	79726274071	\N	(54)9961-1628	(54)9614-7323	\N	Ensino superior Completo	\N	Ensino fundamental Incomplento	Pardos	Nenhuma	Moto	15 Km	Não	Aprovado	Concluida	2021-02-02	902	2021-08-30 00:45:40.803379
498	matriculas	538	FERNANDA GRISON DA SILVA	2007-03-03	Masculino	490373695	42778217427	\N	(54)9120-8790	(54)9984-6427	\N	Ensino Técnico Completo	\N	Ensino médio Completo	Pretos	Nenhuma	Carro	50 Km	Sim	Aprovado	Pendente	2021-01-19	902	2021-08-30 00:45:40.803379
499	matriculas	575	JOICE MACIEL DE OLIVEIRA DOS PASSOS	2007-09-20	Feminino	721067614	25191821218	\N	(54)9148-5184	(54)3291-3358	\N	Ensino médio Completo	\N	Ensino fundamental Completo	Pardos	Nenhuma	A pé	10 Km	Não	Aprovado	Concluida	2021-02-07	902	2021-08-30 00:45:40.803379
500	matriculas	586	SILVANE IMUZOLI DA ROSA DE GOIS GIRARDELL	2007-07-10	Feminino	799891775	85988272934	\N	(54)9956-6853	(54)9907-7237	\N	Ensino superior Incompleto	\N	Ensino Técnico Completo	Brancos	Nenhuma	A pé	30 Km	Sim	Aprovado	Concluida	2021-01-13	902	2021-08-30 00:45:40.803379
501	matriculas	604	SABRINA GRISON DOS REIS	2007-05-01	Feminino	339634072	45854700287	\N	(11)9544-3210	(54)9622-3839	\N	Ensino fundamental Completo	\N	Ensino superior Completo	Amarelos	Nenhuma	Ônibus	15 Km	Não	Aprovado	Pendente	2021-01-23	902	2021-08-30 00:45:40.803379
502	matriculas	625	 ODETE RIZZON BUGANÇA	2007-11-15	Feminino	126195351	43098721760	\N	(54)9224-5150	(54)3291-3730	\N	Ensino Técnico Incompleto	\N	Ensino médio Completo	Indígenas	Nenhuma	A pé	30 Km	Não	Aprovado	Concluida	2021-01-26	902	2021-08-30 00:45:40.803379
503	matriculas	636	 VINICIUS ZANELLA GIACOMELLI	2007-09-09	Masculino	535085413	76378163187	\N	(54)8132-8003	(54)3291-2741	\N	Ensino Técnico Incompleto	\N	Ensino fundamental Incomplento	Brancos	Nenhuma	Carro	10 Km	Não	Aprovado	Concluida	2021-02-01	902	2021-08-30 00:45:40.803379
504	matriculas	645	 ARTHUR SIQUEIRA REZER	2007-07-10	Masculino	538323622	26954123339	\N	(54)9971-9989	(54)9919-6802	\N	Ensino superior Incompleto	\N	Ensino Técnico Incompleto	Pardos	Nenhuma	Moto	15 Km	Não	Aprovado	Concluida	2021-02-03	902	2021-08-30 00:45:40.803379
505	matriculas	674	 MICHAEL MAIKY DAROS	2007-04-01	Masculino	151456840	99595814577	\N	(54)9119-1379	(54)9143-2015	\N	Ensino Técnico Incompleto	\N	Ensino médio Incomplento	Indígenas	Nenhuma	Carro	5 Km	Não	Pendente	Pendente	2021-01-23	902	2021-08-30 00:45:40.803379
506	matriculas	702	 JOÃO VITOR DOS SANTOS VARGAS	2007-12-19	Masculino	380082253	64549985444	\N	(54)9965-1264	(54)3291-2668	\N	Ensino superior Completo	\N	Ensino médio Completo	Brancos	Deficiência motora	A pé	1 Km	Não	Aprovado	Concluida	2021-01-25	902	2021-08-30 00:45:40.803379
507	matriculas	738	LUCAS CAINÃ PRESTES GARCIA	2007-11-20	Masculino	291575674	80720730520	\N	(54)9951-5098	(54)9159-5658	\N	Ensino Técnico Completo	\N	Ensino superior Completo	Pardos	Nenhuma	Carro	15 Km	Sim	Aprovado	Pendente	2021-01-12	902	2021-08-30 00:45:40.803379
508	matriculas	767	ELIANE MICHELON BORGHETTI	2007-05-26	Feminino	733412924	33104706637	\N	(54)9956-7261	(54)3235-1076	\N	Ensino superior Completo	\N	Ensino Técnico Completo	Pardos	Nenhuma	Ônibus	20 Km	Não	Aprovado	Concluida	2021-01-25	902	2021-08-30 00:45:40.803379
509	matriculas	771	JULIANA ZUANAS	2007-06-07	Feminino	763292525	17739027083	\N	(54)9928-0226	(54)3291-1962	\N	Ensino médio Incomplento	\N	Ensino Técnico Completo	Pardos	Deficiência mental	A pé	20 Km	Não	Aprovado	Concluida	2021-01-18	902	2021-08-30 00:45:40.803379
510	matriculas	776	JAMILE FONGARO	2007-04-23	Feminino	516215332	27920211509	\N	(54)9144-9202	(54)3280-1027	\N	Ensino Técnico Incompleto	\N	Ensino médio Incomplento	Brancos	Deficiência visual	Carro	5 Km	Não	Aprovado	Concluida	2021-01-15	902	2021-08-30 00:45:40.803379
511	matriculas	778	RAFAEL DIDONÉ	2007-08-25	Masculino	560733203	60445007091	\N	(54)9977-3199	(54)3280-1034	\N	Ensino médio Incomplento	\N	Ensino médio Completo	Indígenas	Nenhuma	A pé	20 Km	Não	Aprovado	Concluida	2021-01-17	902	2021-08-30 00:45:40.803379
512	matriculas	782	YANN MARCELO OLIVEIRA	2007-06-25	Masculino	119829346	16285870753	\N	(11)1111-1111	(54)3291-3556	\N	Ensino fundamental Completo	\N	Ensino superior Completo	Indígenas	Nenhuma	A pé	15 Km	Não	Aprovado	Pendente	2021-01-17	902	2021-08-30 00:45:40.817298
513	matriculas	787	JULIO BRANCO DA SILVA	2007-11-08	Masculino	700304637	56370622204	\N	(54)3291-1744	(54)9931-7450	\N	Ensino Técnico Completo	\N	Ensino fundamental Completo	Brancos	Nenhuma	A pé	20 Km	Não	Aprovado	Concluida	2021-01-19	902	2021-08-30 00:45:40.817298
514	matriculas	811	LAURA GARBIN POLIDORO	2007-12-06	Feminino	829348908	56882346317	\N	(54)3291-4411	(11)1111-1111	\N	Ensino superior Completo	\N	Ensino superior Incompleto	Pardos	Nenhuma	Ônibus	15 Km	Não	Pendente	Pendente	2021-01-26	902	2021-08-30 00:45:40.817298
515	matriculas	826	MARIA EDUARDA RIZZON	2007-08-03	Feminino	957196076	70905406383	\N	(54)9646-1871	(54)3291-3552	\N	Ensino fundamental Incomplento	\N	Ensino Técnico Incompleto	Indígenas	Nenhuma	Carro	15 Km	Não	Aprovado	Concluida	2021-01-15	902	2021-08-30 00:45:40.817298
516	matriculas	846	LARA EMELINDA ZAN	2007-05-18	Feminino	713938812	46145036580	\N	(54)9615-8374	(54)9106-7634	\N	Ensino médio Completo	\N	Ensino médio Completo	Pardos	Nenhuma	Ônibus	15 Km	Não	Reprovou	Pendente	2021-02-03	902	2021-08-30 00:45:40.817298
517	matriculas	890	CARLOS EDUARDO RODRIGUES	2007-02-04	Masculino	717621482	70629608188	\N	(54)9146-1960	(54)9132-5402	\N	Ensino Técnico Completo	\N	Ensino médio Completo	Pardos	Nenhuma	Bicicleta	10 Km	Não	Aprovado	Concluida	2021-01-24	902	2021-08-30 00:45:40.817298
518	matriculas	904	ALISSON JÚNIOR BORBA	2007-04-14	Masculino	572959973	68232463150	\N	(54)3291-3734	(54)9915-6367	\N	Ensino Técnico Incompleto	\N	Ensino superior Completo	Brancos	Nenhuma	Carro	30 Km	Não	Aprovado	Concluida	2021-01-20	902	2021-08-30 00:45:40.817298
519	matriculas	908	MATEUS FABBRO	2007-12-03	Masculino	537625557	53935168485	\N	(54)9982-1582	(54)9650-6709	\N	Ensino superior Incompleto	\N	Ensino médio Incomplento	Amarelos	Nenhuma	A pé	5 Km	Não	Aprovado	Pendente	2021-02-01	902	2021-08-30 00:45:40.817298
520	matriculas	914	CARLOS EDUARDO CAMATTI	2007-09-30	Masculino	585855029	27390450240	\N	(54)9168-4445	(11)1111-1111	\N	Ensino Técnico Incompleto	\N	Ensino superior Completo	Pardos	Nenhuma	Carro	15 Km	Não	Pendente	Concluida	2021-01-10	902	2021-08-30 00:45:40.817298
521	matriculas	924	FABIO BORGES VIEIRA	2007-02-05	Masculino	846505642	33179400541	\N	(54)9964-0807	(54)0000-0000	\N	Ensino Técnico Completo	\N	Ensino fundamental Completo	Brancos	Nenhuma	A pé	10 Km	Sim	Pendente	Pendente	2021-01-29	902	2021-08-30 00:45:40.817298
522	matriculas	940	LUAN MARINO KOCHHANN	2007-01-22	Feminino	922082281	23884120093	\N	(54)9609-0284	(54)9657-7150	\N	Ensino Técnico Completo	\N	Ensino Técnico Incompleto	Indígenas	Deficiência visual	Carro	30 Km	Não	Aprovado	Concluida	2021-01-24	902	2021-08-30 00:45:40.817298
523	matriculas	954	MORGANA CAPELETTI BETT	2007-02-03	Feminino	560964504	15764023898	\N	(54)9103-8140	(54)9977-8364	\N	Ensino superior Incompleto	\N	Ensino médio Completo	Pardos	Nenhuma	A pé	15 Km	Sim	Aprovado	Concluida	2021-01-23	902	2021-08-30 00:45:40.817298
524	matriculas	955	LUCIANO SCARMIN	2007-09-24	Masculino	743257875	90914687097	\N	32913152	(54)9654-1115	\N	Ensino médio Incomplento	\N	Ensino fundamental Incomplento	Pardos	Nenhuma	Ônibus	10 Km	Não	Aprovado	Concluida	2021-01-11	902	2021-08-30 00:45:40.817298
525	matriculas	979	LUCAS ANDRE FONGARO	2007-05-22	Masculino	953030961	20386340002	\N	(54)3235-5030	(54)9927-3919	\N	Ensino Técnico Incompleto	\N	Ensino superior Incompleto	Pardos	Nenhuma	A pé	15 Km	Não	Aprovado	Pendente	2021-02-05	902	2021-08-30 00:45:40.817298
526	matriculas	991	FERNANDA BIONDO BIAZUS	2007-10-29	Feminino	355764124	64216909937	\N	(54)3291-3666	(54)9695-6070	\N	Ensino Técnico Incompleto	\N	Ensino Técnico Completo	Brancos	Nenhuma	Moto	1 Km	Não	Aprovado	Concluida	2021-02-07	902	2021-08-30 00:45:40.817298
527	matriculas	54	GILBERTO PELISSARI	2016-08-07	Masculino	897284578	90293535932	\N	(54)9602-2303	(54)3291-2946	\N	Ensino médio Incomplento	\N	Ensino fundamental Completo	Pardos	Nenhuma	A pé	20 Km	Não	Aprovado	Concluida	2021-01-21	Pr01	2021-08-30 00:45:40.817298
528	matriculas	74	VIVIANE LENISE MARTENINGHI MARTINS	2016-12-28	Feminino	941031939	99836761162	\N	(54)3034-0270	32142287	\N	Ensino médio Completo	\N	Ensino médio Completo	Brancos	Nenhuma	A pé	30 Km	Não	Reprovou	Concluida	2021-01-15	Pr01	2021-08-30 00:45:40.817298
529	matriculas	110	GABRIELA ROMANO	2016-12-31	Feminino	397026819	98474449123	\N	(54)9157-3336	(54)8135-8493	\N	Ensino fundamental Completo	\N	Ensino médio Completo	Brancos	Deficiência auditiva	Carro	5 Km	Sim	Aprovado	Concluida	2021-01-17	Pr01	2021-08-30 00:45:40.817298
530	matriculas	124	ROSELI CARARO DE OLIVEIRA	2016-12-23	Feminino	632647474	94780976228	\N	(54)3291-2399	32919172	\N	Ensino superior Completo	\N	Ensino Técnico Incompleto	Brancos	Nenhuma	A pé	10 Km	Não	Aprovado	Concluida	2021-01-15	Pr01	2021-08-30 00:45:40.817298
531	matriculas	127	LINDOMAR GONÇALVES DE JESUS	2016-08-18	Masculino	932556685	49984863435	\N	(54)9927-5718	3267-8246	\N	Ensino médio Incomplento	\N	Ensino superior Completo	Brancos	Nenhuma	Ônibus	15 Km	Não	Pendente	Concluida	2021-02-08	Pr01	2021-08-30 00:45:40.817298
532	matriculas	148	CAROLINE BRITO RODRIGUES	2016-05-24	Feminino	812670839	22076188680	\N	(54)9978-4303	(54)9902-9613	\N	Ensino fundamental Completo	\N	Ensino fundamental Incomplento	Pardos	Nenhuma	Ônibus	1 Km	Não	Aprovado	Concluida	2021-02-05	Pr01	2021-08-30 00:45:40.817298
533	matriculas	163	GABRIELA SILVA DA ROSA	2016-03-23	Feminino	446454498	77519421286	\N	(54)3291-7501	3291 44 30	\N	Ensino médio Incomplento	\N	Ensino fundamental Completo	Amarelos	Nenhuma	Ônibus	15 Km	Não	Pendente	Concluida	2021-01-28	Pr01	2021-08-30 00:45:40.817298
534	matriculas	180	LUCAS DE OLIVEIRA HERPICH	2016-09-15	Masculino	419123744	27000638822	\N	(54)9138-4436	(57)3235-5039	\N	Ensino superior Incompleto	\N	Ensino Técnico Incompleto	Brancos	Nenhuma	A pé	5 Km	Não	Pendente	Pendente	2021-01-16	Pr01	2021-08-30 00:45:40.817298
535	matriculas	183	RENATO FELIPE RECH	2016-05-03	Masculino	531051987	11224493010	\N	(54)3291-3844	(54)9197-9775	\N	Ensino médio Incomplento	\N	Ensino Técnico Incompleto	Brancos	Nenhuma	Carro	15 Km	Não	Aprovado	Concluida	2021-01-22	Pr01	2021-08-30 00:45:40.817298
536	matriculas	207	ALISON DA J. VARELA	2016-06-23	Masculino	834315992	74130871326	\N	(54)9197-9959	(54)9980-2117	\N	Ensino fundamental Incomplento	\N	Ensino superior Incompleto	Amarelos	Nenhuma	Ônibus	5 Km	Não	Reprovou	Concluida	2021-01-17	Pr01	2021-08-30 00:45:40.817298
537	matriculas	210	GUSTAVO CAMASSOLA	2016-08-29	Masculino	516916087	22671443864	\N	(54)9148-4141	(54)3291-2713	\N	Ensino fundamental Completo	\N	Ensino médio Completo	Pardos	Nenhuma	Ônibus	5 Km	Não	Aprovado	Pendente	2021-01-20	Pr01	2021-08-30 00:45:40.817298
538	matriculas	217	JULIANA MENEGUZZO	2016-08-25	Feminino	687587597	16912232425	\N	(54)9145-7409	91755236	\N	Ensino superior Incompleto	\N	Ensino fundamental Completo	Amarelos	Nenhuma	Carro	10 Km	Não	Aprovado	Pendente	2021-01-10	Pr01	2021-08-30 00:45:40.817298
539	matriculas	221	MILENE FÁTIMA VARELA	2016-10-18	Feminino	116625945	26819292858	\N	(11)9133-6475	(54)3291-4121	\N	Ensino Técnico Incompleto	\N	Ensino médio Incomplento	Brancos	Nenhuma	Ônibus	1 Km	Não	Pendente	Concluida	2021-01-20	Pr01	2021-08-30 00:45:40.817298
540	matriculas	243	EDUARDO PAIM	2016-12-23	Masculino	375172820	83016463133	\N	(54)9700-7212	(54)9148-9083	\N	Ensino médio Incomplento	\N	Ensino Técnico Incompleto	Pardos	Deficiência auditiva	Carro	20 Km	Não	Aprovado	Concluida	2021-01-20	Pr01	2021-08-30 00:45:40.817298
541	matriculas	281	EDVÂNIA OLIVEIRA	2016-07-24	Feminino	148139506	17188468865	\N	(54)9981-7382	(54)3291-4207	\N	Ensino superior Completo	\N	Ensino superior Incompleto	Brancos	Nenhuma	A pé	1 Km	Sim	Aprovado	Pendente	2021-02-01	Pr01	2021-08-30 00:45:40.817298
542	matriculas	285	JHENIFER SLONGO	2016-09-06	Feminino	711545810	46905009793	\N	(54)9915-1005	35042447	\N	Ensino médio Incomplento	\N	Ensino fundamental Incomplento	Pretos	Nenhuma	Ônibus	5 Km	Não	Aprovado	Concluida	2021-01-20	Pr01	2021-08-30 00:45:40.817298
543	matriculas	354	GABRIEL GOULART MONTANARI	2016-12-28	Masculino	879187604	80370664327	\N	(54)3291-3065	(54)3291-1613	\N	Ensino Técnico Completo	\N	Ensino Técnico Incompleto	Pardos	Nenhuma	Ônibus	1 Km	Não	Pendente	Pendente	2021-01-12	Pr02	2021-08-30 00:45:40.817298
544	matriculas	362	MORGANA FIAMINGHI	2016-09-05	Feminino	421430425	56682895002	\N	(54)9171-4875	(54)8412-9664	\N	Ensino superior Incompleto	\N	Ensino fundamental Completo	Pretos	Nenhuma	Carro	20 Km	Sim	Aprovado	Pendente	2021-02-02	Pr03	2021-08-30 00:45:40.817298
545	matriculas	380	WILIAN LIPOSKI PEROZZO	2016-09-01	Masculino	743038351	86562176827	\N	(54)3291-5008	(54)9904-0784	\N	Ensino superior Completo	\N	Ensino fundamental Incomplento	Brancos	Nenhuma	Bicicleta	20 Km	Não	Aprovado	Concluida	2021-02-05	Pr03	2021-08-30 00:45:40.817298
546	matriculas	386	KATIELE ZAMPIERI	2016-02-29	Feminino	245547056	47123417236	\N	(54)9192-4460	(54)8418-8289	\N	Ensino fundamental Incomplento	\N	Ensino Técnico Completo	Brancos	Nenhuma	Carro	1 Km	Sim	Aprovado	Concluida	2021-01-24	Pr03	2021-08-30 00:45:40.817298
547	matriculas	421	AUGUSTO ZUANAZZI AUMOND	2016-08-20	Masculino	130372752	12049398964	\N	(54)9607-4223	30340109	\N	Ensino superior Incompleto	\N	Ensino fundamental Completo	Pardos	Nenhuma	Carro	15 Km	Não	Pendente	Concluida	2021-01-23	Pr03	2021-08-30 00:45:40.817298
548	matriculas	427	GUILHERME ESPELOCIN	2016-05-22	Masculino	435493785	93445630302	\N	(54)9977-0840	32915355	\N	Ensino médio Completo	\N	Ensino superior Completo	Pardos	Nenhuma	A pé	30 Km	Não	Aprovado	Pendente	2021-01-13	Pr03	2021-08-30 00:45:40.817298
549	matriculas	440	GUSTAVO ASCARI STEDILE	2016-05-28	Masculino	331141946	82311474371	\N	(54)9967-2026	(54)9953-3185	\N	Ensino médio Incomplento	\N	Ensino fundamental Incomplento	Brancos	Deficiência motora	A pé	30 Km	Não	Aprovado	Concluida	2021-02-03	Pr03	2021-08-30 00:45:40.817298
550	matriculas	446	BERNARDO SANDRI	2016-08-08	Masculino	973404704	86067083193	\N	(54)9655-1909	*	\N	Ensino Técnico Completo	\N	Ensino Técnico Completo	Pretos	Nenhuma	A pé	30 Km	Não	Pendente	Concluida	2021-01-11	Pr03	2021-08-30 00:45:40.817298
551	matriculas	460	CAROLINA DE OLIVEIRA	2016-08-03	Feminino	412917105	66113849200	\N	(54)9256-5944	(54)9627-9134	\N	Ensino superior Completo	\N	Ensino superior Incompleto	Amarelos	Nenhuma	Carro	30 Km	Não	Aprovado	Pendente	2021-01-20	Pr03	2021-08-30 00:45:40.817298
552	matriculas	475	FELIPE DE MORAES	2016-04-27	Masculino	586190883	55110056381	\N	(54)9973-5233	32912259	\N	Ensino fundamental Incomplento	\N	Ensino Técnico Incompleto	Brancos	Nenhuma	A pé	5 Km	Não	Pendente	Concluida	2021-01-21	Pr03	2021-08-30 00:45:40.817298
553	matriculas	487	ALEXANDRA BALARDIN ZAFFONATO	2016-02-27	Masculino	777383655	32782874424	\N	(54)9615-8038	(54)9605-1321	\N	Ensino fundamental Incomplento	\N	Ensino superior Completo	Pardos	Nenhuma	A pé	1 Km	Não	Aprovado	Concluida	2021-01-27	Pr03	2021-08-30 00:45:40.817298
554	matriculas	496	MARIA EDUARDA MOLLMANN DE ALMEIDA	2016-10-14	Feminino	497059002	72393910487	\N	\N	(54)3291-1161	\N	Ensino Técnico Incompleto	\N	Ensino médio Completo	Brancos	Deficiência auditiva	Ônibus	5 Km	Não	Pendente	Concluida	2021-02-06	Pr03	2021-08-30 00:45:40.817298
555	matriculas	520	JULIA MACHADO SCARABELOT	2016-09-07	Feminino	518620415	55171747335	\N	(54)9135-1027	91282425	\N	Ensino médio Completo	\N	Ensino superior Completo	Pardos	Deficiência visual	A pé	5 Km	Não	Aprovado	Concluida	2021-01-26	Pr03	2021-08-30 00:45:40.817298
556	matriculas	549	MARCELO AUGUSTO DOS SANTOS	2016-12-27	Masculino	276382009	45594937477	\N	(54)9674-4612	(54)3291-2267	\N	Ensino superior Incompleto	\N	Ensino médio Completo	Brancos	Nenhuma	A pé	20 Km	Sim	Aprovado	Pendente	2021-02-06	Pr03	2021-08-30 00:45:40.817298
557	matriculas	579	ROSALVO MARIA BONI	2016-01-05	Masculino	981971151	83602911570	\N	(54)9951-1651	(54)9139-4104	\N	Ensino médio Completo	\N	Ensino médio Incomplento	Pardos	Nenhuma	A pé	1 Km	Não	Aprovado	Concluida	2021-01-18	Pr03	2021-08-30 00:45:40.817298
558	matriculas	600	CAMILA APARECIDA GOZZI	2016-10-12	Feminino	785838653	33490361351	\N	(54)9668-1743	(54)9217-4853	\N	Ensino médio Incomplento	\N	Ensino médio Incomplento	Brancos	Nenhuma	A pé	10 Km	Não	Aprovado	Pendente	2021-01-13	Pr03	2021-08-30 00:45:40.817298
559	matriculas	615	JULIANA PENCA	2016-03-02	Feminino	487851952	53172185511	\N	(54)3291-4153	(54)9975-5082	\N	Ensino fundamental Completo	\N	Ensino médio Incomplento	Amarelos	Nenhuma	Carro	30 Km	Não	Aprovado	Concluida	2021-02-05	Pr03	2021-08-30 00:45:40.817298
560	matriculas	623	 RODRIGO BRESOLIN	2016-04-11	Masculino	542645950	87930945184	\N	(54)9951-9231	(54)3291-5297	\N	Ensino superior Completo	\N	Ensino médio Completo	Brancos	Nenhuma	A pé	15 Km	Não	Pendente	Concluida	2021-01-18	Pr03	2021-08-30 00:45:40.817298
561	matriculas	627	 LUIS EDUARDO CAVALLI	2016-01-10	Masculino	631308487	99212081128	\N	(54)9931-9078	(54)3291-3557	\N	Ensino médio Incomplento	\N	Ensino superior Incompleto	Amarelos	Nenhuma	Ônibus	1 Km	Não	Reprovou	Concluida	2021-02-04	Pr03	2021-08-30 00:45:40.817298
562	matriculas	703	 JOSÉ ARMANDO PRACE DE SOUZA	2016-02-03	Masculino	109648189	70882710445	\N	\N	(54)3280-1136	\N	Ensino médio Incomplento	\N	Ensino médio Completo	Pardos	Nenhuma	Ônibus	10 Km	Não	Reprovou	Concluida	2021-01-11	Pr03	2021-08-30 00:45:40.817298
563	matriculas	721	LUAN BRITO	2016-01-23	Masculino	291874221	61377765135	\N	(54)3291-2416	(54)9146-7313	\N	Ensino médio Completo	\N	Ensino médio Incomplento	Brancos	Deficiência visual	Ônibus	5 Km	Não	Reprovou	Concluida	2021-01-20	Pr03	2021-08-30 00:45:40.817298
564	matriculas	727	FERNANDA CEBALLOS SOLEIMAN	2016-04-26	Feminino	392770336	63936633906	\N	(54)9982-0292	(54)3291-4290	\N	Ensino fundamental Completo	\N	Ensino fundamental Completo	Pardos	Nenhuma	Ônibus	20 Km	Sim	Aprovado	Pendente	2021-01-21	Pr03	2021-08-30 00:45:40.817298
565	matriculas	741	GISLAINE DUARTE DA SILVA	2016-01-18	Feminino	142761156	81929400704	\N	(54)9960-5142	(54)9136-4687	\N	Ensino Técnico Completo	\N	Ensino superior Incompleto	Brancos	Nenhuma	Ônibus	15 Km	Não	Aprovado	Pendente	2021-01-12	Pr03	2021-08-30 00:45:40.817298
566	matriculas	745	JULIANA DA LUZ	2016-11-03	Feminino	453264421	72407928838	\N	\N	(54)9111-2416	\N	Ensino médio Incomplento	\N	Ensino fundamental Incomplento	Pardos	Nenhuma	Carro	5 Km	Não	Pendente	Pendente	2021-02-06	Pr03	2021-08-30 00:45:40.817298
567	matriculas	746	ANA CAROLINA DUARTE	2016-05-28	Feminino	920024045	99151077603	\N	(54)9691-9382	(54)9607-4279	\N	Ensino superior Completo	\N	Ensino médio Incomplento	Brancos	Nenhuma	Ônibus	15 Km	Não	Aprovado	Concluida	2021-01-28	Pr03	2021-08-30 00:45:40.817298
568	matriculas	770	JUSCELINO GOULART FILHO	2016-11-19	Masculino	690685154	54460724317	\N	(54)9246-3946	(54)3291-3721	\N	Ensino médio Incomplento	\N	Ensino fundamental Incomplento	Indígenas	Nenhuma	Ônibus	30 Km	Sim	Aprovado	Concluida	2021-01-25	Pr03	2021-08-30 00:45:40.817298
569	matriculas	813	NATÁLIA MOTA	2016-08-05	Feminino	220105741	16601885015	\N	(54)3291-3454	(54)3280-1040	\N	Ensino superior Completo	\N	Ensino médio Completo	Brancos	Nenhuma	Moto	15 Km	Não	Aprovado	Concluida	2021-02-02	Pr03	2021-08-30 00:45:40.817298
570	matriculas	815	GUILHERME DOS SANTOS CAMASSOLA	2016-03-31	Masculino	399179087	30434862410	\N	(54)8154-2081	(54)9908-6708	\N	Ensino superior Incompleto	\N	Ensino Técnico Incompleto	Brancos	Nenhuma	Ônibus	10 Km	Não	Aprovado	Pendente	2021-01-13	Pr03	2021-08-30 00:45:40.817298
571	matriculas	824	BRUNO BALARDIN	2016-04-10	Masculino	876301259	93225931435	\N	(54)9711-9605	(54)9147-6487	\N	Ensino Técnico Completo	\N	Ensino médio Incomplento	Pretos	Nenhuma	Ônibus	20 Km	Não	Aprovado	Pendente	2021-01-21	Pr03	2021-08-30 00:45:40.817298
572	matriculas	827	TAISE BORGES	2016-05-06	Feminino	855580495	88078301371	\N	(54)9913-7933	(54)9699-8143	\N	Ensino fundamental Incomplento	\N	Ensino superior Completo	Brancos	Nenhuma	A pé	5 Km	Não	Aprovado	Pendente	2021-01-11	Pr03	2021-08-30 00:45:40.817298
573	matriculas	838	BEATRIZ RAPIKVCZ	2016-01-26	Feminino	699522882	22116817397	\N	(54)9108-4934	(54)3291-1257	\N	Ensino fundamental Incomplento	\N	Ensino fundamental Completo	Pretos	Deficiência visual	Ônibus	20 Km	Não	Aprovado	Concluida	2021-01-11	Pr03	2021-08-30 00:45:40.817298
574	matriculas	866	RENAN SOUZA TEIXEIRA	2016-10-22	Masculino	305613719	68260646889	\N	(54)9187-0053	(54)9981-6531	\N	Ensino Técnico Completo	\N	Ensino médio Completo	Brancos	Nenhuma	Ônibus	20 Km	Não	Aprovado	Pendente	2021-02-06	Pr03	2021-08-30 00:45:40.817298
575	matriculas	877	MARINETE FARIAS	2016-07-05	Feminino	578066248	78893597471	\N	(54)3291-3595	(54)9949-6094	\N	Ensino fundamental Incomplento	\N	Ensino médio Completo	Amarelos	Nenhuma	Ônibus	30 Km	Não	Aprovado	Concluida	2021-01-19	Pr03	2021-08-30 00:45:40.817298
576	matriculas	887	PAULO SERGIO FOCHESATO	2016-09-01	Masculino	648625271	86367084017	\N	(54)9983-6032	(54)3291-4554	\N	Ensino médio Completo	\N	Ensino Técnico Incompleto	Brancos	Nenhuma	Ônibus	1 Km	Não	Aprovado	Concluida	2021-01-23	Pr03	2021-08-30 00:45:40.817298
577	matriculas	922	ROBSON ROSSI	2016-05-28	Masculino	872903233	23050743624	\N	(54)9192-0865	(54)9693-2076	\N	Ensino médio Incomplento	\N	Ensino superior Incompleto	Indígenas	Nenhuma	Carro	30 Km	Não	Aprovado	Concluida	2021-01-23	Pr03	2021-08-30 00:45:40.817298
578	matriculas	972	UERLON RECH	2016-05-14	Masculino	843438851	77758166847	\N	(54)9669-6265	(54)9930-7136	\N	Ensino fundamental Completo	\N	Ensino superior Completo	Brancos	Nenhuma	Ônibus	30 Km	Não	Pendente	Concluida	2021-02-01	Pr03	2021-08-30 00:45:40.817298
579	matriculas	2	BARBARA ZANOTTO	2006-12-29	Feminino	273490857	30253766489	\N	(54)9152-7397	(54)9219-8342	\N	Ensino fundamental Completo	\N	Ensino Técnico Incompleto	Pretos	Nenhuma	Ônibus	20 Km	Sim	Aprovado	Concluida	2021-01-27	M101	2021-08-30 00:45:40.817298
580	matriculas	10	DIÉLI ZULIAN TERRES	2006-03-18	Feminino	653252232	26409219937	\N	91596219	(54)9101-6865	\N	Ensino médio Incomplento	\N	Ensino Técnico Completo	Pardos	Nenhuma	Bicicleta	5 Km	Não	Aprovado	Concluida	2021-01-28	M101	2021-08-30 00:45:40.817298
581	matriculas	17	ANANDA MICHELON	2006-02-04	Feminino	235628893	93786346547	\N	(54)9984-7729	(54)9609-1167	\N	Ensino Técnico Completo	\N	Ensino superior Completo	Indígenas	Nenhuma	Ônibus	20 Km	Não	Aprovado	Concluida	2021-01-28	M101	2021-08-30 00:45:40.817298
582	matriculas	38	LUIZ FELIPE DAL ZOTTO	2006-06-23	Masculino	423493959	37544244521	\N	(54)9682-6842	3291-4534	\N	Ensino superior Incompleto	\N	Ensino superior Incompleto	Amarelos	Nenhuma	Carro	20 Km	Não	Reprovou	Concluida	2021-01-28	M101	2021-08-30 00:45:40.817298
583	matriculas	40	VILNEI CORSO	2006-11-16	Masculino	830953659	83969553052	\N	(54)3291-5202	3291-5272	\N	Ensino superior Completo	\N	Ensino fundamental Incomplento	Pardos	Nenhuma	Carro	20 Km	Não	Aprovado	Concluida	2021-01-24	M101	2021-08-30 00:45:40.817298
584	matriculas	66	ILIANE FONTANA CHEMELLO	2006-08-15	Feminino	424332449	93476919074	\N	(54)9154-1619	32911743	\N	Ensino fundamental Incomplento	\N	Ensino superior Completo	Pretos	Nenhuma	Carro	10 Km	Não	Aprovado	Pendente	2021-01-14	M101	2021-08-30 00:45:40.817298
585	matriculas	67	SOLANGE MICHELON	2006-06-06	Feminino	329101858	38161681561	\N	(54)3291-3539	3291-2879	\N	Ensino superior Incompleto	\N	Ensino superior Completo	Brancos	Deficiência auditiva	Carro	50 Km	Não	Pendente	Pendente	2021-02-01	M101	2021-08-30 00:45:40.817298
586	matriculas	69	ROSANGELA APARECIDA ANTUNES FOGAÇA	2006-11-15	Feminino	573222425	51243987326	\N	(54)9143-2051	32917232	\N	Ensino superior Incompleto	\N	Ensino fundamental Incomplento	Pardos	Nenhuma	Carro	20 Km	Não	Aprovado	Concluida	2021-02-03	M101	2021-08-30 00:45:40.817298
587	matriculas	81	GUSTAVO MENEGON	2006-10-26	Masculino	774247102	27237706048	\N	(54)8110-0355	32919124	\N	Ensino Técnico Incompleto	\N	Ensino fundamental Completo	Amarelos	Nenhuma	A pé	30 Km	Não	Pendente	Concluida	2021-02-01	M101	2021-08-30 00:45:40.817298
588	matriculas	103	EMAEL RIBEIRO KLEIN	2006-03-17	Masculino	702945636	15471005772	\N	(54)9991-4360	96084506	\N	Ensino médio Completo	\N	Ensino Técnico Incompleto	Pretos	Nenhuma	Ônibus	1 Km	Não	Aprovado	Concluida	2021-02-04	M101	2021-08-30 00:45:40.817298
589	matriculas	121	IVANIR INÊS TOMÉ VANIN	2006-02-12	Feminino	462275950	43403808441	\N	(54)9969-9397	(  )9175-5236	\N	Ensino fundamental Completo	\N	Ensino médio Incomplento	Brancos	Nenhuma	Ônibus	30 Km	Não	Pendente	Concluida	2021-01-21	M101	2021-08-30 00:45:40.817298
590	matriculas	137	ANGELO GABRIEL CARVALHO DA SILVA	2006-04-25	Masculino	211107044	64864596572	\N	\N	(54)3291-4152	\N	Ensino fundamental Completo	\N	Ensino fundamental Completo	Pardos	Nenhuma	Carro	50 Km	Não	Aprovado	Concluida	2021-01-14	M101	2021-08-30 00:45:40.817298
591	matriculas	179	NEUZA APARECIDA DE OLIVEIRA PEREIRA	2006-04-08	Feminino	130629365	80908384109	\N	(54)9141-5220	(  )    -	\N	Ensino superior Completo	\N	Ensino Técnico Completo	Brancos	Nenhuma	Ônibus	5 Km	Não	Reprovou	Concluida	2021-01-17	M101	2021-08-30 00:45:40.817298
592	matriculas	199	EDUARDA DOS SANTOS DE OLIVEIRA	2006-02-04	Feminino	486000886	47025571253	\N	(54)9154-0785	(54)3291-1697	\N	Ensino médio Incomplento	\N	Ensino fundamental Incomplento	Pardos	Deficiência auditiva	A pé	1 Km	Não	Pendente	Concluida	2021-01-23	M101	2021-08-30 00:45:40.817298
593	matriculas	208	TIAGO FACHIN RECH	2006-04-26	Masculino	640548652	94375692630	\N	(54)9615-8038	(54)9967-0680	\N	Ensino Técnico Completo	\N	Ensino médio Incomplento	Brancos	Nenhuma	A pé	20 Km	Não	Pendente	Pendente	2021-01-21	M101	2021-08-30 00:45:40.817298
594	matriculas	235	RAFAEL FANTIN BORGHETTI	2006-07-08	Masculino	481367728	48259829066	\N	(54)8401-2526	(54)9986-3158	\N	Ensino fundamental Incomplento	\N	Ensino superior Incompleto	Brancos	Nenhuma	Carro	15 Km	Sim	Aprovado	Pendente	2021-02-05	M101	2021-08-30 00:45:40.817298
595	matriculas	253	DIONATAN FILIPINI DE OLIVEIRA	2006-11-21	Masculino	997794185	89037456038	\N	(54)9148-4305	(54)9939-5714	\N	Ensino médio Completo	\N	Ensino médio Completo	Pardos	Deficiência auditiva	Carro	15 Km	Não	Aprovado	Concluida	2021-02-01	M101	2021-08-30 00:45:40.817298
596	matriculas	263	FERNANDO DALL'AGNO RODRIGUES	2006-09-14	Masculino	115911777	95643126494	\N	(54)9638-1313	(54)9653-8347	\N	Ensino Técnico Incompleto	\N	Ensino médio Completo	Indígenas	Nenhuma	Ônibus	5 Km	Não	Pendente	Concluida	2021-01-29	M101	2021-08-30 00:45:40.817298
597	matriculas	264	FERNANDO ANTÔNIO ZUCCO	2006-02-07	Masculino	680385137	34317606595	\N	(54)8441-8700	(54)9164-0858	\N	Ensino médio Incomplento	\N	Ensino médio Incomplento	Pretos	Nenhuma	Carro	10 Km	Não	Aprovado	Concluida	2021-01-19	M101	2021-08-30 00:45:40.817298
598	matriculas	316	GABRIEL GENTIL	2006-10-02	Masculino	547288062	13206940079	\N	(54)9647-0297	(54)3291-4470	\N	Ensino médio Completo	\N	Ensino fundamental Completo	Brancos	Nenhuma	A pé	30 Km	Não	Aprovado	Concluida	2021-01-25	M101	2021-08-30 00:45:40.817298
599	matriculas	321	MARIA DE FÁTIMA LIPOSKI	2006-06-28	Feminino	719830319	10891854901	\N	(54)9217-3236	(54)3291-1549	\N	Ensino Técnico Completo	\N	Ensino superior Completo	Pretos	Nenhuma	A pé	15 Km	Não	Aprovado	Concluida	2021-01-26	M101	2021-08-30 00:45:40.817298
600	matriculas	337	CHEILA DOS REIS	2006-09-25	Feminino	666776586	61136335243	\N	(54)9100-0208	(54)9996-6954	\N	Ensino superior Completo	\N	Ensino Técnico Completo	Pardos	Nenhuma	A pé	5 Km	Não	Aprovado	Concluida	2021-01-23	M101	2021-08-30 00:45:40.817298
601	matriculas	342	THALES MENDES PADUAN	2006-01-18	Masculino	255438191	40161172195	\N	32919116	(54)9697-8255	\N	Ensino médio Completo	\N	Ensino médio Completo	Brancos	Nenhuma	Carro	5 Km	Não	Aprovado	Pendente	2021-01-12	M101	2021-08-30 00:45:40.817298
602	matriculas	359	ÉRICA RIBEIRO ASCARI	2006-02-06	Feminino	578254571	84930727188	\N	(54)9685-4735	(54)9673-9068	\N	Ensino Técnico Incompleto	\N	Ensino fundamental Completo	Pardos	Nenhuma	Ônibus	15 Km	Não	Aprovado	Concluida	2021-01-20	M102	2021-08-30 00:45:40.817298
603	matriculas	363	DEIVID PEREIRA DA SILVA	2006-01-01	Masculino	212248606	36135304120	\N	(54)3291-2833	(54)8122-8760	\N	Ensino superior Completo	\N	Ensino Técnico Incompleto	Brancos	Nenhuma	A pé	20 Km	Não	Aprovado	Concluida	2021-02-05	M102	2021-08-30 00:45:40.817298
604	matriculas	369	JOSIELI WANINS DE JESUS	2006-09-02	Feminino	721007847	87091551639	\N	(54)3291-4501	(54)8129-3098	\N	Ensino médio Incomplento	\N	Ensino médio Incomplento	Brancos	Nenhuma	Carro	1 Km	Não	Reprovou	Concluida	2021-01-26	M102	2021-08-30 00:45:40.817298
605	matriculas	381	GABRIELLY MOTA	2006-10-30	Feminino	273273623	31926204653	\N	(54)9182-8481	(54)3291-6005	\N	Ensino superior Incompleto	\N	Ensino Técnico Completo	Pardos	Deficiência visual	Ônibus	15 Km	Não	Aprovado	Concluida	2021-02-06	M102	2021-08-30 00:45:40.817298
606	matriculas	383	JOÃO VICTOR MIOTTO	2006-12-01	Masculino	915244829	93515108802	\N	(54)9158-4700	(54)8123-7056	\N	Ensino Técnico Completo	\N	Ensino fundamental Incomplento	Amarelos	Nenhuma	Carro	10 Km	Não	Aprovado	Concluida	2021-01-15	M102	2021-08-30 00:45:40.817298
607	matriculas	410	MONICA PADILHA	2006-10-09	Feminino	480576541	86681602612	\N	(54)3291-5169	(54)9976-9589	\N	Ensino fundamental Incomplento	\N	Ensino fundamental Incomplento	Brancos	Nenhuma	A pé	30 Km	Não	Aprovado	Concluida	2021-01-27	M102	2021-08-30 00:45:40.817298
608	matriculas	411	DEBORA MICHELIN	2006-06-27	Feminino	684901715	42718802281	\N	32911177	(54)3291-2273	\N	Ensino superior Incompleto	\N	Ensino Técnico Completo	Pardos	Deficiência visual	A pé	5 Km	Não	Aprovado	Concluida	2021-02-08	M102	2021-08-30 00:45:40.817298
609	matriculas	472	ANA PAULA CECHINATO	2006-11-23	Feminino	316021869	19966564927	\N	(54)9971-0419	32914327	\N	Ensino médio Incomplento	\N	Ensino superior Incompleto	Brancos	Nenhuma	Ônibus	10 Km	Não	Aprovado	Concluida	2021-01-10	M102	2021-08-30 00:45:40.817298
610	matriculas	479	PAMELA PELISSARI	2006-01-03	Feminino	921504478	29571154185	\N	(54)9197-8079	(54)3291-3246	\N	Ensino Técnico Incompleto	\N	Ensino fundamental Completo	Pardos	Nenhuma	Carro	15 Km	Não	Pendente	Pendente	2021-01-24	M102	2021-08-30 00:45:40.817298
611	matriculas	524	GERMANO MICHELON SANTOS	2006-09-28	Masculino	198254845	19218203922	\N	32912267	9625-3381	\N	Ensino superior Incompleto	\N	Ensino fundamental Incomplento	Pardos	Nenhuma	Carro	1 Km	Não	Aprovado	Concluida	2021-01-15	M102	2021-08-30 00:45:40.817298
612	matriculas	527	SABRINA FILIPINI OLIVEIRA	2006-07-29	Feminino	923543728	39886550475	\N	(54)3235-1222	32911762	\N	Ensino Técnico Completo	\N	Ensino Técnico Completo	Indígenas	Nenhuma	A pé	50 Km	Sim	Aprovado	Concluida	2021-01-30	M102	2021-08-30 00:45:40.817298
613	matriculas	554	BRUNA FRANCIELE VIIRA BRESOLIN	2006-07-14	Feminino	775436549	89432540031	\N	(54)3235-1678	(54)3291-2734	\N	Ensino Técnico Incompleto	\N	Ensino fundamental Completo	Pardos	Nenhuma	Ônibus	1 Km	Não	Aprovado	Concluida	2021-01-17	M102	2021-08-30 00:45:40.817298
614	matriculas	564	CAROLINE MASCARELLO RIBEIRO	2006-12-11	Feminino	947787627	98738869714	\N	(54)9901-9284	(54)9683-4453	\N	Ensino fundamental Completo	\N	Ensino Técnico Incompleto	Brancos	Nenhuma	Ônibus	10 Km	Sim	Aprovado	Concluida	2021-01-18	M102	2021-08-30 00:45:40.817298
615	matriculas	593	RUTIANE DE CASTILHOS	2006-01-06	Feminino	688992526	16459774993	\N	(11)1111-1111	(54)3291-2896	\N	Ensino médio Incomplento	\N	Ensino Técnico Completo	Pardos	Nenhuma	Ônibus	20 Km	Não	Pendente	Concluida	2021-01-14	M102	2021-08-30 00:45:40.817298
616	matriculas	612	THAIS GOMES MIRANDA SANCHEZ	2006-02-27	Feminino	148252552	51437673267	\N	(54)3291-5362	(54)9998-9795	\N	Ensino Técnico Incompleto	\N	Ensino médio Incomplento	Brancos	Nenhuma	Ônibus	30 Km	Não	Aprovado	Concluida	2021-02-08	M102	2021-08-30 00:45:40.817298
617	matriculas	619	RAFAELA NOVELLO	2006-03-04	Feminino	464339196	78180391585	\N	(54)3291-6338	(54)3291-2060	\N	Ensino fundamental Incomplento	\N	Ensino médio Completo	Pardos	Nenhuma	A pé	15 Km	Não	Pendente	Concluida	2021-01-15	M102	2021-08-30 00:45:40.817298
618	matriculas	639	 LUIZ HENRIQUE POHLOD KAPP	2006-09-12	Masculino	601338180	97106659316	\N	(47)9291-2103	(54)9144-4172	\N	Ensino superior Incompleto	\N	Ensino Técnico Incompleto	Pretos	Nenhuma	Moto	15 Km	Não	Pendente	Pendente	2021-01-22	M102	2021-08-30 00:45:40.817298
619	matriculas	654	 VERA SLONGO FONGARO	2006-08-26	Feminino	342642283	64357492133	\N	(54)9702-5242	(54)9908-9383	\N	Ensino fundamental Completo	\N	Ensino Técnico Completo	Brancos	Nenhuma	Moto	1 Km	Não	Aprovado	Concluida	2021-01-14	M102	2021-08-30 00:45:40.817298
620	matriculas	658	 NICOLI RODRIGUES DA SILVA	2006-10-16	Feminino	540993867	44825000775	\N	(54)9909-7620	(54)9209-9944	\N	Ensino superior Completo	\N	Ensino médio Incomplento	Pardos	Nenhuma	A pé	15 Km	Não	Pendente	Concluida	2021-01-27	M102	2021-08-30 00:45:40.817298
621	matriculas	678	 MATEUS RIZZON SANDI	2006-07-17	Masculino	620973804	12691624309	\N	(54)3291-8300	(54)9183-5031	\N	Ensino Técnico Completo	\N	Ensino superior Completo	Indígenas	Nenhuma	Carro	5 Km	Não	Aprovado	Concluida	2021-01-16	M102	2021-08-30 00:45:40.817298
622	matriculas	680	 RAFAEL LEONCIO	2006-01-24	Masculino	579310631	28817014535	\N	(11)1111-1111	(54)9931-8929	\N	Ensino Técnico Completo	\N	Ensino superior Completo	Brancos	Nenhuma	A pé	1 Km	Sim	Aprovado	Concluida	2021-01-24	M102	2021-08-30 00:45:40.817298
623	matriculas	707	MAURICIU BOEIRA QUINTANILHA	2006-07-15	Masculino	321196211	18524815952	\N	(54)3291-1428	(54)9601-0971	\N	Ensino superior Incompleto	\N	Ensino fundamental Completo	Amarelos	Nenhuma	Carro	20 Km	Não	Reprovou	Concluida	2021-02-03	M102	2021-08-30 00:45:40.817298
624	matriculas	718	ALLAN BOMBANA	2006-06-22	Masculino	312006682	86012603748	\N	(54)9924-8932	(54)3291-1046	\N	Ensino médio Incomplento	\N	Ensino superior Completo	Pardos	Nenhuma	Ônibus	5 Km	Não	Aprovado	Concluida	2021-01-21	M102	2021-08-30 00:45:40.817298
625	matriculas	729	OTÁVIO BOSSARDI MICHELON	2006-10-28	Masculino	423562953	84629511697	\N	(54)9667-8483	(54)9191-7268	\N	Ensino fundamental Completo	\N	Ensino médio Incomplento	Brancos	Nenhuma	Ônibus	1 Km	Não	Aprovado	Concluida	2021-01-30	M103	2021-08-30 00:45:40.817298
626	matriculas	743	BRUNO DE CASTILHOS FORTUNATTI	2006-06-04	Masculino	838056442	13901232825	\N	(11)8792-8557	(54)3291-1096	\N	Ensino Técnico Completo	\N	Ensino Técnico Incompleto	Pardos	Nenhuma	Ônibus	5 Km	Não	Aprovado	Concluida	2021-01-19	M103	2021-08-30 00:45:40.817298
627	matriculas	748	ARTHUR DOS SANTOS	2006-01-05	Masculino	600800383	67795095731	\N	(54)3291-2974	(54)9907-0915	\N	Ensino Técnico Completo	\N	Ensino fundamental Completo	Pardos	Nenhuma	A pé	15 Km	Não	Aprovado	Concluida	2021-01-12	M103	2021-08-30 00:45:40.817298
628	matriculas	750	ISABEL BORGES VIEIRA	2006-02-28	Feminino	680678987	48942973817	\N	\N	(54)3291-1808	\N	Ensino superior Completo	\N	Ensino Técnico Incompleto	Indígenas	Deficiência auditiva	A pé	10 Km	Sim	Pendente	Concluida	2021-01-22	M103	2021-08-30 00:45:40.817298
629	matriculas	764	GUSTAVO DE LIMA LOURENÇO	2006-05-29	Masculino	164936635	66772582538	\N	(54)9160-3781	(54)9607-4279	\N	Ensino Técnico Incompleto	\N	Ensino médio Incomplento	Brancos	Nenhuma	A pé	5 Km	Não	Aprovado	Concluida	2021-01-26	M103	2021-08-30 00:45:40.817298
630	matriculas	792	AMANDA CIOATA SOTORIVA	2006-11-12	Feminino	242483025	52708072046	\N	(54)9955-2882	(54)9981-9740	\N	Ensino fundamental Incomplento	\N	Ensino médio Completo	Pretos	Nenhuma	Carro	1 Km	Não	Aprovado	Concluida	2021-01-21	M103	2021-08-30 00:45:40.817298
631	matriculas	814	JULIA BENATTO RENOSTO	2006-04-01	Feminino	909725804	71153506325	\N	(54)9985-3002	(54)3291-2506	\N	Ensino Técnico Completo	\N	Ensino Técnico Completo	Brancos	Nenhuma	Ônibus	1 Km	Não	Aprovado	Concluida	2021-01-26	M103	2021-08-30 00:45:40.817298
632	matriculas	822	FABIANO VARGAS DA ROSA	2006-05-14	Masculino	287904701	12646984899	\N	(54)9658-1833	(54)3291-6459	\N	Ensino superior Completo	\N	Ensino médio Incomplento	Pretos	Nenhuma	Carro	15 Km	Não	Aprovado	Concluida	2021-01-27	M103	2021-08-30 00:45:40.817298
633	matriculas	829	MARIA VITÓRIA BALARDIN SPULDARO	2006-03-30	Feminino	487769305	68038167805	\N	(54)9621-7658	(54)3291-1973	\N	Ensino médio Incomplento	\N	Ensino fundamental Completo	Pardos	Deficiência visual	A pé	20 Km	Não	Pendente	Pendente	2021-01-19	M103	2021-08-30 00:45:40.817298
634	matriculas	847	JULIANA GENTIL	2006-06-03	Feminino	680084326	38041150525	\N	(54)9672-6806	(54)3291-3431	\N	Ensino superior Completo	\N	Ensino Técnico Incompleto	Pardos	Nenhuma	A pé	15 Km	Não	Aprovado	Pendente	2021-01-21	M103	2021-08-30 00:45:40.817298
635	matriculas	855	RENIELE DA SILVA VANIN	2006-05-24	Feminino	247501305	96645692302	\N	(54)9195-1578	(54)8412-0561	\N	Ensino fundamental Incomplento	\N	Ensino Técnico Incompleto	Pardos	Nenhuma	Ônibus	15 Km	Não	Aprovado	Concluida	2021-02-04	M103	2021-08-30 00:45:40.817298
636	matriculas	880	LIDUVINA ZANARDI GUERRA	2006-08-03	Feminino	810460883	78898583335	\N	(54)3291-3307	(54)9213-7722	\N	Ensino fundamental Incomplento	\N	Ensino superior Completo	Indígenas	Nenhuma	A pé	5 Km	Não	Pendente	Concluida	2021-02-01	M103	2021-08-30 00:45:40.817298
637	matriculas	884	MARI HELENA BERNARDI	2006-03-27	Feminino	464299898	48328818853	\N	(54)3291-4084	(54)9194-1270	\N	Ensino médio Incomplento	\N	Ensino Técnico Completo	Pardos	Nenhuma	A pé	1 Km	Não	Aprovado	Concluida	2021-01-27	M103	2021-08-30 00:45:40.817298
638	matriculas	896	REMI FRANCISCO PIROLI	2006-05-26	Masculino	361286124	96917380314	\N	(54)3291-2151	(54)9225-8415	\N	Ensino Técnico Incompleto	\N	Ensino Técnico Completo	Pretos	Nenhuma	Carro	15 Km	Não	Aprovado	Concluida	2021-02-01	M103	2021-08-30 00:45:40.817298
639	matriculas	900	IVANETE TEREZINHA RIZZON	2006-12-28	Feminino	817365831	59281488198	\N	(54)9908-4079	(54)9189-8057	\N	Ensino fundamental Completo	\N	Ensino superior Completo	Brancos	Nenhuma	Moto	10 Km	Não	Aprovado	Pendente	2021-01-27	M103	2021-08-30 00:45:40.817298
640	matriculas	902	GUILHERME BOLZAN VERONESE	2006-03-23	Masculino	725660186	61696425373	\N	(54)9910-0912	(54)9637-5726	\N	Ensino Técnico Incompleto	\N	Ensino Técnico Incompleto	Pardos	Nenhuma	A pé	10 Km	Não	Pendente	Concluida	2021-02-02	M103	2021-08-30 00:45:40.817298
641	matriculas	956	JULISANDRA LORANDI	2006-04-09	Feminino	411420338	12994245732	\N	32914121	(54)3291-6011	\N	Ensino médio Completo	\N	Ensino superior Completo	Pretos	Nenhuma	Ônibus	30 Km	Não	Aprovado	Concluida	2021-01-22	M103	2021-08-30 00:45:40.817298
642	matriculas	965	ISABEL DA CRUZ	2006-04-09	Feminino	649014386	53137163594	\N	(54)9131-8737	(54)9914-4888	\N	Ensino médio Incomplento	\N	Ensino fundamental Incomplento	Brancos	Nenhuma	Ônibus	5 Km	Não	Aprovado	Concluida	2021-02-05	M103	2021-08-30 00:45:40.817298
643	matriculas	969	RODRIGO RENOSTO	2006-03-19	Masculino	434491134	58092702371	\N	32914203	(54)3291-5062	\N	Ensino Técnico Completo	\N	Ensino fundamental Incomplento	Amarelos	Nenhuma	A pé	1 Km	Não	Aprovado	Concluida	2021-01-28	M103	2021-08-30 00:45:40.817298
644	matriculas	973	ADRIEL CARDOSO DE OLIVEIRA	2006-02-02	Feminino	589875245	79133072634	\N	32912679	(54)9615-5270	\N	Ensino Técnico Incompleto	\N	Ensino Técnico Incompleto	Pardos	Nenhuma	Carro	10 Km	Não	Aprovado	Concluida	2021-02-03	M103	2021-08-30 00:45:40.817298
645	matriculas	983	EDUARDO ASCARI	2006-03-31	Masculino	250880741	76691251290	\N	(54)9999-1348	(54)3291-4321	\N	Ensino fundamental Incomplento	\N	Ensino superior Completo	Pretos	Nenhuma	A pé	1 Km	Sim	Aprovado	Concluida	2021-01-23	M103	2021-08-30 00:45:40.817298
646	matriculas	5	LUANA TELES PEREIRA	2005-07-24	Feminino	342928775	79513292201	\N	(54)9996-9196	(54)9184-2962	\N	Ensino fundamental Completo	\N	Ensino superior Incompleto	Brancos	Nenhuma	Ônibus	5 Km	Não	Aprovado	Concluida	2021-01-13	M201	2021-08-30 00:45:40.817298
647	matriculas	9	DANIELE BENATTO	2005-08-12	Feminino	904985699	49852284587	\N	3291-7258	(54)9980-8685	\N	Ensino superior Incompleto	\N	Ensino Técnico Incompleto	Brancos	Nenhuma	Ônibus	10 Km	Não	Reprovou	Concluida	2021-02-03	M201	2021-08-30 00:45:40.817298
648	matriculas	18	ELAINE DE OLIVEIRA MATTOS	2005-07-28	Feminino	353974552	51271113637	\N	32801114	(54)9606-9226	\N	Ensino fundamental Incomplento	\N	Ensino superior Completo	Pretos	Deficiência visual	A pé	15 Km	Não	Aprovado	Concluida	2021-01-26	M201	2021-08-30 00:45:40.817298
649	matriculas	20	MARILI BOGO	2005-05-31	Feminino	292191392	12740027382	\N	(54)3291-2884	(54)9907-1712	\N	Ensino médio Completo	\N	Ensino fundamental Incomplento	Pretos	Nenhuma	Ônibus	20 Km	Não	Aprovado	Pendente	2021-01-24	M201	2021-08-30 00:45:40.817298
650	matriculas	27	CARLOS ALBERTO ARMILIATO	2005-04-14	Masculino	842845224	14551817212	\N	(54)3291-7260	(54)9914-6053	\N	Ensino Técnico Incompleto	\N	Ensino Técnico Completo	Brancos	Deficiência visual	Carro	5 Km	Não	Aprovado	Concluida	2021-01-30	M201	2021-08-30 00:45:40.817298
651	matriculas	32	MAICON TRINDADE DUARTE	2005-08-18	Masculino	851594656	74578220366	\N	3291-4905	(54)9632-5629	\N	Ensino Técnico Completo	\N	Ensino fundamental Completo	Pardos	Nenhuma	Ônibus	15 Km	Sim	Aprovado	Concluida	2021-01-19	M201	2021-08-30 00:45:40.817298
652	matriculas	60	SANDRA MARIA GASPAROTTO BENATO	2005-09-17	Feminino	579396059	14115141128	\N	(54)3291-2695	91065177	\N	Ensino fundamental Incomplento	\N	Ensino superior Incompleto	Amarelos	Nenhuma	Carro	20 Km	Não	Aprovado	Pendente	2021-01-18	M201	2021-08-30 00:45:40.817298
653	matriculas	63	FERNANDO RIBEIRO	2005-02-03	Masculino	927013056	18490449317	\N	(54)9928-2059	3291-4391	\N	Ensino fundamental Completo	\N	Ensino médio Completo	Indígenas	Nenhuma	Ônibus	15 Km	Não	Aprovado	Concluida	2021-01-11	M201	2021-08-30 00:45:40.817298
654	matriculas	94	NEURA MARI ASCARI DA LUZ	2005-12-08	Feminino	235888032	30827226684	\N	(54)8156-9530	32912984	\N	Ensino fundamental Completo	\N	Ensino fundamental Incomplento	Pardos	Nenhuma	Bicicleta	15 Km	Não	Aprovado	Concluida	2021-02-01	M201	2021-08-30 00:45:40.817298
655	matriculas	97	MARLENE SIDNEI RICARDO CASAL	2005-06-20	Feminino	269038164	26999981424	\N	(54)3291-2554	3291-3418	\N	Ensino superior Completo	\N	Ensino médio Incomplento	Brancos	Nenhuma	Moto	10 Km	Não	Pendente	Pendente	2021-01-30	M201	2021-08-30 00:45:40.817298
656	matriculas	98	ADELAR JUNIOR CANALE	2005-02-28	Masculino	121556130	21062873094	\N	(54)3291-1786	32913073	\N	Ensino fundamental Completo	\N	Ensino médio Incomplento	Brancos	Nenhuma	Ônibus	10 Km	Não	Aprovado	Concluida	2021-02-07	M201	2021-08-30 00:45:40.817298
657	matriculas	140	ANDERSON DA SILVA OLIVEIRA	2005-06-20	Masculino	163992425	83815932114	\N	(54)9111-2416	(54)3291-1103	\N	Ensino médio Incomplento	\N	Ensino fundamental Completo	Brancos	Nenhuma	A pé	1 Km	Não	Pendente	Concluida	2021-02-05	M201	2021-08-30 00:45:40.817298
658	matriculas	152	SUELEN RODRIGUES DE OLIVEIRA	2005-06-05	Feminino	194892794	42438798702	\N	(54)9608-4250	(54)3291-4603	\N	Ensino Técnico Incompleto	\N	Ensino médio Completo	Indígenas	Nenhuma	Carro	15 Km	Sim	Aprovado	Concluida	2021-01-10	M201	2021-08-30 00:45:40.817298
659	matriculas	197	JOÃO PEDRO SCODRO MICHELON	2005-09-13	Masculino	491378575	83566039658	\N	(54)9112-1100	(54)3291-4961	\N	Ensino Técnico Completo	\N	Ensino superior Incompleto	Brancos	Nenhuma	Carro	15 Km	Não	Aprovado	Pendente	2021-01-23	M201	2021-08-30 00:45:40.817298
660	matriculas	222	MICKEL DE LIMA	2005-05-14	Masculino	365125145	24090786774	\N	(54)3291-1867	(54)3291-5304	\N	Ensino fundamental Completo	\N	Ensino fundamental Incomplento	Indígenas	Deficiência motora	Bicicleta	5 Km	Sim	Aprovado	Concluida	2021-01-17	M201	2021-08-30 00:45:40.817298
661	matriculas	274	MARLON DAROS	2005-01-28	Masculino	446440553	74909886182	\N	(54)9909-8040	91788920	\N	Ensino fundamental Completo	\N	Ensino médio Completo	Amarelos	Nenhuma	Carro	20 Km	Não	Pendente	Concluida	2021-01-21	M201	2021-08-30 00:45:40.817298
662	matriculas	307	VAGNER DALAGNO	2005-04-29	Masculino	143631216	33884505624	\N	(54)9216-0867	(54)9157-5066	\N	Ensino superior Completo	\N	Ensino Técnico Completo	Pardos	Nenhuma	Ônibus	1 Km	Não	Reprovou	Concluida	2021-01-16	M201	2021-08-30 00:45:40.817298
663	matriculas	325	ROSSELI MÜLLER DA SILVA	2005-10-20	Feminino	277245325	56969767100	\N	(54)8147-7848	(54)3291-9009	\N	Ensino Técnico Incompleto	\N	Ensino superior Completo	Brancos	Nenhuma	A pé	15 Km	Não	Aprovado	Concluida	2021-01-13	M201	2021-08-30 00:45:40.817298
664	matriculas	339	NICOLE CECATTO FONTANA DINIZ	2005-01-08	Feminino	973806770	21222601726	\N	(54)9960-5967	(54)9667-8063	\N	Ensino fundamental Completo	\N	Ensino Técnico Incompleto	Pretos	Nenhuma	Carro	30 Km	Sim	Aprovado	Pendente	2021-01-19	M201	2021-08-30 00:45:40.817298
665	matriculas	352	CRISTIAN DA CRUZ	2005-04-24	Masculino	501321687	94423686042	\N	(11)1111-1111	(54)3291-3554	\N	Ensino superior Incompleto	\N	Ensino Técnico Incompleto	Amarelos	Nenhuma	Ônibus	10 Km	Não	Aprovado	Pendente	2021-01-21	M201	2021-08-30 00:45:40.817298
666	matriculas	360	MICAEL GUZZON	2005-04-10	Masculino	178745180	88250774238	\N	(54)9182-8976	(54)9166-1393	\N	Ensino fundamental Incomplento	\N	Ensino fundamental Incomplento	Pardos	Nenhuma	Ônibus	30 Km	Sim	Aprovado	Concluida	2021-01-28	M201	2021-08-30 00:45:40.817298
667	matriculas	378	LEIVA APARECIDA CASTIHOS DOS REIS	2005-11-02	Feminino	520034482	30745372841	\N	(54)9140-9252	(54)9944-8972	\N	Ensino fundamental Incomplento	\N	Ensino Técnico Completo	Pretos	Nenhuma	Bicicleta	1 Km	Não	Aprovado	Concluida	2021-01-12	M201	2021-08-30 00:45:40.817298
668	matriculas	398	ANA CRISTINA PEGORARO	2005-07-24	Feminino	268327604	50244317064	\N	(54)9109-7141	(54)9949-5834	\N	Ensino superior Incompleto	\N	Ensino médio Completo	Amarelos	Nenhuma	A pé	5 Km	Não	Aprovado	Concluida	2021-02-05	M201	2021-08-30 00:45:40.817298
669	matriculas	403	YURI POLO	2005-05-25	Masculino	323865971	46963741879	\N	(54)9934-8889	(54)9642-8090	\N	Ensino Técnico Completo	\N	Ensino fundamental Incomplento	Pardos	Nenhuma	Carro	5 Km	Sim	Aprovado	Pendente	2021-02-05	M201	2021-08-30 00:45:40.817298
670	matriculas	412	CARINA FEREEIRA DE OLIVEIRA	2005-11-15	Feminino	817696523	83822988065	\N	(99)8341-54	(54)9167-7137	\N	Ensino Técnico Completo	\N	Ensino médio Incomplento	Brancos	Nenhuma	A pé	1 Km	Não	Aprovado	Concluida	2021-01-23	M202	2021-08-30 00:45:40.817298
671	matriculas	456	GLAUCIA FRANCISCHINI	2005-09-15	Feminino	627302025	59400094861	\N	(54)9995-9215	32911310	\N	Ensino médio Completo	\N	Ensino fundamental Completo	Brancos	Nenhuma	Carro	15 Km	Sim	Aprovado	Concluida	2021-01-11	M202	2021-08-30 00:45:40.817298
672	matriculas	466	RODRIGO CIOATO PASINATO	2005-08-08	Masculino	479776656	80487141445	\N	(11)1111-1111	(54)3291-3404	\N	Ensino médio Incomplento	\N	Ensino Técnico Incompleto	Brancos	Nenhuma	Ônibus	5 Km	Não	Pendente	Concluida	2021-01-21	M202	2021-08-30 00:45:40.817298
673	matriculas	467	GABRIEL COELHO DOS SANTOS	2005-01-11	Feminino	861999652	54755694480	\N	(11)1111-1111	(54)9945-1620	\N	Ensino superior Completo	\N	Ensino superior Incompleto	Pretos	Nenhuma	Ônibus	30 Km	Não	Aprovado	Concluida	2021-02-06	M202	2021-08-30 00:45:40.817298
674	matriculas	482	ELIZABETE DAL LAGO	2005-02-08	Feminino	438112773	88982526563	\N	(54)9180-9156	(54)9119-0744	\N	Ensino superior Completo	\N	Ensino médio Completo	Pardos	Nenhuma	Carro	15 Km	Não	Aprovado	Concluida	2021-01-11	M202	2021-08-30 00:45:40.817298
675	matriculas	507	FERNABNDO LUIZ REC	2005-07-08	Masculino	453502611	80971879743	\N	(54)9969-1537	(54)9603-5690	\N	Ensino superior Completo	\N	Ensino médio Incomplento	Amarelos	Nenhuma	Carro	50 Km	Não	Aprovado	Concluida	2021-01-19	M202	2021-08-30 00:45:40.817298
676	matriculas	534	JOCELAINE PELIZZARI	2005-12-20	Feminino	409779219	28022677089	\N	(54)9623-7510	(54)3291-3696	\N	Ensino superior Incompleto	\N	Ensino fundamental Completo	Pardos	Nenhuma	Ônibus	5 Km	Não	Aprovado	Concluida	2021-02-07	M202	2021-08-30 00:45:40.817298
677	matriculas	562	LAIS CASTAGNA BREZOLIN	2005-01-23	Feminino	376231652	10047962152	\N	(54)3291-1202	(54)9926-8721	\N	Ensino médio Incomplento	\N	Ensino superior Incompleto	Pardos	Nenhuma	Ônibus	20 Km	Não	Pendente	Concluida	2021-01-13	M202	2021-08-30 00:45:40.817298
678	matriculas	568	ELIAS FELICIO	2005-12-03	Masculino	562652012	16403576101	\N	(54)9909-5082	(54)9968-4857	\N	Ensino superior Incompleto	\N	Ensino médio Completo	Indígenas	Nenhuma	Ônibus	5 Km	Não	Aprovado	Concluida	2021-01-19	M202	2021-08-30 00:45:40.817298
679	matriculas	572	STEFANIE CARVALHO PEREIRA	2005-08-29	Feminino	787176583	77593498081	\N	(54)3291-2420	(54)9122-5141	\N	Ensino fundamental Completo	\N	Ensino superior Completo	Pardos	Nenhuma	Carro	1 Km	Não	Aprovado	Concluida	2021-01-14	M202	2021-08-30 00:45:40.817298
680	matriculas	574	GERMANO CASTILHOS DOS REIS	2005-12-27	Masculino	460104479	58951172418	\N	(54)9983-2265	(54)9195-6246	\N	Ensino Técnico Completo	\N	Ensino fundamental Completo	Brancos	Nenhuma	Moto	30 Km	Não	Reprovou	Concluida	2021-01-22	M202	2021-08-30 00:45:40.817298
681	matriculas	596	PALOMA DA ROSA NUNES	2005-03-14	Feminino	667852548	83237992819	\N	(54)9639-8548	(54)3291-2868	\N	Ensino médio Completo	\N	Ensino médio Completo	Brancos	Nenhuma	A pé	15 Km	Não	Aprovado	Pendente	2021-02-07	M202	2021-08-30 00:45:40.817298
682	matriculas	602	LUANA VIEIRA BOEIRA	2005-04-22	Feminino	424660035	14056979696	\N	(54)3291-7479	(54)9104-4525	\N	Ensino superior Completo	\N	Ensino fundamental Completo	Amarelos	Nenhuma	Carro	10 Km	Não	Aprovado	Concluida	2021-01-21	M202	2021-08-30 00:45:40.817298
683	matriculas	603	AMANDA DE MORAIS FOCHESATO	2005-09-28	Feminino	470478740	80810385015	\N	(54)9664-5107	(54)9106-5307	\N	Ensino fundamental Incomplento	\N	Ensino médio Incomplento	Brancos	Nenhuma	Carro	1 Km	Não	Pendente	Pendente	2021-01-24	M202	2021-08-30 00:45:40.817298
684	matriculas	629	 ROSELENE DOS PASSOS DOS SANTOS	2005-08-10	Feminino	109112106	23627447656	\N	(54)9161-3327	(54)9988-0569	\N	Ensino médio Incomplento	\N	Ensino superior Completo	Indígenas	Nenhuma	Ônibus	15 Km	Não	Aprovado	Concluida	2021-01-24	M202	2021-08-30 00:45:40.817298
685	matriculas	663	 CRISTIANE RIBEIRO DE PAULA	2005-04-18	Feminino	941438959	19652201552	\N	\N	(54)3235-1167	\N	Ensino fundamental Completo	\N	Ensino médio Incomplento	Amarelos	Nenhuma	A pé	15 Km	Não	Aprovado	Concluida	2021-01-27	M202	2021-08-30 00:45:40.817298
686	matriculas	668	 LEONARDO RECH POLETO	2005-03-13	Masculino	540797896	59503012113	\N	(54)9949-4410	(54)9987-9221	\N	Ensino Técnico Completo	\N	Ensino superior Incompleto	Pardos	Nenhuma	Moto	20 Km	Não	Aprovado	Concluida	2021-01-22	M202	2021-08-30 00:45:40.817298
687	matriculas	716	VANESSA SALVADOR CASTAGNA	2005-01-06	Feminino	326141828	61846247998	\N	(54)3291-2974	(54)9945-2629	\N	Ensino médio Incomplento	\N	Ensino fundamental Incomplento	Brancos	Nenhuma	Carro	30 Km	Não	Aprovado	Concluida	2021-01-15	M202	2021-08-30 00:45:40.817298
688	matriculas	765	GABRIEL CASSOL	2005-11-22	Masculino	581206231	97574386897	\N	(11)1111-1111	(54)9641-3822	\N	Ensino fundamental Incomplento	\N	Ensino médio Incomplento	Pardos	Nenhuma	Carro	15 Km	Não	Pendente	Concluida	2021-02-02	M202	2021-08-30 00:45:40.817298
689	matriculas	802	LUANA MAGRIN	2005-05-03	Feminino	363532684	34150392960	\N	(54)9202-7544	(54)9621-8371	\N	Ensino médio Incomplento	\N	Ensino fundamental Completo	Amarelos	Nenhuma	Carro	1 Km	Não	Aprovado	Concluida	2021-01-31	M202	2021-08-30 00:45:40.817298
690	matriculas	806	MARCOS VINICIUS RASADOR	2005-08-29	Masculino	467769525	35041005001	\N	(54)9972-6872	(54)9193-5093	\N	Ensino superior Incompleto	\N	Ensino médio Incomplento	Brancos	Nenhuma	A pé	20 Km	Não	Aprovado	Concluida	2021-01-27	M202	2021-08-30 00:45:40.817298
691	matriculas	823	ERIKA ZANARDI PARIZOTTO	2005-04-24	Feminino	875967626	83401304256	\N	(54)9965-4045	(54)3291-2604	\N	Ensino Técnico Completo	\N	Ensino superior Completo	Brancos	Nenhuma	A pé	20 Km	Não	Aprovado	Concluida	2021-02-06	M202	2021-08-30 00:45:40.817298
692	matriculas	828	ANA LUCIA DOS SANTOS	2005-05-20	Feminino	791043882	93218044755	\N	(54)9157-6488	(54)3291-7409	\N	Ensino superior Completo	\N	Ensino fundamental Completo	Brancos	Deficiência visual	A pé	10 Km	Não	Aprovado	Concluida	2021-01-30	M202	2021-08-30 00:45:40.817298
693	matriculas	850	CATIA POSSO	2005-06-21	Feminino	971310686	67364766998	\N	(11)1111-1111	(54)9992-5551	\N	Ensino Técnico Completo	\N	Ensino superior Completo	Pardos	Nenhuma	Carro	20 Km	Não	Aprovado	Concluida	2021-01-11	M202	2021-08-30 00:45:40.817298
694	matriculas	868	MARIA DA SILVA SANTOS	2005-03-04	Feminino	369349781	54524940256	\N	(54)9958-5735	(54)3291-1258	\N	Ensino Técnico Incompleto	\N	Ensino médio Incomplento	Pardos	Nenhuma	Ônibus	10 Km	Não	Pendente	Concluida	2021-01-24	M202	2021-08-30 00:45:40.817298
695	matriculas	881	GUSTAVO FELIPE VANIN	2005-03-09	Masculino	341237875	40725503914	\N	(54)3291-1096	\N	\N	Ensino superior Incompleto	\N	Ensino médio Completo	Pardos	Nenhuma	Carro	1 Km	Não	Aprovado	Concluida	2021-01-15	M202	2021-08-30 00:45:40.817298
696	matriculas	893	PRISCILA VARGAS PARIZOTTO	2005-02-08	Feminino	868408402	61236754446	\N	(54)9193-9693	(54)8134-8881	\N	Ensino fundamental Incomplento	\N	Ensino superior Incompleto	Brancos	Nenhuma	Ônibus	10 Km	Não	Pendente	Concluida	2021-02-03	M202	2021-08-30 00:45:40.817298
697	matriculas	930	BRUNA DAL'LAGO	2005-11-04	Feminino	733684312	37712597146	\N	(54)9949-4018	(54)3267-8259	\N	Ensino superior Completo	\N	Ensino Técnico Incompleto	Brancos	Nenhuma	A pé	10 Km	Não	Aprovado	Pendente	2021-01-17	M202	2021-08-30 00:45:40.817298
698	matriculas	936	CAROLINE BOEIRA DA SILVA	2005-12-08	Feminino	898410072	84124265478	\N	(54)9122-6535	(54)9134-5868	\N	Ensino médio Incomplento	\N	Ensino Técnico Completo	Brancos	Nenhuma	Carro	30 Km	Não	Aprovado	Pendente	2021-01-14	M202	2021-08-30 00:45:40.817298
699	matriculas	942	SUZETE SOLDERA CECHINATO	2005-02-02	Feminino	717844370	40065994407	\N	(54)9676-3434	(54)9103-6425	\N	Ensino fundamental Completo	\N	Ensino médio Completo	Pretos	Deficiência auditiva	Ônibus	5 Km	Sim	Pendente	Concluida	2021-02-05	M202	2021-08-30 00:45:40.817298
700	matriculas	984	PAULINE GOMES DE BITENCOURT	2005-05-07	Feminino	249374816	62888760444	\N	3291,1033	(54)9158-6369	\N	Ensino médio Incomplento	\N	Ensino Técnico Completo	Brancos	Nenhuma	Carro	10 Km	Não	Pendente	Pendente	2021-01-30	M202	2021-08-30 00:45:40.817298
701	matriculas	3	LAIS DE AZEVEDO	2003-01-16	Feminino	606335377	41289660422	\N	(54)3280-1178	(54)3291-3386	\N	Ensino superior Completo	\N	Ensino superior Completo	Brancos	Nenhuma	Ônibus	1 Km	Não	Aprovado	Pendente	2021-01-11	M301	2021-08-30 00:45:40.817298
702	matriculas	4	ESTÉFANI BOFFE DA COSTA	2004-10-19	Feminino	639935821	25785291118	\N	(54)3291-1286	(54)9113-3037	\N	Ensino Técnico Completo	\N	Ensino superior Incompleto	Pardos	Nenhuma	Ônibus	15 Km	Não	Aprovado	Concluida	2021-01-20	M301	2021-08-30 00:45:40.817298
703	matriculas	8	GESSICA RASADOR	2002-03-01	Feminino	723650622	84191055865	\N	(54)9694-8205	\N	\N	Ensino Técnico Completo	\N	Ensino médio Incomplento	Brancos	Nenhuma	A pé	30 Km	Não	Aprovado	Concluida	2021-01-12	M301	2021-08-30 00:45:40.817298
704	matriculas	11	ALINE FABBRO	2004-09-08	Feminino	356448020	85784240977	\N	91821366	(54)3267-8052	\N	Ensino superior Completo	\N	Ensino médio Incomplento	Amarelos	Nenhuma	A pé	5 Km	Não	Aprovado	Concluida	2021-01-31	M301	2021-08-30 00:45:40.817298
705	matriculas	13	MARINES APARECIDA CHINELATO	2003-01-10	Feminino	581264387	49335653810	\N	(54)3291-1056	\N	\N	Ensino médio Completo	\N	Ensino fundamental Completo	Pardos	Nenhuma	A pé	1 Km	Sim	Aprovado	Concluida	2021-02-07	M301	2021-08-30 00:45:40.817298
706	matriculas	21	TEREZINHA MACHADO DA SILVEIRA	2003-03-08	Feminino	536941715	97229290866	\N	(54)3291-4462	(54)9688-1394	\N	Ensino médio Incomplento	\N	Ensino médio Incomplento	Indígenas	Nenhuma	A pé	1 Km	Não	Aprovado	Concluida	2021-01-27	M301	2021-08-30 00:45:40.817298
707	matriculas	22	BERNARDO TOLARDO	2002-11-29	Masculino	711636694	63140247121	\N	(54)3291-3572	(54)3235-5133	\N	Ensino Técnico Incompleto	\N	Ensino fundamental Incomplento	Indígenas	Nenhuma	Ônibus	5 Km	Não	Aprovado	Pendente	2021-01-17	M301	2021-08-30 00:45:40.817298
708	matriculas	23	SARAH PEREIRA	2000-10-27	Feminino	129056665	54943366026	\N	(54)9647-9642	(54)3267-8001	\N	Ensino fundamental Completo	\N	Ensino Técnico Completo	Amarelos	Nenhuma	Ônibus	5 Km	Não	Aprovado	Concluida	2021-01-30	M301	2021-08-30 00:45:40.817298
709	matriculas	25	MARCO ANTONIO G. CIOATO	2000-09-12	Masculino	287802809	84568420322	\N	(54)9188-2631	(54)9995-4043	\N	Ensino fundamental Completo	\N	Ensino médio Incomplento	Brancos	Nenhuma	A pé	5 Km	Não	Aprovado	Pendente	2021-01-11	M301	2021-08-30 00:45:40.817298
710	matriculas	33	MARLENE GORETTI CASSÃO DALSOTTO	2003-09-25	Feminino	662440567	41923435056	\N	3291-3380	(54)9706-6113	\N	Ensino superior Incompleto	\N	Ensino superior Completo	Amarelos	Nenhuma	Ônibus	15 Km	Não	Aprovado	Concluida	2021-01-27	M301	2021-08-30 00:45:40.817298
711	matriculas	35	MARINES SCARMIN SPIGOLON	2004-04-29	Feminino	202471726	94427422255	\N	99299628	(54)3291-5340	\N	Ensino médio Completo	\N	Ensino Técnico Incompleto	Pretos	Nenhuma	Carro	5 Km	Não	Pendente	Pendente	2021-02-08	M301	2021-08-30 00:45:40.817298
712	matriculas	36	LENIR EVA FONGARO	2002-09-04	Masculino	961734399	72110296266	\N	(54)9126-1172	(54)9187-2328	\N	Ensino médio Completo	\N	Ensino superior Completo	Amarelos	Deficiência visual	Carro	1 Km	Não	Aprovado	Concluida	2021-02-01	M301	2021-08-30 00:45:40.817298
713	matriculas	37	ANDRÉ BRESOLIN	2003-06-11	Masculino	229333010	80947153464	\N	(54)3291-1406	(55)9911-8386	\N	Ensino fundamental Completo	\N	Ensino fundamental Incomplento	Amarelos	Nenhuma	Ônibus	10 Km	Sim	Aprovado	Concluida	2021-01-21	M301	2021-08-30 00:45:40.817298
714	matriculas	39	LEONARDO GOBI	2002-04-09	Masculino	959209566	54471590969	\N	(54)3291-4264	96087998	\N	Ensino Técnico Completo	\N	Ensino Técnico Completo	Indígenas	Nenhuma	Ônibus	5 Km	Não	Aprovado	Pendente	2021-02-04	M301	2021-08-30 00:45:40.817298
715	matriculas	44	FABIANO REZER	2002-10-10	Masculino	522771299	64097909430	\N	(54)9152-5666	3291-5115	\N	Ensino Técnico Incompleto	\N	Ensino Técnico Completo	Brancos	Nenhuma	A pé	30 Km	Não	Pendente	Concluida	2021-01-11	M301	2021-08-30 00:45:40.817298
716	matriculas	45	ELIANE MASCARELLO BALARDIN	2001-01-11	Feminino	983354446	46333000288	\N	(54)3291-9162	91103885	\N	Ensino Técnico Incompleto	\N	Ensino fundamental Incomplento	Amarelos	Nenhuma	A pé	15 Km	Não	Pendente	Concluida	2021-01-30	M301	2021-08-30 00:45:40.817298
717	matriculas	51	LUCAS CAMPOS DA SILVA	2004-03-15	Masculino	473017944	10250803153	\N	3291-4124	32913990	\N	Ensino fundamental Completo	\N	Ensino superior Incompleto	Pardos	Nenhuma	Ônibus	15 Km	Não	Aprovado	Pendente	2021-02-04	M301	2021-08-30 00:45:40.817298
718	matriculas	52	MARCOS FELIPE ZAMPIROLO	2001-12-07	Masculino	489682018	78890528444	\N	(54)3291-1643	96042521	\N	Ensino superior Incompleto	\N	Ensino Técnico Incompleto	Pardos	Nenhuma	Carro	15 Km	Não	Aprovado	Concluida	2021-01-21	M301	2021-08-30 00:45:40.817298
719	matriculas	53	GABRIEL CASAROTTO	2000-12-26	Masculino	234757356	78939663422	\N	(54)3291-9049	(54)9964-0807	\N	Ensino Técnico Completo	\N	Ensino fundamental Incomplento	Brancos	Nenhuma	A pé	5 Km	Não	Aprovado	Concluida	2021-01-24	M301	2021-08-30 00:45:40.817298
720	matriculas	57	ENZO BALLARDIN ARCARO	2002-06-24	Masculino	680493853	77685748363	\N	(54)3291-2359	3291-7253	\N	Ensino fundamental Completo	\N	Ensino médio Completo	Pretos	Nenhuma	Ônibus	15 Km	Não	Aprovado	Concluida	2021-01-13	M301	2021-08-30 00:45:40.817298
721	matriculas	61	SALETE FORTUNATTI TORRESAN	2000-11-30	Feminino	708561557	64986066985	\N	(54)3291-3842	(54)3291-1011	\N	Ensino médio Incomplento	\N	Ensino fundamental Completo	Pardos	Nenhuma	Ônibus	5 Km	Não	Aprovado	Concluida	2021-02-04	M301	2021-08-30 00:45:40.817298
722	matriculas	64	CLEIDE MARTA FRANCESCHINI	2004-03-07	Feminino	306174661	67272111047	\N	(54)3291-1654	32678109	\N	Ensino médio Incomplento	\N	Ensino fundamental Completo	Amarelos	Nenhuma	Carro	15 Km	Não	Aprovado	Concluida	2021-02-08	M301	2021-08-30 00:45:40.817298
723	matriculas	78	WILSON ALVES PEREIRA	2000-05-01	Masculino	805819503	73147496120	\N	(54)9941-5564	32914402	\N	Ensino médio Completo	\N	Ensino fundamental Incomplento	Pretos	Nenhuma	Carro	1 Km	Não	Aprovado	Pendente	2021-01-26	M301	2021-08-30 00:45:40.817298
724	matriculas	85	FELIPE CAPELETTI MICHELLON	2004-07-28	Masculino	944017411	78822290779	\N	(54)9124-1057	(54)9159-4399	\N	Ensino Técnico Incompleto	\N	Ensino fundamental Incomplento	Brancos	Nenhuma	Ônibus	15 Km	Sim	Pendente	Concluida	2021-01-21	M301	2021-08-30 00:45:40.817298
725	matriculas	87	EDUARDO DA ROSA FONGARO	2001-06-16	Masculino	295352157	95156921473	\N	(54)9910-8055	3291-2731	\N	Ensino fundamental Incomplento	\N	Ensino fundamental Incomplento	Brancos	Nenhuma	Moto	1 Km	Não	Aprovado	Pendente	2021-01-30	M301	2021-08-30 00:45:40.817298
726	matriculas	89	ROSANE P. GALLIO BAZZI	2003-09-12	Feminino	375036328	35546507941	\N	(54)3291-2227	32914402	\N	Ensino fundamental Incomplento	\N	Ensino fundamental Completo	Brancos	Nenhuma	Ônibus	50 Km	Não	Aprovado	Pendente	2021-01-21	M301	2021-08-30 00:45:40.817298
727	matriculas	92	ARILDE MARIA CIOATO MASCARELLO	2001-08-04	Feminino	562631193	13086249305	\N	(54)9148-8737	91826816	\N	Ensino Técnico Completo	\N	Ensino médio Completo	Pardos	Nenhuma	A pé	1 Km	Não	Aprovado	Concluida	2021-01-17	M302	2021-08-30 00:45:40.817298
728	matriculas	93	JOSE ANTONIO LOPES	2002-12-24	Masculino	489021386	14123442489	\N	(54)3291-1120	32912991	\N	Ensino fundamental Completo	\N	Ensino médio Completo	Pretos	Nenhuma	Ônibus	50 Km	Sim	Reprovou	Concluida	2021-01-29	M302	2021-08-30 00:45:40.817298
729	matriculas	95	VALDOIR VILMAR PELLIZZONI	2002-10-14	Masculino	813310897	31472635861	\N	(54)9641-1225	91628397	\N	Ensino Técnico Completo	\N	Ensino fundamental Completo	Brancos	Nenhuma	Ônibus	1 Km	Não	Aprovado	Concluida	2021-01-29	M302	2021-08-30 00:45:40.817298
730	matriculas	104	BRUNA BONELLA	2001-09-27	Feminino	177197799	12783866823	\N	(54)3291-8200	(54)3291-3208	\N	Ensino médio Completo	\N	Ensino Técnico Incompleto	Amarelos	Nenhuma	Ônibus	10 Km	Não	Aprovado	Concluida	2021-02-04	M302	2021-08-30 00:45:40.817298
731	matriculas	108	ROBINSON CLEI RIBEIRO	2003-05-14	Masculino	985328330	42546573659	\N	(54)3291-9848	(54)9991-7097	\N	Ensino médio Completo	\N	Ensino fundamental Incomplento	Pretos	Nenhuma	A pé	1 Km	Não	Aprovado	Concluida	2021-01-30	M302	2021-08-30 00:45:40.817298
732	matriculas	113	ANDERSON MARQUES BOEIRA SANTOS	2000-12-23	Masculino	868321220	42823656114	\N	(54)3291-1113	32912180	\N	Ensino fundamental Incomplento	\N	Ensino superior Completo	Pardos	Nenhuma	Carro	1 Km	Não	Pendente	Concluida	2021-01-22	M302	2021-08-30 00:45:40.817298
733	matriculas	114	ANDREZA RIZZON	2002-06-04	Feminino	849325015	55074067917	\N	(54)3291-4096	32913194	\N	Ensino médio Completo	\N	Ensino médio Completo	Brancos	Nenhuma	Carro	30 Km	Não	Aprovado	Pendente	2021-01-18	M302	2021-08-30 00:45:40.817298
734	matriculas	115	ROSANE SIMIONI	2004-04-06	Feminino	574985300	79523872520	\N	(54)3291-9802	(54)9156-3700	\N	Ensino superior Completo	\N	Ensino fundamental Incomplento	Brancos	Nenhuma	Ônibus	1 Km	Não	Pendente	Pendente	2021-01-15	M302	2021-08-30 00:45:40.817298
735	matriculas	118	ROSVALDO MARIA BONI	2000-12-31	Masculino	825367777	66596889291	\N	(54)9146-4854	(54)3291-3886	\N	Ensino superior Incompleto	\N	Ensino superior Incompleto	Amarelos	Nenhuma	Carro	1 Km	Não	Reprovou	Concluida	2021-01-16	M302	2021-08-30 00:45:40.817298
736	matriculas	119	ROSELEI  MODESTO CARARO BONI	2000-05-05	Feminino	299148987	65703663246	\N	(54)9605-2397	(54)9200-3892	\N	Ensino fundamental Completo	\N	Ensino médio Completo	Amarelos	Nenhuma	A pé	10 Km	Sim	Aprovado	Pendente	2021-01-21	M302	2021-08-30 00:45:40.817298
737	matriculas	120	SEBASTIÃO OSNI MACHADO	2001-07-25	Masculino	979500173	24150807561	\N	(54)9988-3469	(54)3291-5096	\N	Ensino médio Completo	\N	Ensino fundamental Incomplento	Brancos	Nenhuma	Bicicleta	5 Km	Não	Aprovado	Concluida	2021-01-16	M302	2021-08-30 00:45:40.817298
738	matriculas	125	ILZA SUZANA CORSO	2002-07-14	Feminino	796571314	24942280705	\N	(54)3291-3402	32911427	\N	Ensino superior Incompleto	\N	Ensino médio Completo	Pardos	Nenhuma	Ônibus	5 Km	Não	Aprovado	Concluida	2021-01-31	M302	2021-08-30 00:45:40.817298
739	matriculas	129	DEOVACIR CHINELATO	2004-11-28	Masculino	497020533	82820897238	\N	(54)9909-5012	(54)3291-3563	\N	Ensino médio Incomplento	\N	Ensino médio Completo	Amarelos	Nenhuma	A pé	5 Km	Não	Aprovado	Concluida	2021-01-28	M302	2021-08-30 00:45:40.817298
740	matriculas	133	RODRIGO SUSIN PELLIZZARI	2003-05-31	Masculino	836986009	86543671301	\N	(54)3291-5245	(54)3291-1627	\N	Ensino superior Incompleto	\N	Ensino médio Completo	Brancos	Nenhuma	A pé	1 Km	Sim	Aprovado	Concluida	2021-01-22	M302	2021-08-30 00:45:40.817298
741	matriculas	136	MARIA EDUARDA GULART	2003-05-12	Feminino	842721228	20198324730	\N	(54)9920-8653	3291-5321	\N	Ensino médio Incomplento	\N	Ensino superior Completo	Indígenas	Deficiência auditiva	Carro	5 Km	Sim	Aprovado	Concluida	2021-02-01	M302	2021-08-30 00:45:40.817298
742	matriculas	138	AMANDA ALMEIDA RAMOS	2004-03-15	Feminino	821425377	73888808738	\N	(54)9131-7241	(54)9634-3915	\N	Ensino fundamental Incomplento	\N	Ensino médio Completo	Pardos	Nenhuma	A pé	20 Km	Não	Aprovado	Pendente	2021-02-05	M302	2021-08-30 00:45:40.817298
743	matriculas	145	MARIA CLARA SLONGO	2004-03-02	Feminino	326391283	66291680737	\N	(54)9236-3617	(54)3291-2638	\N	Ensino médio Completo	\N	Ensino médio Completo	Pardos	Nenhuma	A pé	30 Km	Não	Aprovado	Concluida	2021-01-29	M302	2021-08-30 00:45:40.817298
744	matriculas	155	VITORIA LEMOS TREIN	2003-04-05	Feminino	154863521	42087066484	\N	(54)9923-0905	(54)9125-1832	\N	Ensino médio Completo	\N	Ensino superior Incompleto	Brancos	Nenhuma	A pé	1 Km	Sim	Aprovado	Concluida	2021-02-05	M302	2021-08-30 00:45:40.817298
745	matriculas	158	MARCOS VINÍCIUS DE OLIVEIRA	2001-11-19	Masculino	983654539	46514008979	\N	(54)9134-3295	(54)9929-6494	\N	Ensino Técnico Completo	\N	Ensino fundamental Incomplento	Indígenas	Deficiência motora	A pé	5 Km	Não	Pendente	Concluida	2021-01-31	M302	2021-08-30 00:45:40.817298
746	matriculas	160	LEONARDO BIANCHI LAZZARETTI	2002-07-03	Masculino	638330239	13077886108	\N	(54)9998-4921	(54)9661-6315	\N	Ensino Técnico Completo	\N	Ensino superior Incompleto	Brancos	Nenhuma	A pé	15 Km	Não	Aprovado	Concluida	2021-01-20	M302	2021-08-30 00:45:40.817298
747	matriculas	162	NAURA PRATES PERES	2000-12-03	Feminino	316825472	57178888538	\N	(54)9927-0238	(54)3291-1063	\N	Ensino superior Completo	\N	Ensino Técnico Incompleto	Pardos	Nenhuma	Ônibus	20 Km	Não	Reprovou	Concluida	2021-01-12	M302	2021-08-30 00:45:40.817298
748	matriculas	167	MAURICIO PARIZZOTTO	2001-09-22	Masculino	742771068	89320061279	\N	(54)9158-7847	(54)3291-2575	\N	Ensino médio Completo	\N	Ensino Técnico Incompleto	Pardos	Nenhuma	A pé	10 Km	Não	Pendente	Concluida	2021-01-21	M302	2021-08-30 00:45:40.817298
749	matriculas	169	FRANCIELE ROSELI DA SILVA	2004-08-02	Feminino	341091689	37530411634	\N	(54)9966-5301	32351603	\N	Ensino médio Completo	\N	Ensino superior Completo	Brancos	Nenhuma	A pé	20 Km	Não	Aprovado	Concluida	2021-02-07	M302	2021-08-30 00:45:40.817298
750	matriculas	170	WILLIAN LEANDRO COUTINHO	2002-05-08	Masculino	513246268	36265141542	\N	(54)3291-4764	(54)9114-7626	\N	Ensino médio Incomplento	\N	Ensino fundamental Incomplento	Brancos	Nenhuma	A pé	15 Km	Não	Aprovado	Pendente	2021-01-14	M302	2021-08-30 00:45:40.817298
751	matriculas	173	LURDES SCAIN FABRO	2000-02-15	Feminino	305546815	75187475098	\N	(54)9173-2696	32919071	\N	Ensino Técnico Completo	\N	Ensino médio Completo	Brancos	Nenhuma	Moto	5 Km	Não	Aprovado	Concluida	2021-01-29	M302	2021-08-30 00:45:40.817298
752	matriculas	176	GECI DE FATIMA ZAITZ DA SILVA	2000-12-13	Feminino	604416284	46411497432	\N	(54)9619-7187	91131103	\N	Ensino fundamental Incomplento	\N	Ensino médio Completo	Brancos	Nenhuma	Carro	15 Km	Não	Aprovado	Concluida	2021-01-10	M302	2021-08-30 00:45:40.817298
753	matriculas	184	ANGELA LOPES BONELLA	2001-05-19	Feminino	170012725	19345671534	\N	(54)9672-2421	(54)9144-3398	\N	Ensino fundamental Incomplento	\N	Ensino superior Completo	Pretos	Nenhuma	A pé	1 Km	Não	Pendente	Concluida	2021-01-15	M302	2021-08-30 00:45:40.817298
754	matriculas	188	MARIA EMILIA SOLDATELLI BORGHETTI	2001-02-17	Feminino	416392493	16816291324	\N	(54)9672-2421	32912729	\N	Ensino superior Incompleto	\N	Ensino superior Completo	Pardos	Nenhuma	Carro	15 Km	Não	Aprovado	Concluida	2021-01-18	M303	2021-08-30 00:45:40.817298
755	matriculas	189	NALANDA DE MARAFIGO	2000-09-09	Feminino	254817789	83166516607	\N	(54)9143-1175	3291-3023	\N	Ensino Técnico Incompleto	\N	Ensino fundamental Incomplento	Pardos	Nenhuma	Ônibus	5 Km	Não	Aprovado	Concluida	2021-01-23	M303	2021-08-30 00:45:40.817298
756	matriculas	191	LEONARDO FONGARO PEZZI	2000-05-28	Masculino	218294777	43538960805	\N	(54)9984-9222	91605865	\N	Ensino Técnico Completo	\N	Ensino fundamental Incomplento	Pretos	Nenhuma	A pé	5 Km	Não	Aprovado	Pendente	2021-01-13	M303	2021-08-30 00:45:40.817298
757	matriculas	192	EMANUEL RICARDO FERNANDES	2002-10-18	Masculino	459270198	29713165911	\N	(54)9112-8021	32916003	\N	Ensino Técnico Completo	\N	Ensino Técnico Incompleto	Pardos	Deficiência auditiva	A pé	15 Km	Não	Aprovado	Concluida	2021-01-30	M303	2021-08-30 00:45:40.817298
758	matriculas	194	ROGER LUIZ DE AZEVEDO	2001-05-09	Masculino	880194910	40803234295	\N	(54)9912-3405	32913766	\N	Ensino superior Completo	\N	Ensino superior Completo	Indígenas	Deficiência auditiva	Ônibus	1 Km	Não	Pendente	Concluida	2021-01-17	M303	2021-08-30 00:45:40.817298
759	matriculas	198	MARIA CRISTINA SCODRO MICHELON	2002-02-11	Feminino	622548976	34488343640	\N	(54)9711-0222	(54)3291-2527	\N	Ensino médio Incomplento	\N	Ensino médio Completo	Pardos	Nenhuma	Ônibus	1 Km	Não	Reprovou	Concluida	2021-01-27	M303	2021-08-30 00:45:40.817298
760	matriculas	202	GUSTAVO ASCARI STEDILE	2004-02-17	Masculino	723015365	26774344798	\N	(54)9646-2969	(54)3291-4425	\N	Ensino médio Incomplento	\N	Ensino fundamental Completo	Brancos	Nenhuma	Bicicleta	20 Km	Não	Aprovado	Concluida	2021-01-11	M303	2021-08-30 00:45:40.817298
761	matriculas	203	PEDRO ASCARI PEREIRA	2004-09-24	Masculino	191966776	81947351067	\N	(54)9618-2718	(54)9166-5307	\N	Ensino Técnico Completo	\N	Ensino superior Incompleto	Pardos	Nenhuma	Ônibus	15 Km	Não	Aprovado	Pendente	2021-02-04	M303	2021-08-30 00:45:40.817298
762	matriculas	204	FERNANDA CAMATTI	2000-07-13	Feminino	411597203	45118226730	\N	(54)9178-4490	(54)9673-1692	\N	Ensino Técnico Incompleto	\N	Ensino Técnico Incompleto	Pardos	Nenhuma	Carro	1 Km	Sim	Aprovado	Concluida	2021-02-01	M303	2021-08-30 00:45:40.817298
763	matriculas	206	OTÁVIO DEBOVI RECH	2002-07-20	Masculino	499564312	74987168314	\N	(54)9944-8589	(54)9611-6238	\N	Ensino fundamental Completo	\N	Ensino superior Incompleto	Pardos	Nenhuma	A pé	15 Km	Sim	Aprovado	Pendente	2021-01-17	M303	2021-08-30 00:45:40.817298
764	matriculas	209	ALEXANDRE MENEGUZZO	2001-01-23	Masculino	612616110	41902725293	\N	(54)3291-7534	3291-1762	\N	Ensino superior Completo	\N	Ensino fundamental Completo	Pardos	Nenhuma	A pé	5 Km	Não	Aprovado	Pendente	2021-01-18	M303	2021-08-30 00:45:40.817298
765	matriculas	211	 WILLIAM MENEGAZ PEIXOTO	2003-04-25	Masculino	360358593	78392677812	\N	(54)9124-4390	(54)3291-9004	\N	Ensino Técnico Completo	\N	Ensino médio Completo	Amarelos	Deficiência auditiva	Moto	15 Km	Não	Aprovado	Concluida	2021-01-24	M303	2021-08-30 00:45:40.817298
766	matriculas	218	INES A. MACEDO	2001-12-03	Feminino	976712537	40975248241	\N	(54)9145-7409	32912952	\N	Ensino médio Incomplento	\N	Ensino médio Completo	Brancos	Nenhuma	Carro	30 Km	Não	Aprovado	Concluida	2021-02-08	M303	2021-08-30 00:45:40.817298
767	matriculas	219	BRUNA DE OLIVEIRA	2000-07-08	Feminino	277641442	31010263854	\N	(54)9619-7187	32913628	\N	Ensino fundamental Incomplento	\N	Ensino Técnico Incompleto	Pardos	Nenhuma	A pé	1 Km	Não	Pendente	Concluida	2021-02-07	M303	2021-08-30 00:45:40.817298
768	matriculas	223	GABRIEL DEBOVI LISBOA	2004-05-13	Masculino	156707261	88821884501	\N	(54)3291-1089	(54)3291-3696	\N	Ensino Técnico Incompleto	\N	Ensino fundamental Completo	Pretos	Nenhuma	A pé	1 Km	Não	Reprovou	Concluida	2021-02-08	M303	2021-08-30 00:45:40.83278
769	matriculas	228	GUILHERME DE CASTILHOS MORAES	2004-04-10	Feminino	754836424	31199441821	\N	(54)9908-2143	(54)9207-4379	\N	Ensino Técnico Completo	\N	Ensino médio Incomplento	Brancos	Nenhuma	A pé	1 Km	Não	Aprovado	Concluida	2021-02-08	M303	2021-08-30 00:45:40.83278
770	matriculas	229	MARINA PESSINI	2002-03-19	Feminino	372347261	19966666314	\N	(11)1111-1111	(54)9632-9888	\N	Ensino médio Incomplento	\N	Ensino superior Incompleto	Amarelos	Nenhuma	A pé	15 Km	Não	Aprovado	Pendente	2021-01-17	M303	2021-08-30 00:45:40.83278
771	matriculas	231	LUCAS VANELLI TORRES	2000-10-06	Masculino	771178513	95838638773	\N	(54)9120-2867	(54)3280-1121	\N	Ensino médio Incomplento	\N	Ensino fundamental Incomplento	Brancos	Nenhuma	A pé	30 Km	Não	Aprovado	Concluida	2021-01-10	M303	2021-08-30 00:45:40.83278
772	matriculas	237	NEILA TÉLES RAMOS	2001-07-31	Feminino	182785670	70695690225	\N	(54)9184-9162	(54)3291-2951	\N	Ensino superior Incompleto	\N	Ensino superior Completo	Pardos	Nenhuma	Ônibus	1 Km	Não	Aprovado	Concluida	2021-01-29	M303	2021-08-30 00:45:40.83278
773	matriculas	238	MAURÍCIO VIEIRA VARGAS	2001-01-12	Masculino	649660987	19808342808	\N	(54)9924-7774	(54)3291-1480	\N	Ensino superior Incompleto	\N	Ensino médio Incomplento	Pretos	Nenhuma	A pé	10 Km	Não	Aprovado	Concluida	2021-01-29	M303	2021-08-30 00:45:40.83278
774	matriculas	239	RAFAELA RODRIGUES DE ANDRADE	2002-12-08	Feminino	373201266	49071864853	\N	(54)3291-4573	(54)3291-6334	\N	Ensino superior Completo	\N	Ensino superior Completo	Indígenas	Nenhuma	Bicicleta	30 Km	Sim	Aprovado	Concluida	2021-01-16	M303	2021-08-30 00:45:40.83278
775	matriculas	242	MATHEUS MASCARELLO	2000-03-29	Masculino	910269345	41484818369	\N	(54)9198-9824	(54)9940-5532	\N	Ensino superior Completo	\N	Ensino superior Incompleto	Brancos	Nenhuma	Carro	10 Km	Não	Aprovado	Concluida	2021-01-11	M303	2021-08-30 00:45:40.83278
776	matriculas	247	FABIO HENRIQUE ESPELOCIM	2003-02-02	Masculino	640133265	59658432570	\N	(48)9664-2736	(54)3291-4108	\N	Ensino Técnico Completo	\N	Ensino fundamental Incomplento	Indígenas	Nenhuma	Ônibus	15 Km	Sim	Aprovado	Concluida	2021-01-25	M303	2021-08-30 00:45:40.83278
777	matriculas	248	CATHARINA MAGRINI FERREIRA	2004-01-03	Feminino	271998249	50993182344	\N	(54)9215-2120	(54)9986-9124	\N	Ensino superior Completo	\N	Ensino fundamental Incomplento	Pretos	Nenhuma	Ônibus	15 Km	Não	Pendente	Concluida	2021-01-19	M303	2021-08-30 00:45:40.83278
778	matriculas	249	CASSIANO SANDI DE CASTILHOS	2003-01-26	Masculino	354640179	95740387181	\N	(54)9980-3834	(54)9152-5666	\N	Ensino Técnico Completo	\N	Ensino médio Completo	Pardos	Deficiência visual	A pé	1 Km	Não	Aprovado	Concluida	2021-01-10	M303	2021-08-30 00:45:40.83278
779	matriculas	258	MICHELLI SINSEN TURMINA	2003-06-17	Masculino	604915624	62072171314	\N	(54)9112-9256	(54)8144-2892	\N	Ensino fundamental Completo	\N	Ensino Técnico Incompleto	Amarelos	Nenhuma	Carro	5 Km	Não	Aprovado	Concluida	2021-01-23	M303	2021-08-30 00:45:40.83278
780	matriculas	259	MOISÉS GOZZI	2003-10-07	Masculino	651406310	32226239079	\N	(54)9643-0153	(54)9608-2878	\N	Ensino superior Incompleto	\N	Ensino médio Incomplento	Brancos	Deficiência auditiva	Carro	30 Km	Não	Aprovado	Concluida	2021-01-13	M303	2021-08-30 00:45:40.83278
781	matriculas	261	PEDRO HENRIQUE RONCEN VIER	2016-06-25	Masculino	328710457	45247289364	\N	(54)9109-5382	(00)0000-0000	\N	Ensino médio Incomplento	\N	Ensino fundamental Incomplento	Brancos	Deficiência auditiva	A pé	20 Km	Não	Aprovado	Concluida	2021-01-12	Pr04	2021-08-30 00:45:40.83278
782	matriculas	262	WILLIAM RIBEIRO DE SOUZA	2016-11-11	Masculino	753293205	26953319270	\N	(54)9660-5993	(54)9184-2832	\N	Ensino médio Incomplento	\N	Ensino superior Completo	Pardos	Nenhuma	Carro	1 Km	Sim	Reprovou	Concluida	2021-01-15	Pr04	2021-08-30 00:45:40.83278
783	matriculas	270	MAURICIO ALBERTO CASAGRANDA BOLZAN	2016-07-06	Masculino	393718388	23866430650	\N	(54)3291-2376	91383922	\N	Ensino Técnico Incompleto	\N	Ensino Técnico Completo	Amarelos	Nenhuma	A pé	15 Km	Não	Aprovado	Concluida	2021-02-04	Pr04	2021-08-30 00:45:40.83278
784	matriculas	272	VANDERLEI DE CASTILHOS FILHO	2016-05-27	Masculino	396882912	59063403666	\N	(54)3291-1310	3291-1862	\N	Ensino médio Completo	\N	Ensino Técnico Incompleto	Pardos	Nenhuma	Carro	20 Km	Não	Aprovado	Concluida	2021-01-29	Pr04	2021-08-30 00:45:40.83278
785	matriculas	283	ELISA FATIMA GUERRA	2016-02-08	Feminino	313789617	72099019177	\N	(54)9698-5318	32911763	\N	Ensino superior Incompleto	\N	Ensino Técnico Incompleto	Brancos	Nenhuma	Ônibus	5 Km	Sim	Reprovou	Concluida	2021-01-13	Pr04	2021-08-30 00:45:40.83278
786	matriculas	291	ALINE LAIS DONBROWSKI	2016-12-19	Feminino	496429013	76255382548	\N	(54)3291-3822	(54)9633-3723	\N	Ensino superior Incompleto	\N	Ensino médio Incomplento	Pardos	Nenhuma	Ônibus	15 Km	Não	Aprovado	Concluida	2021-02-03	Pr04	2021-08-30 00:45:40.83278
787	matriculas	293	JHIOVANA FONSECA MATAURO	2016-09-06	Feminino	257800841	56043214030	\N	(54)3291-4102	(54)3504-1247	\N	Ensino superior Incompleto	\N	Ensino Técnico Incompleto	Pardos	Nenhuma	Ônibus	5 Km	Não	Aprovado	Concluida	2021-01-26	Pr04	2021-08-30 00:45:40.83278
788	matriculas	296	BRUNA VANIN VIEIRA	2016-09-04	Feminino	493647519	29652642045	\N	(54)3291-4223	(54)3291-4357	\N	Ensino médio Incomplento	\N	Ensino superior Completo	Amarelos	Nenhuma	Ônibus	5 Km	Não	Aprovado	Concluida	2021-02-04	Pr04	2021-08-30 00:45:40.83278
789	matriculas	297	LAIS EDUARDA BARBOSA PICETTI	2016-08-07	Feminino	819869174	66668676998	\N	(54)8144-2892	(54)3291-9011	\N	Ensino Técnico Completo	\N	Ensino Técnico Completo	Pardos	Deficiência auditiva	Ônibus	5 Km	Não	Aprovado	Concluida	2021-01-20	Pr04	2021-08-30 00:45:40.83278
790	matriculas	299	ANA LARA MIOTTO JUNQUEIRA	2016-07-14	Feminino	915768273	14795381266	\N	(54)3291-2852	(54)3280-1228	\N	Ensino Técnico Completo	\N	Ensino Técnico Completo	Brancos	Nenhuma	A pé	50 Km	Não	Reprovou	Concluida	2021-02-06	Pr04	2021-08-30 00:45:40.83278
791	matriculas	300	FERNANDO LUIZ RECH	2016-03-16	Masculino	534812304	64373378941	\N	(54)3291-4598	(54)3291-1081	\N	Ensino superior Incompleto	\N	Ensino médio Completo	Pardos	Nenhuma	Ônibus	15 Km	Não	Aprovado	Concluida	2021-01-27	Pr04	2021-08-30 00:45:40.83278
792	matriculas	301	RAFAEL RIZZON	2016-12-08	Masculino	411031636	17589400820	\N	3291-2664	(54)9614-4765	\N	Ensino fundamental Incomplento	\N	Ensino Técnico Completo	Pretos	Nenhuma	Carro	15 Km	Não	Pendente	Concluida	2021-01-17	Pr04	2021-08-30 00:45:40.83278
793	matriculas	302	VITORIA CAETANO FERRARI BIBERG	2016-10-08	Feminino	932003042	46333465188	\N	99322231	(54)9617-3698	\N	Ensino Técnico Completo	\N	Ensino superior Incompleto	Pardos	Nenhuma	A pé	1 Km	Não	Aprovado	Concluida	2021-01-19	Pr04	2021-08-30 00:45:40.83278
794	matriculas	304	ALEXANDRE DAVI DE JESUS DE OLIVEIRA	2016-07-31	Masculino	262938113	47296105751	\N	(54)9646-7796	(54)9175-5073	\N	Ensino superior Incompleto	\N	Ensino Técnico Incompleto	Brancos	Nenhuma	Ônibus	20 Km	Não	Aprovado	Concluida	2021-01-15	Pr04	2021-08-30 00:45:40.83278
795	matriculas	308	CHAIANE SULIANI EVES	2016-03-25	Feminino	614121175	97859971626	\N	(54)9944-8589	(54)3291-1821	\N	Ensino superior Completo	\N	Ensino fundamental Incomplento	Pardos	Nenhuma	Ônibus	5 Km	Não	Aprovado	Pendente	2021-01-18	Pr04	2021-08-30 00:45:40.83278
796	matriculas	309	STEFANI DE CASTILHOS	2016-02-07	Feminino	773728115	57995271644	\N	3291-3919	(54)3291-6500	\N	Ensino Técnico Completo	\N	Ensino fundamental Completo	Pardos	Deficiência visual	A pé	10 Km	Sim	Reprovou	Concluida	2021-02-01	Pr04	2021-08-30 00:45:40.83278
797	matriculas	318	GISELE MARTINS DA COSTA	2015-09-12	Feminino	138870311	32196800014	\N	(54)3291-3821	(54)3291-2559	\N	Ensino fundamental Incomplento	\N	Ensino Técnico Incompleto	Pretos	Nenhuma	Ônibus	1 Km	Não	Aprovado	Pendente	2021-01-11	104	2021-08-30 00:45:40.83278
798	matriculas	319	ISADORA BROCHETTO	2015-12-08	Feminino	821520968	39269719087	\N	(54)8448-6282	(54)3291-6505	\N	Ensino superior Incompleto	\N	Ensino superior Completo	Pardos	Nenhuma	Ônibus	20 Km	Não	Aprovado	Pendente	2021-02-03	104	2021-08-30 00:45:40.83278
799	matriculas	326	RODRIGO TOMIELO	2015-12-05	Masculino	250608236	27252362119	\N	(54)9187-4882	(54)3291-5302	\N	Ensino Técnico Incompleto	\N	Ensino fundamental Incomplento	Pardos	Nenhuma	Bicicleta	1 Km	Não	Aprovado	Concluida	2021-01-10	104	2021-08-30 00:45:40.83278
800	matriculas	327	JOICI RIZZO	2015-11-08	Feminino	384463948	82397914902	\N	(54)3291-6399	(54)3291-2246	\N	Ensino superior Incompleto	\N	Ensino Técnico Incompleto	Pardos	Nenhuma	A pé	15 Km	Não	Aprovado	Concluida	2021-01-21	104	2021-08-30 00:45:40.83278
801	matriculas	330	FELIPE DAL PRA	2015-10-31	Masculino	715578635	42670694950	\N	(54)9980-1450	(54)9130-4871	\N	Ensino Técnico Completo	\N	Ensino fundamental Incomplento	Amarelos	Nenhuma	Ônibus	30 Km	Não	Aprovado	Concluida	2021-01-15	104	2021-08-30 00:45:40.83278
802	matriculas	334	DANRLEI PREBIANCA LEITE	2015-06-10	Masculino	650576678	17811670369	\N	(54)9657-8636	(54)3291-3821	\N	Ensino superior Incompleto	\N	Ensino fundamental Incomplento	Indígenas	Nenhuma	Ônibus	5 Km	Não	Aprovado	Concluida	2021-02-08	104	2021-08-30 00:45:40.83278
803	matriculas	336	JONI MATEUS FOCHESATO	2015-02-21	Masculino	525406554	75640603052	\N	\N	(54)9115-7283	\N	Ensino superior Incompleto	\N	Ensino fundamental Completo	Brancos	Nenhuma	Carro	20 Km	Não	Reprovou	Pendente	2021-01-21	104	2021-08-30 00:45:40.83278
804	matriculas	341	LEONARDO SOBOLESWKI FLORES	2015-11-06	Masculino	973427781	65663209113	\N	(54)9197-9015	(  )    -	\N	Ensino superior Completo	\N	Ensino fundamental Completo	Indígenas	Nenhuma	Moto	1 Km	Não	Aprovado	Concluida	2021-01-31	104	2021-08-30 00:45:40.83278
805	matriculas	347	MARIA EDUARDA DE JESUS	2015-04-14	Feminino	202219218	84053131201	\N	(54)3280-1235	(54)9984-4473	\N	Ensino Técnico Completo	\N	Ensino médio Incomplento	Pardos	Deficiência visual	Ônibus	15 Km	Não	Aprovado	Concluida	2021-02-08	104	2021-08-30 00:45:40.83278
806	matriculas	349	RAQUEL SOGARI	2015-09-16	Feminino	886861630	92823391436	\N	(54)9967-5026	(54)9946-4957	\N	Ensino fundamental Incomplento	\N	Ensino médio Completo	Pardos	Nenhuma	A pé	30 Km	Não	Aprovado	Concluida	2021-01-24	104	2021-08-30 00:45:40.83278
807	matriculas	357	VANESSA COUSSEAU	2015-09-15	Feminino	510474654	69173158494	\N	(54)9600-0808	(54)9144-2543	\N	Ensino fundamental Completo	\N	Ensino fundamental Incomplento	Indígenas	Nenhuma	Ônibus	15 Km	Sim	Pendente	Concluida	2021-01-25	104	2021-08-30 00:45:40.83278
808	matriculas	364	ALICE TERESA DA SILVA	2015-06-08	Feminino	547675630	10807519275	\N	(54)3291-2833	\N	\N	Ensino superior Incompleto	\N	Ensino superior Incompleto	Brancos	Nenhuma	Carro	15 Km	Não	Reprovou	Concluida	2021-01-14	104	2021-08-30 00:45:40.83278
809	matriculas	366	MIRELA CECILIA SOLDERA	2015-10-09	Feminino	457375317	86001024931	\N	99225519	(54)3291-6334	\N	Ensino fundamental Completo	\N	Ensino Técnico Incompleto	Pretos	Nenhuma	Carro	1 Km	Não	Aprovado	Concluida	2021-01-10	104	2021-08-30 00:45:40.83278
810	matriculas	367	RICARDO BURATTI	2015-04-13	Masculino	489195710	57956399099	\N	(54)9939-3427	(54)9209-5725	\N	Ensino Técnico Incompleto	\N	Ensino fundamental Completo	Brancos	Nenhuma	Moto	10 Km	Não	Aprovado	Pendente	2021-02-01	104	2021-08-30 00:45:40.83278
811	matriculas	370	ROSANA DE FÁTIMA PIRES	2015-11-20	Feminino	718567026	22503994279	\N	(54)9102-7368	(54)3291-2248	\N	Ensino fundamental Completo	\N	Ensino médio Incomplento	Brancos	Nenhuma	Carro	1 Km	Não	Aprovado	Concluida	2021-02-07	104	2021-08-30 00:45:40.83278
812	matriculas	371	VIVIANE DE SOUZA MOTA DE ALMEIDA PAZ	2015-03-04	Feminino	312747304	55157430943	\N	(54)9148-9083	(54)9120-8314	\N	Ensino Técnico Incompleto	\N	Ensino fundamental Completo	Brancos	Nenhuma	A pé	15 Km	Não	Pendente	Pendente	2021-02-03	104	2021-08-30 00:45:40.83278
813	matriculas	374	JUSIANE CASAGRANDA	2014-09-30	Feminino	929253734	79682807806	\N	(54)9642-9391	(54)9971-3239	\N	Ensino Técnico Completo	\N	Ensino fundamental Incomplento	Brancos	Paralisia cerebral	Moto	20 Km	Sim	Aprovado	Concluida	2021-01-25	203	2021-08-30 00:45:40.83278
814	matriculas	375	EVELYN TREVISAN	2014-06-06	Feminino	176304481	61515987537	\N	(54)9977-8364	(54)3291-6104	\N	Ensino fundamental Completo	\N	Ensino médio Completo	Brancos	Nenhuma	Ônibus	10 Km	Não	Aprovado	Concluida	2021-01-15	203	2021-08-30 00:45:40.83278
815	matriculas	376	THIAGO EDSON DE MELLO POZZO	2014-10-07	Masculino	701521336	27752239906	\N	(54)9135-4818	(54)3291-6104	\N	Ensino médio Incomplento	\N	Ensino Técnico Completo	Pardos	Nenhuma	Ônibus	30 Km	Não	Aprovado	Pendente	2021-01-22	203	2021-08-30 00:45:40.83278
816	matriculas	391	KAUAN VARELA ZANELA	2014-04-29	Masculino	332739460	11854657858	\N	(54)9999-5783	(54)9941-9604	\N	Ensino médio Incomplento	\N	Ensino fundamental Completo	Brancos	Nenhuma	Ônibus	15 Km	Não	Pendente	Concluida	2021-02-06	203	2021-08-30 00:45:40.83278
817	matriculas	393	TIAGO ZULIAN DALLAGNOL	2014-01-16	Masculino	419711178	47623149645	\N	(54)9953-3134	(54)3267-8061	\N	Ensino Técnico Completo	\N	Ensino médio Completo	Pardos	Deficiência auditiva	Ônibus	5 Km	Não	Aprovado	Concluida	2021-01-31	203	2021-08-30 00:45:40.83278
818	matriculas	394	LUCAS DA SILVA SANTOS	2014-03-18	Masculino	105480046	81498847250	\N	(54)9996-1381	(54)9119-6270	\N	Ensino Técnico Completo	\N	Ensino Técnico Incompleto	Amarelos	Nenhuma	A pé	30 Km	Não	Aprovado	Concluida	2021-01-12	203	2021-08-30 00:45:40.83278
819	matriculas	399	ANTONIO AUGUSTO DE MACEDO	2014-04-28	Masculino	554287705	72525500398	\N	(54)9695-3874	(54)9157-0079	\N	Ensino Técnico Incompleto	\N	Ensino fundamental Completo	Pretos	Nenhuma	Carro	15 Km	Não	Aprovado	Concluida	2021-01-22	203	2021-08-30 00:45:40.83278
820	matriculas	400	LUCIA DE OLIVEIRA PAULA	2014-12-16	Feminino	707411881	92286455689	\N	(54)3291-6411	(54)8116-8716	\N	Ensino Técnico Incompleto	\N	Ensino fundamental Completo	Brancos	Paralisia cerebral	Ônibus	1 Km	Sim	Aprovado	Concluida	2021-01-17	203	2021-08-30 00:45:40.83278
821	matriculas	402	AUGUSTO RIZZON BUGANÇA	2014-01-22	Masculino	860056235	90784407183	\N	(54)9682-1138	(54)3291-2420	\N	Ensino superior Completo	\N	Ensino fundamental Incomplento	Indígenas	Nenhuma	Carro	5 Km	Não	Pendente	Concluida	2021-02-08	203	2021-08-30 00:45:40.83278
822	matriculas	406	LUIZA LORENTZ	2014-07-26	Feminino	762275311	19970110260	\N	(54)3280-1005	(54)3291-1331	\N	Ensino superior Incompleto	\N	Ensino Técnico Incompleto	Pardos	Nenhuma	A pé	20 Km	Não	Aprovado	Concluida	2021-01-17	203	2021-08-30 00:45:40.83278
823	matriculas	418	REICARD PELIZZONI	2014-06-06	Masculino	224290314	58826564550	\N	(54)9607-8774	(54)9954-3168	\N	Ensino superior Incompleto	\N	Ensino superior Completo	Pardos	Nenhuma	Carro	10 Km	Não	Aprovado	Concluida	2021-01-25	203	2021-08-30 00:45:40.83278
824	matriculas	422	KATIELE BORGES DE CAMARGO	2014-10-01	Feminino	871024891	44078342241	\N	(54)3291-3554	32911415	\N	Ensino fundamental Completo	\N	Ensino superior Incompleto	Brancos	Nenhuma	A pé	1 Km	Não	Aprovado	Concluida	2021-01-20	203	2021-08-30 00:45:40.83278
825	matriculas	424	ADRIELI DA SILVA RODRIGUES	2014-07-25	Feminino	805567326	11847171750	\N	(54)3235-5099	(54)3291-2087	\N	Ensino superior Completo	\N	Ensino fundamental Incomplento	Brancos	Deficiência auditiva	Moto	1 Km	Não	Aprovado	Pendente	2021-02-05	203	2021-08-30 00:45:40.83278
826	matriculas	428	MARIA TEREZINHA DRAGO CIOATO	2014-02-25	Feminino	182137303	99541182412	\N	(54)9960-7595	(54)3291-1638	\N	Ensino superior Incompleto	\N	Ensino fundamental Incomplento	Brancos	Nenhuma	Ônibus	20 Km	Não	Aprovado	Concluida	2021-01-23	203	2021-08-30 00:45:40.83278
827	matriculas	430	TAÍNE FABRO MARTININGUI	2014-09-17	Feminino	877652083	23997472629	\N	(54)9645-0824	(54)3291-1364	\N	Ensino superior Incompleto	\N	Ensino superior Completo	Brancos	Nenhuma	A pé	5 Km	Não	Aprovado	Concluida	2021-01-16	203	2021-08-30 00:45:40.83278
828	matriculas	431	FRANCO HENRIQUE GOZZI MARTINI	2014-02-03	Masculino	615611390	84062259320	\N	(54)9132-4493	(54)9138-4633	\N	Ensino médio Incomplento	\N	Ensino Técnico Incompleto	Amarelos	Nenhuma	Ônibus	1 Km	Não	Pendente	Concluida	2021-01-19	203	2021-08-30 00:45:40.83278
829	matriculas	433	BRUNO VIEIRA DA SILVA	2013-04-22	Masculino	956392773	76860005255	\N	(54)9924-0026	(54)3291-3772	\N	Ensino Técnico Incompleto	\N	Ensino superior Completo	Pardos	Nenhuma	Carro	5 Km	Não	Reprovou	Pendente	2021-02-02	304	2021-08-30 00:45:40.83278
830	matriculas	438	LUCIANA DE LIMA CARRARO	2013-06-12	Feminino	684098585	13382197736	\N	(54)9647-2502	(54)9111-9117	\N	Ensino Técnico Incompleto	\N	Ensino superior Completo	Brancos	Nenhuma	Ônibus	30 Km	Não	Aprovado	Concluida	2021-01-28	304	2021-08-30 00:45:40.83278
831	matriculas	439	VITÓRIA FANTIN	2013-02-08	Feminino	899900620	63531828949	\N	(54)9668-8158	(54)9170-4670	\N	Ensino superior Completo	\N	Ensino superior Incompleto	Amarelos	Nenhuma	Ônibus	30 Km	Não	Pendente	Concluida	2021-02-08	304	2021-08-30 00:45:40.83278
832	matriculas	442	ANDERSON RIZZO	2013-11-01	Masculino	904022282	23031784076	\N	(54)9676-6597	(54)9949-6496	\N	Ensino superior Completo	\N	Ensino Técnico Incompleto	Brancos	Nenhuma	Carro	20 Km	Não	Pendente	Pendente	2021-01-29	304	2021-08-30 00:45:40.83278
833	matriculas	443	LAURA ESTÉFANI R. DOS SANTOS	2013-12-30	Feminino	612223957	80999785998	\N	(54)3291-2927	3280-1119	\N	Ensino Técnico Incompleto	\N	Ensino fundamental Incomplento	Pardos	Nenhuma	Carro	5 Km	Não	Aprovado	Pendente	2021-02-01	304	2021-08-30 00:45:40.83278
834	matriculas	445	ISADORA MAGRIN	2013-10-21	Feminino	456796550	71854042336	\N	(54)9955-5722	32914627	\N	Ensino médio Completo	\N	Ensino médio Completo	Amarelos	Nenhuma	Carro	1 Km	Sim	Reprovou	Concluida	2021-01-15	304	2021-08-30 00:45:40.83278
835	matriculas	451	VITORIA GOMES LINS	2013-04-11	Feminino	573911841	66319161806	\N	(54)9214-3666	3291-6318	\N	Ensino Técnico Incompleto	\N	Ensino superior Incompleto	Indígenas	Nenhuma	Ônibus	30 Km	Sim	Aprovado	Pendente	2021-02-07	304	2021-08-30 00:45:40.83278
836	matriculas	452	GUSTAVO DE L. LOURENÇO	2013-04-24	Masculino	354042513	74831337894	\N	(54)9602-5463	(54)9922-3101	\N	Ensino médio Incomplento	\N	Ensino fundamental Completo	Amarelos	Nenhuma	Moto	10 Km	Não	Pendente	Concluida	2021-01-10	304	2021-08-30 00:45:40.83278
837	matriculas	453	JOÃO PEDRO BOLZAN CAPELLETI	2013-09-30	Feminino	873932458	46160218748	\N	(54)9101-7040	(54)9177-2667	\N	Ensino Técnico Completo	\N	Ensino superior Incompleto	Pretos	Nenhuma	A pé	1 Km	Não	Aprovado	Concluida	2021-02-06	304	2021-08-30 00:45:40.83278
838	matriculas	457	PAMELA DOS SANTOS RIBEIRO	2013-05-26	Feminino	318010165	90474657054	\N	(54)9600-0133	(54)3291-2596	\N	Ensino superior Completo	\N	Ensino superior Completo	Brancos	Nenhuma	A pé	5 Km	Não	Aprovado	Concluida	2021-01-13	304	2021-08-30 00:45:40.83278
839	matriculas	458	CAROLINE ZAMPIERI	2013-09-05	Feminino	554508069	97040693105	\N	(54)3291-6142	32678231	\N	Ensino médio Incomplento	\N	Ensino superior Completo	Brancos	Nenhuma	A pé	1 Km	Sim	Aprovado	Concluida	2021-01-14	304	2021-08-30 00:45:40.83278
840	matriculas	459	RENATA ROMEIRO DOS SANTOS	2013-02-16	Feminino	662957138	70975541577	\N	(54)3291-1092	3291-1479	\N	Ensino Técnico Incompleto	\N	Ensino Técnico Incompleto	Brancos	Nenhuma	Carro	1 Km	Não	Aprovado	Concluida	2021-01-25	304	2021-08-30 00:45:40.83278
841	matriculas	468	PATRICIA MACIEL BROCHETTO	2013-04-04	Feminino	787707429	73505560868	\N	(11)1111-1111	32914316	\N	Ensino médio Incomplento	\N	Ensino superior Incompleto	Brancos	Nenhuma	Carro	15 Km	Não	Aprovado	Concluida	2021-01-31	304	2021-08-30 00:45:40.83278
842	matriculas	473	ANDREIA BOFF	2013-07-24	Feminino	968959470	17348934655	\N	(54)9650-9898	32913514	\N	Ensino médio Completo	\N	Ensino fundamental Completo	Pardos	Nenhuma	Carro	5 Km	Não	Aprovado	Concluida	2021-01-24	304	2021-08-30 00:45:40.83278
843	matriculas	478	JOÃO EDUARDO CECHINATO	2013-04-03	Feminino	496331902	58249225092	\N	(54)9150-4245	(54)3291-7550	\N	Ensino superior Incompleto	\N	Ensino Técnico Incompleto	Brancos	Deficiência motora	Ônibus	10 Km	Não	Aprovado	Pendente	2021-01-14	304	2021-08-30 00:45:40.83278
844	matriculas	485	JANAINA LOPES PERES	2013-01-13	Feminino	624227069	68767450053	\N	91256911	(54)3291-6361	\N	Ensino médio Incomplento	\N	Ensino Técnico Incompleto	Amarelos	Nenhuma	A pé	1 Km	Não	Aprovado	Concluida	2021-02-02	304	2021-08-30 00:45:40.83278
845	matriculas	489	FLAVIANO FABBRIS	2012-11-27	Feminino	358810394	82371016745	\N	(54)3291-2266	(54)3291-7519	\N	Ensino superior Incompleto	\N	Ensino Técnico Incompleto	Brancos	Nenhuma	Ônibus	10 Km	Não	Aprovado	Concluida	2021-01-19	404	2021-08-30 00:45:40.83278
846	matriculas	490	GISELA PAIM LIPOSKI	2012-09-16	Masculino	201613074	64880031285	\N	(54)9180-8809	(54)9611-1147	\N	Ensino médio Incomplento	\N	Ensino fundamental Completo	Pardos	Deficiência visual	A pé	5 Km	Não	Aprovado	Concluida	2021-01-24	404	2021-08-30 00:45:40.83278
847	matriculas	492	NATANIEL CHAVEZ PEREIRA	2012-11-12	Feminino	613718146	12691829953	\N	(54)9923-3833	(54)9941-2734	\N	Ensino Técnico Completo	\N	Ensino Técnico Completo	Brancos	Nenhuma	Bicicleta	10 Km	Não	Reprovou	Concluida	2021-01-28	404	2021-08-30 00:45:40.83278
848	matriculas	501	ELISA PEGORARO SOTORIVA	2012-01-09	Feminino	320295089	73977393503	\N	(54)9914-1520	(54)9671-3253	\N	Ensino médio Incomplento	\N	Ensino superior Completo	Amarelos	Nenhuma	Carro	15 Km	Não	Aprovado	Concluida	2021-01-31	404	2021-08-30 00:45:40.83278
849	matriculas	505	LAIS GENTIL	2012-11-02	Feminino	695506150	53683671127	\N	(54)3291-7422	(54)9631-6087	\N	Ensino médio Incomplento	\N	Ensino fundamental Incomplento	Brancos	Nenhuma	Ônibus	20 Km	Não	Aprovado	Concluida	2021-01-20	404	2021-08-30 00:45:40.83278
850	matriculas	506	LEONARDO ARTUR BALARDIN SANDRI	2012-09-22	Masculino	310105564	32177510728	\N	32916020	(54)9921-9264	\N	Ensino Técnico Completo	\N	Ensino médio Incomplento	Pardos	Nenhuma	Moto	15 Km	Não	Reprovou	Pendente	2021-01-27	404	2021-08-30 00:45:40.83278
851	matriculas	509	LORENZO STICH BIASOTTO	2012-12-16	Masculino	486118433	62890518655	\N	(54)9181-5533	(54)3291-1718	\N	Ensino fundamental Incomplento	\N	Ensino Técnico Incompleto	Pretos	Nenhuma	A pé	15 Km	Não	Aprovado	Concluida	2021-01-12	404	2021-08-30 00:45:40.83278
852	matriculas	513	PATRÍCIA MARTININGHI	2012-12-26	Feminino	854139925	92832778804	\N	(54)3291-1962	(54)8407-9950	\N	Ensino Técnico Incompleto	\N	Ensino médio Incomplento	Brancos	Nenhuma	A pé	10 Km	Sim	Aprovado	Concluida	2021-01-11	404	2021-08-30 00:45:40.83278
853	matriculas	514	GISELE CORREIA DE BRITO	2012-08-27	Feminino	488996148	61761958869	\N	(54)9186-9873	(54)3291-7493	\N	Ensino Técnico Completo	\N	Ensino superior Completo	Pretos	Deficiência visual	A pé	5 Km	Não	Aprovado	Concluida	2021-01-26	404	2021-08-30 00:45:40.83278
854	matriculas	515	ALINE FREDREZ	2012-10-14	Feminino	836893273	92474797787	\N	(54)3291-6233	(54)9918-8990	\N	Ensino Técnico Completo	\N	Ensino superior Incompleto	Amarelos	Nenhuma	Ônibus	10 Km	Não	Aprovado	Concluida	2021-01-17	404	2021-08-30 00:45:40.83278
855	matriculas	516	ISADORA SCAIN	2012-01-20	Feminino	570052603	78191359676	\N	(54)3291-2060	(54)9206-1075	\N	Ensino médio Completo	\N	Ensino médio Completo	Brancos	Nenhuma	Carro	15 Km	Não	Aprovado	Concluida	2021-02-01	404	2021-08-30 00:45:40.83278
856	matriculas	517	THAÍS SANDRI BROCHETTO	2012-08-29	Feminino	783967051	52038402004	\N	(54)8124-4659	(54)3291-2802	\N	Ensino fundamental Completo	\N	Ensino Técnico Completo	Brancos	Nenhuma	Carro	15 Km	Não	Reprovou	Concluida	2021-02-02	404	2021-08-30 00:45:40.83278
857	matriculas	522	GUILHERME WILLIAM BITENCOURT MACIEL	2012-11-27	Masculino	228247344	47581266573	\N	(54)9971-6798	(54)9674-3257	\N	Ensino fundamental Incomplento	\N	Ensino médio Incomplento	Brancos	Nenhuma	Ônibus	5 Km	Não	Pendente	Pendente	2021-01-16	404	2021-08-30 00:45:40.83278
858	matriculas	533	MAICON CAMAZZOLA DOS SANTOS	2012-05-22	Masculino	642625757	82408345511	\N	(54)9912-8017	(54)3291-3954	\N	Ensino médio Incomplento	\N	Ensino fundamental Incomplento	Pretos	Nenhuma	Carro	5 Km	Sim	Aprovado	Concluida	2021-01-31	404	2021-08-30 00:45:40.83278
859	matriculas	537	SAMARA BRESOLIN	2012-03-18	Feminino	511045221	14369942281	\N	(54)9207-4853	(54)3291-3234	\N	Ensino superior Incompleto	\N	Ensino Técnico Completo	Brancos	Nenhuma	Ônibus	10 Km	Sim	Aprovado	Concluida	2021-02-02	404	2021-08-30 00:45:40.83278
860	matriculas	543	LEOMAR CARARO	2012-07-14	Masculino	474318315	14061788555	\N	(54)3291-6334	(54)9178-9852	\N	Ensino Técnico Completo	\N	Ensino médio Incomplento	Pardos	Nenhuma	Ônibus	15 Km	Não	Aprovado	Concluida	2021-02-05	404	2021-08-30 00:45:40.83278
861	matriculas	550	LUCAS DE ARAÚJO CASTILHOS	2011-11-15	Masculino	978021501	50490554621	\N	(54)9613-4042	(54)3291-2248	\N	Ensino fundamental Completo	\N	Ensino superior Incompleto	Brancos	Nenhuma	Ônibus	15 Km	Não	Pendente	Concluida	2021-01-16	503	2021-08-30 00:45:40.83278
862	matriculas	552	NATHALIA VITORIA SANTOS SILVA	2011-08-02	Feminino	160956928	68327877274	\N	(54)9186-7600	(54)3291-2848	\N	Ensino superior Completo	\N	Ensino superior Incompleto	Pretos	Nenhuma	Moto	5 Km	Não	Pendente	Concluida	2021-01-22	503	2021-08-30 00:45:40.83278
863	matriculas	553	EMILLY LIPOSKI LOPES DOS SANTOS	2011-01-10	Feminino	112882070	15528672179	\N	(54)8145-8401	(54)3504-1358	\N	Ensino superior Incompleto	\N	Ensino médio Completo	Brancos	Nenhuma	A pé	10 Km	Não	Aprovado	Concluida	2021-01-23	503	2021-08-30 00:45:40.83278
864	matriculas	561	LUANA DA SILVA SANTOS	2011-06-29	Feminino	774770417	17623442363	\N	(54)9164-2921	(54)3291-3291	\N	Ensino superior Incompleto	\N	Ensino superior Incompleto	Amarelos	Nenhuma	Carro	5 Km	Não	Aprovado	Concluida	2021-01-30	503	2021-08-30 00:45:40.83278
865	matriculas	565	EDUARDA DA SILVA PERDONA	2011-11-18	Feminino	302485129	85662011700	\N	(54)3291-2820	(54)3291-7539	\N	Ensino fundamental Incomplento	\N	Ensino Técnico Incompleto	Brancos	Nenhuma	Ônibus	15 Km	Não	Reprovou	Concluida	2021-01-31	503	2021-08-30 00:45:40.83278
866	matriculas	566	LUCAS DA SILVA	2011-07-31	Masculino	431245861	68536243121	\N	(54)9180-0930	(54)3267-8160	\N	Ensino fundamental Completo	\N	Ensino médio Incomplento	Indígenas	Deficiência visual	A pé	5 Km	Não	Reprovou	Concluida	2021-01-26	503	2021-08-30 00:45:40.83278
867	matriculas	567	DIEGO HENRIQUE RIBEIRO	2011-06-01	Masculino	470384166	15888282967	\N	(54)9154-8746	(54)9652-5801	\N	Ensino médio Incomplento	\N	Ensino Técnico Completo	Brancos	Nenhuma	A pé	15 Km	Não	Aprovado	Pendente	2021-01-15	503	2021-08-30 00:45:40.83278
868	matriculas	570	PATRYCK SCARIOT LIRA	2011-06-24	Masculino	595341437	77086679482	\N	(54)9107-1042	(54)3291-6026	\N	Ensino superior Incompleto	\N	Ensino superior Incompleto	Brancos	Nenhuma	A pé	10 Km	Não	Aprovado	Concluida	2021-02-05	503	2021-08-30 00:45:40.83278
869	matriculas	576	DANIELE APARECIDA DELFES DOS SANTOS	2011-09-11	Feminino	945380903	31641530215	\N	(54)9661-0384	(54)9212-1864	\N	Ensino médio Completo	\N	Ensino fundamental Incomplento	Brancos	Nenhuma	A pé	20 Km	Não	Aprovado	Concluida	2021-01-28	503	2021-08-30 00:45:40.83278
870	matriculas	577	YASMIN DOS REIS PARIZOTE	2011-06-08	Feminino	299417581	44254848958	\N	(54)9187-0508	(54)9697-7921	\N	Ensino médio Incomplento	\N	Ensino médio Incomplento	Brancos	Nenhuma	A pé	20 Km	Não	Aprovado	Concluida	2021-01-27	503	2021-08-30 00:45:40.83278
871	matriculas	578	GABRIELA CARARO BONI	2011-06-03	Feminino	562218209	40764784377	\N	(54)9646-1871	(54)8164-2013	\N	Ensino Técnico Incompleto	\N	Ensino médio Completo	Brancos	Deficiência auditiva	A pé	50 Km	Não	Aprovado	Concluida	2021-02-08	503	2021-08-30 00:45:40.83278
872	matriculas	581	GLAUCIA DE CAMPOS RIZZON	2011-10-15	Feminino	717617621	35423397483	\N	(54)9148-1191	(54)9953-5277	\N	Ensino superior Completo	\N	Ensino fundamental Completo	Brancos	Nenhuma	A pé	10 Km	Não	Pendente	Concluida	2021-02-08	503	2021-08-30 00:45:40.83278
873	matriculas	583	VAGNER PEREIRA DOS SANTOS	2011-12-27	Masculino	410391544	32272470983	\N	(54)9929-1107	(54)9949-6094	\N	Ensino superior Incompleto	\N	Ensino Técnico Completo	Amarelos	Deficiência visual	A pé	1 Km	Não	Pendente	Concluida	2021-02-07	503	2021-08-30 00:45:40.83278
874	matriculas	584	GABRIELE DAL'LAGO	2011-09-13	Feminino	990674514	47142971613	\N	(54)9705-4445	(54)3291-3515	\N	Ensino superior Incompleto	\N	Ensino médio Incomplento	Brancos	Nenhuma	Moto	20 Km	Sim	Aprovado	Concluida	2021-01-21	503	2021-08-30 00:45:40.83278
875	matriculas	585	ANGELICA MENDES	2011-06-25	Feminino	944718866	91377903743	\N	(54)3291-1572	(54)3291-2337	\N	Ensino médio Incomplento	\N	Ensino médio Completo	Pretos	Nenhuma	Ônibus	30 Km	Não	Pendente	Pendente	2021-02-02	503	2021-08-30 00:45:40.83278
876	matriculas	589	ALISSON FERNANDO BOEIRA	2010-03-26	Masculino	146843483	29647524839	\N	(54)9202-1947	(54)9931-3134	\N	Ensino Técnico Completo	\N	Ensino médio Completo	Brancos	Nenhuma	Ônibus	10 Km	Não	Reprovou	Concluida	2021-01-17	604	2021-08-30 00:45:40.83278
877	matriculas	590	MARIA ISABEL DEBOVI	2010-11-15	Feminino	262650634	35291460580	\N	(54)9206-9897	(54)9137-7848	\N	Ensino Técnico Incompleto	\N	Ensino médio Completo	Indígenas	Nenhuma	Ônibus	15 Km	Não	Pendente	Concluida	2021-01-15	604	2021-08-30 00:45:40.83278
878	matriculas	591	RUDINEI RODRIGUES DE CANDIDO	2010-07-10	Masculino	701874168	20674361780	\N	(54)9971-9989	(54)3291-3295	\N	Ensino fundamental Incomplento	\N	Ensino superior Completo	Pardos	Nenhuma	Ônibus	15 Km	Não	Aprovado	Concluida	2021-02-05	604	2021-08-30 00:45:40.83278
879	matriculas	592	BRUNO LICRECIO DA SILVA	2010-09-23	Masculino	752398157	40719941027	\N	(54)3291-4067	(54)8151-7350	\N	Ensino fundamental Completo	\N	Ensino Técnico Completo	Pretos	Nenhuma	A pé	5 Km	Sim	Pendente	Concluida	2021-01-29	604	2021-08-30 00:45:40.83278
880	matriculas	595	SANDRA APARECIDA DE JESUS	2010-08-09	Feminino	885571317	66559159873	\N	(54)9175-2669	(54)9683-8179	\N	Ensino superior Incompleto	\N	Ensino médio Incomplento	Brancos	Nenhuma	A pé	5 Km	Não	Aprovado	Concluida	2021-02-04	604	2021-08-30 00:45:40.83278
881	matriculas	597	RHAIRA CASTILHOS	2010-07-20	Feminino	915080676	67756318698	\N	(54)9954-3259	(54)9152-2263	\N	Ensino superior Incompleto	\N	Ensino Técnico Completo	Brancos	Nenhuma	Ônibus	10 Km	Não	Aprovado	Concluida	2021-02-02	604	2021-08-30 00:45:40.83278
882	matriculas	598	NATÁLIA DA SILVA NEVES	2010-07-13	Feminino	849862242	33042255716	\N	(54)9919-1150	(54)3291-4021	\N	Ensino Técnico Incompleto	\N	Ensino superior Incompleto	Brancos	Nenhuma	Ônibus	1 Km	Não	Aprovado	Concluida	2021-01-26	604	2021-08-30 00:45:40.83278
883	matriculas	599	VERA SLONGO FONGARO	2010-05-06	Feminino	711344678	97510083272	\N	(54)9105-3252	(54)3291-4021	\N	Ensino médio Incomplento	\N	Ensino superior Completo	Brancos	Deficiência auditiva	Ônibus	15 Km	Sim	Aprovado	Concluida	2021-01-30	604	2021-08-30 00:45:40.83278
884	matriculas	608	VANESSA PEGORARO CAMELO	2010-10-16	Feminino	655454452	71375509536	\N	(54)3291-2820	(54)9927-4518	\N	Ensino Técnico Incompleto	\N	Ensino fundamental Incomplento	Amarelos	Nenhuma	Carro	5 Km	Não	Aprovado	Concluida	2021-02-08	604	2021-08-30 00:45:40.83278
885	matriculas	609	CAROLINA TOZZETTO POLONI	2010-05-15	Feminino	386082901	69423330897	\N	(54)9615-7851	(54)9209-9944	\N	Ensino superior Incompleto	\N	Ensino superior Incompleto	Pardos	Nenhuma	A pé	5 Km	Não	Pendente	Concluida	2021-01-21	604	2021-08-30 00:45:40.83278
886	matriculas	610	CAMILA DE MOURA DOS REIS	2010-10-24	Feminino	523367212	60689563720	\N	(54)9944-3371	(54)9664-0885	\N	Ensino médio Completo	\N	Ensino Técnico Incompleto	Pardos	Nenhuma	Ônibus	5 Km	Não	Aprovado	Concluida	2021-01-15	604	2021-08-30 00:45:40.83278
887	matriculas	611	GUILHERME JOSIAS DENQUE	2010-01-09	Masculino	693963626	21039837954	\N	3291-2787	(54)9144-2543	\N	Ensino superior Incompleto	\N	Ensino superior Incompleto	Pardos	Nenhuma	Carro	5 Km	Não	Pendente	Concluida	2021-01-19	604	2021-08-30 00:45:40.83278
888	matriculas	613	ZILMA DA COSTA LOPES	2010-11-25	Feminino	397129979	48028601120	\N	(54)9623-7475	(54)9674-6849	\N	Ensino Técnico Completo	\N	Ensino Técnico Incompleto	Pardos	Nenhuma	A pé	5 Km	Sim	Aprovado	Concluida	2021-02-06	604	2021-08-30 00:45:40.83278
889	matriculas	616	RAFAEL SOLDATELLI DA ROSA	2010-09-26	Masculino	940838977	55442806029	\N	(54)3291-2491	(54)3291-1777	\N	Ensino fundamental Completo	\N	Ensino médio Completo	Brancos	Deficiência visual	Carro	5 Km	Sim	Aprovado	Concluida	2021-01-24	604	2021-08-30 00:45:40.83278
890	matriculas	617	FABIANA MARCHESI	2010-07-21	Feminino	899720914	11263455019	\N	(54)3291-2398	(54)9993-6118	\N	Ensino superior Completo	\N	Ensino médio Incomplento	Pardos	Nenhuma	Ônibus	15 Km	Não	Aprovado	Pendente	2021-01-19	604	2021-08-30 00:45:40.83278
891	matriculas	620	 TAISE RODRIGUES	2010-04-24	Feminino	196603733	28980398773	\N	(54)9989-9168	(54)3291-4634	\N	Ensino superior Incompleto	\N	Ensino superior Completo	Amarelos	Nenhuma	A pé	20 Km	Não	Aprovado	Concluida	2021-01-29	604	2021-08-30 00:45:40.83278
892	matriculas	622	 CRISTIANE FERNANDES FONTANA	2009-06-06	Feminino	105995372	85889683284	\N	(54)9953-2548	(54)3291-4079	\N	Ensino médio Completo	\N	Ensino fundamental Completo	Pretos	Nenhuma	Carro	5 Km	Não	Aprovado	Pendente	2021-02-02	703	2021-08-30 00:45:40.83278
893	matriculas	624	 SILVANA MARCIA FANTIN	2009-07-21	Feminino	438799808	87777093708	\N	(54)9192-5775	(54)3291-3434	\N	Ensino médio Incomplento	\N	Ensino fundamental Completo	Brancos	Nenhuma	Carro	15 Km	Não	Pendente	Concluida	2021-01-11	703	2021-08-30 00:45:40.83278
894	matriculas	631	 TATIANE ROMEIRO DOS SANTOS	2009-03-16	Feminino	711143781	24906147308	\N	(54)9644-2285	(54)9906-9218	\N	Ensino Técnico Incompleto	\N	Ensino Técnico Incompleto	Pardos	Nenhuma	A pé	5 Km	Sim	Pendente	Concluida	2021-01-28	703	2021-08-30 00:45:40.83278
895	matriculas	632	 MATEUS MOLON SANDI	2009-09-22	Masculino	556672795	84851730933	\N	(54)9957-0034	(54)3291-2537	\N	Ensino fundamental Incomplento	\N	Ensino superior Incompleto	Pardos	Nenhuma	Ônibus	20 Km	Não	Aprovado	Concluida	2021-01-31	703	2021-08-30 00:45:40.83278
896	matriculas	638	 MARINES APARECIDA CHINELATO	2009-07-10	Feminino	619898061	35898845710	\N	(54)3816-1810	32919107	\N	Ensino superior Completo	\N	Ensino Técnico Completo	Amarelos	Deficiência visual	Carro	5 Km	Não	Aprovado	Pendente	2021-02-06	703	2021-08-30 00:45:40.83278
897	matriculas	640	 GIOVANI BRUCE DA SILVA	2009-09-16	Masculino	590213997	69794209399	\N	(54)9614-7370	(54)3291-7487	\N	Ensino Técnico Incompleto	\N	Ensino médio Incomplento	Pardos	Nenhuma	Ônibus	20 Km	Não	Aprovado	Concluida	2021-01-21	703	2021-08-30 00:45:40.83278
898	matriculas	647	 OTTAVIO AUGUSTO FRANSCESCHINI	2009-07-26	Masculino	600445388	13523904050	\N	(54)3291-2683	(54)3291-1725	\N	Ensino médio Completo	\N	Ensino fundamental Incomplento	Pardos	Nenhuma	A pé	1 Km	Não	Aprovado	Concluida	2021-01-14	703	2021-08-30 00:45:40.83278
899	matriculas	648	 BRUNA VANIN VIEIRA	2009-06-05	Feminino	706543262	13595044425	\N	(54)3291-3306	(54)9115-7223	\N	Ensino médio Completo	\N	Ensino Técnico Completo	Brancos	Nenhuma	Carro	15 Km	Não	Reprovou	Pendente	2021-01-14	703	2021-08-30 00:45:40.83278
900	matriculas	652	 FRANCIELI F. CASAGRANDA	2009-04-14	Feminino	364456807	97863343135	\N	(54)9242-1155	(54)3291-3263	\N	Ensino Técnico Incompleto	\N	Ensino médio Incomplento	Pardos	Nenhuma	Ônibus	15 Km	Não	Pendente	Concluida	2021-01-19	703	2021-08-30 00:45:40.83278
901	matriculas	653	 VERA SLONGO FONGARO	2009-05-19	Feminino	568970184	95942630176	\N	(54)9196-1976	(54)3291-2769	\N	Ensino Técnico Completo	\N	Ensino médio Completo	Amarelos	Nenhuma	Ônibus	30 Km	Não	Aprovado	Concluida	2021-01-18	703	2021-08-30 00:45:40.83278
902	matriculas	655	 JEAN FRANCISCO PEROZZO MARCARELLO	2009-12-22	Masculino	479922967	98526101454	\N	(54)9184-0492	(54)3291-3459	\N	Ensino fundamental Completo	\N	Ensino Técnico Completo	Brancos	Deficiência visual	Carro	15 Km	Sim	Aprovado	Concluida	2021-01-28	703	2021-08-30 00:45:40.83278
903	matriculas	667	 EDIANE REGINA DE SOUZA	2009-03-07	Feminino	378265341	79259302085	\N	(54)9949-6094	(54)3291-7071	\N	Ensino Técnico Completo	\N	Ensino fundamental Incomplento	Indígenas	Deficiência motora	Ônibus	5 Km	Não	Aprovado	Concluida	2021-01-20	703	2021-08-30 00:45:40.83278
904	matriculas	672	 MORGANA CARDOSO ALVES	2009-04-25	Feminino	896192522	38355304921	\N	(54)9673-9703	(54)9602-5601	\N	Ensino superior Incompleto	\N	Ensino Técnico Incompleto	Pardos	Deficiência auditiva	Ônibus	15 Km	Não	Reprovou	Concluida	2021-01-20	703	2021-08-30 00:45:40.83278
905	matriculas	677	 GIOVANI CARDOSO	2009-10-14	Masculino	304872033	81478978744	\N	(11)1111-1111	(54)9990-6956	\N	Ensino superior Completo	\N	Ensino Técnico Incompleto	Pardos	Deficiência auditiva	A pé	5 Km	Não	Aprovado	Pendente	2021-01-31	703	2021-08-30 00:45:40.83278
906	matriculas	679	 MARCOS JOÃO RIZZON	2009-02-09	Masculino	541178201	45759694302	\N	(54)3291-3292	(54)9659-0789	\N	Ensino médio Completo	\N	Ensino superior Completo	Brancos	Nenhuma	A pé	15 Km	Não	Aprovado	Concluida	2021-01-16	703	2021-08-30 00:45:40.83278
907	matriculas	682	 NUBIA TELES PEDROSO	2009-05-11	Feminino	824736696	88287178724	\N	(54)9601-1873	(54)9672-0530	\N	Ensino médio Incomplento	\N	Ensino médio Completo	Pardos	Nenhuma	Ônibus	20 Km	Não	Aprovado	Concluida	2021-01-15	703	2021-08-30 00:45:40.83278
908	matriculas	684	 CAROLINA RODRIGUES BIASUZ	2009-07-05	Feminino	275114374	90454810479	\N	(54)9931-8929	\N	\N	Ensino Técnico Incompleto	\N	Ensino Técnico Completo	Pardos	Deficiência visual	Carro	10 Km	Não	Reprovou	Concluida	2021-01-26	703	2021-08-30 00:45:40.83278
909	matriculas	690	 JOÃO PEDRO DA FONSECA MOTA	2008-09-21	Masculino	844937953	44107151465	\N	(54)8103-3183	(54)9666-6188	\N	Ensino Técnico Completo	\N	Ensino fundamental Completo	Brancos	Nenhuma	Carro	10 Km	Não	Aprovado	Concluida	2021-01-17	803	2021-08-30 00:45:40.83278
910	matriculas	691	 GREICE MACIEL DA ROSA	2008-01-15	Feminino	729030872	69719121318	\N	(54)9616-5655	(54)9694-5598	\N	Ensino Técnico Completo	\N	Ensino fundamental Incomplento	Amarelos	Nenhuma	Ônibus	20 Km	Não	Aprovado	Pendente	2021-01-28	803	2021-08-30 00:45:40.83278
911	matriculas	697	 DIOGO GOULARTE POSSA	2008-05-17	Masculino	292816384	75242524659	\N	(54)9912-6124	(54)3235-1653	\N	Ensino fundamental Incomplento	\N	Ensino superior Completo	Indígenas	Nenhuma	Carro	5 Km	Não	Aprovado	Concluida	2021-01-24	803	2021-08-30 00:45:40.83278
912	matriculas	699	 ROSANE MARIA BONI	2008-05-16	Masculino	411556324	47538031561	\N	(54)9153-9190	(54)9108-6786	\N	Ensino fundamental Completo	\N	Ensino superior Completo	Brancos	Nenhuma	A pé	20 Km	Não	Aprovado	Concluida	2021-01-27	803	2021-08-30 00:45:40.83278
913	matriculas	700	 STEFANIE CARVALHO PEREIRA	2008-05-09	Feminino	392535955	92793337962	\N	(54)9153-9190	(54)3280-1125	\N	Ensino Técnico Completo	\N	Ensino fundamental Incomplento	Brancos	Nenhuma	Carro	10 Km	Não	Pendente	Concluida	2021-01-29	803	2021-08-30 00:45:40.83278
914	matriculas	713	ANTENOR ADAO PAIM	2008-01-31	Masculino	668571177	24860190691	\N	(54)9620-0621	(54)9667-8483	\N	Ensino superior Incompleto	\N	Ensino médio Completo	Brancos	Nenhuma	Moto	20 Km	Não	Pendente	Concluida	2021-01-20	803	2021-08-30 00:45:40.83278
915	matriculas	714	EMANUEL MASCARELLO	2008-04-22	Masculino	584826285	14287926049	\N	(54)3291-7478	(54)9209-2838	\N	Ensino superior Completo	\N	Ensino Técnico Incompleto	Pardos	Nenhuma	Ônibus	20 Km	Não	Aprovado	Concluida	2021-02-05	803	2021-08-30 00:45:40.83278
916	matriculas	715	EDUARDO COMIOTTO	2008-01-12	Masculino	617748398	48652802758	\N	(54)9944-8972	(54)3280-1040	\N	Ensino médio Incomplento	\N	Ensino fundamental Completo	Pretos	Deficiência motora	Bicicleta	30 Km	Não	Aprovado	Concluida	2021-02-04	803	2021-08-30 00:45:40.83278
917	matriculas	719	OTÁVIO NUNES	2008-04-03	Masculino	383237309	45308655519	\N	(54)9629-1372	(54)9698-8688	\N	Ensino superior Incompleto	\N	Ensino fundamental Incomplento	Brancos	Nenhuma	Carro	1 Km	Não	Aprovado	Concluida	2021-01-14	803	2021-08-30 00:45:40.83278
918	matriculas	720	ARTHUR HENRIQUE SIQUEIRA DUARTE	2008-02-22	Masculino	202379870	80229197623	\N	(54)3267-8032	\N	\N	Ensino superior Incompleto	\N	Ensino superior Incompleto	Pardos	Nenhuma	Ônibus	1 Km	Não	Aprovado	Concluida	2021-02-03	803	2021-08-30 00:45:40.83278
919	matriculas	722	EMILI DAL'LAGO	2008-02-22	Feminino	170959195	31124242210	\N	(54)9171-9172	(54)9704-1158	\N	Ensino superior Incompleto	\N	Ensino superior Incompleto	Pretos	Nenhuma	Carro	1 Km	Sim	Aprovado	Concluida	2021-01-27	803	2021-08-30 00:45:40.83278
920	matriculas	730	KELLY CARRARO	2008-02-01	Feminino	172362473	75253269444	\N	(54)9138-0088	(54)9921-0298	\N	Ensino superior Incompleto	\N	Ensino superior Completo	Brancos	Nenhuma	A pé	10 Km	Não	Aprovado	Concluida	2021-01-26	803	2021-08-30 00:45:40.83278
921	matriculas	733	ADRIANA SARTORI	2008-07-24	Feminino	463139962	35827185601	\N	(54)9251-8920	(54)9130-6005	\N	Ensino superior Incompleto	\N	Ensino Técnico Incompleto	Brancos	Nenhuma	Ônibus	1 Km	Não	Reprovou	Concluida	2021-02-04	803	2021-08-30 00:45:40.83278
922	matriculas	736	GUSTAVO PENCA	2008-10-01	Masculino	801835136	78859503535	\N	(54)9125-2782	(  )    -	\N	Ensino médio Completo	\N	Ensino médio Completo	Brancos	Nenhuma	Bicicleta	30 Km	Sim	Aprovado	Pendente	2021-01-11	803	2021-08-30 00:45:40.83278
923	matriculas	737	MARIA EDUARDA FABBRIS	2008-09-16	Feminino	875090804	61385662486	\N	(54)9658-1833	(54)9176-3971	\N	Ensino Técnico Completo	\N	Ensino Técnico Incompleto	Pretos	Deficiência visual	Ônibus	15 Km	Não	Aprovado	Concluida	2021-01-10	803	2021-08-30 00:45:40.83278
924	matriculas	740	ARTHUR ASTOLFI RODRIGUES	2008-07-25	Masculino	763971554	42717895612	\N	(54)3291-2030	(54)9671-8029	\N	Ensino Técnico Completo	\N	Ensino fundamental Incomplento	Brancos	Nenhuma	Ônibus	30 Km	Sim	Aprovado	Concluida	2021-01-17	803	2021-08-30 00:45:40.83278
925	matriculas	747	MISAEL BORGES ZUANAZZI	2007-02-12	Masculino	863672262	44960212196	\N	(54)3291-2661	(54)9641-3822	\N	Ensino Técnico Incompleto	\N	Ensino médio Completo	Pretos	Nenhuma	Carro	15 Km	Sim	Aprovado	Concluida	2021-01-16	903	2021-08-30 00:45:40.83278
926	matriculas	751	CAROLINA PIMEMENTEL SILVA	2007-01-16	Feminino	270238451	91589455821	\N	(54)3291-7195	(54)9197-1955	\N	Ensino médio Incomplento	\N	Ensino fundamental Completo	Amarelos	Nenhuma	Ônibus	20 Km	Não	Aprovado	Pendente	2021-01-30	903	2021-08-30 00:45:40.83278
927	matriculas	752	CARLOS EDUARDO MICHELLIN	2007-04-03	Masculino	229559399	30009527298	\N	(54)9602-5505	(54)3291-3721	\N	Ensino superior Completo	\N	Ensino médio Incomplento	Amarelos	Nenhuma	A pé	1 Km	Não	Aprovado	Concluida	2021-01-14	903	2021-08-30 00:45:40.83278
928	matriculas	757	LUIZ FERNANDO PEROZZO MASCARELLO	2007-07-30	Masculino	889932686	25287536195	\N	(54)9989-9168	(54)9193-2300	\N	Ensino fundamental Completo	\N	Ensino fundamental Incomplento	Brancos	Nenhuma	A pé	1 Km	Não	Aprovado	Concluida	2021-01-23	903	2021-08-30 00:45:40.83278
929	matriculas	758	VAGNER DALL'AGNO	2007-05-29	Masculino	440922638	70867738351	\N	(54)8127-2304	(54)9671-8029	\N	Ensino fundamental Completo	\N	Ensino Técnico Completo	Brancos	Nenhuma	Ônibus	10 Km	Não	Aprovado	Concluida	2021-01-16	903	2021-08-30 00:45:40.83278
930	matriculas	760	ANA SÁRA PARIZZOTTO DA SILVA	2007-10-18	Masculino	322675933	41457660110	\N	(54)9195-0947	(54)9182-9947	\N	Ensino Técnico Completo	\N	Ensino Técnico Completo	Brancos	Nenhuma	Moto	30 Km	Não	Reprovou	Concluida	2021-01-14	903	2021-08-30 00:45:40.83278
931	matriculas	762	GABRIEL ANTÔNIO DOS REIS SILVA	2007-04-30	Masculino	802142967	54768660392	\N	(54)9669-8782	(54)9133-5631	\N	Ensino médio Incomplento	\N	Ensino fundamental Incomplento	Brancos	Deficiência motora	Ônibus	20 Km	Não	Pendente	Concluida	2021-01-11	903	2021-08-30 00:45:40.83278
932	matriculas	763	EDUARDA CASTILHOS DE ALMEIDA	2007-08-11	Feminino	586290584	53504139280	\N	(54)9658-1833	(54)9111-2416	\N	Ensino superior Incompleto	\N	Ensino fundamental Incomplento	Pardos	Deficiência auditiva	A pé	30 Km	Não	Aprovado	Concluida	2021-01-28	903	2021-08-30 00:45:40.83278
933	matriculas	779	ALEXANDRE RIZZON MENEGUZZO	2007-05-09	Masculino	450637948	82931756621	\N	(58)8128-9684	(54)3291-1421	\N	Ensino fundamental Incomplento	\N	Ensino médio Incomplento	Brancos	Nenhuma	A pé	10 Km	Não	Aprovado	Concluida	2021-01-16	903	2021-08-30 00:45:40.83278
934	matriculas	785	ANDREI GIOTTI	2007-01-28	Masculino	964392971	53723187863	\N	(54)9959-2094	(54)9638-0031	\N	Ensino Técnico Incompleto	\N	Ensino superior Incompleto	Brancos	Deficiência auditiva	Carro	10 Km	Não	Pendente	Pendente	2021-01-18	903	2021-08-30 00:45:40.83278
935	matriculas	789	VICENTE BORGHETTI SBABO	2007-06-05	Masculino	371644862	33686352349	\N	(54)3291-4303	(54)9959-5123	\N	Ensino Técnico Completo	\N	Ensino fundamental Incomplento	Pardos	Nenhuma	Ônibus	30 Km	Não	Aprovado	Concluida	2021-01-26	903	2021-08-30 00:45:40.83278
936	matriculas	793	LUANA CAROLINE BACK	2007-11-24	Feminino	248789056	88819248719	\N	(54)9602-4110	(54)3291-3688	\N	Ensino Técnico Incompleto	\N	Ensino Técnico Completo	Brancos	Nenhuma	Ônibus	20 Km	Não	Aprovado	Concluida	2021-02-07	903	2021-08-30 00:45:40.83278
937	matriculas	795	CAROLINE ONZI GOMES	2007-11-02	Feminino	566566419	53569983516	\N	(54)9603-2677	(54)9922-1272	\N	Ensino superior Completo	\N	Ensino superior Incompleto	Indígenas	Nenhuma	A pé	1 Km	Não	Aprovado	Concluida	2021-01-20	903	2021-08-30 00:45:40.83278
938	matriculas	796	ARIANE BRUNELLO	2007-10-05	Masculino	913201250	37269815497	\N	(54)9134-4156	(54)9997-9784	\N	Ensino fundamental Completo	\N	Ensino fundamental Completo	Brancos	Nenhuma	A pé	10 Km	Não	Reprovou	Pendente	2021-01-18	903	2021-08-30 00:45:40.83278
939	matriculas	798	GISELA PASIN	2007-12-03	Feminino	329385500	23351563649	\N	(54)8151-1209	(54)9705-5579	\N	Ensino fundamental Completo	\N	Ensino médio Incomplento	Pardos	Deficiência auditiva	A pé	15 Km	Não	Aprovado	Concluida	2021-01-17	903	2021-08-30 00:45:40.83278
940	matriculas	799	EDER DE OLIVEIRA SOARES	2007-10-30	Masculino	307950233	49946294180	\N	(54)9911-0259	(54)9633-6702	\N	Ensino fundamental Incomplento	\N	Ensino superior Completo	Pardos	Deficiência visual	Carro	15 Km	Não	Pendente	Concluida	2021-01-14	903	2021-08-30 00:45:40.83278
941	matriculas	807	BARBARA DA FONSECA	2006-01-09	Feminino	723721672	40870850705	\N	(54)9902-9293	(54)9197-7596	\N	Ensino Técnico Completo	\N	Ensino Técnico Incompleto	Indígenas	Deficiência mental	Ônibus	15 Km	Sim	Pendente	Concluida	2021-01-16	M104	2021-08-30 00:45:40.83278
942	matriculas	809	ROGÉRIO JÚNIOR RIZZON	2006-11-08	Masculino	262230785	70488873087	\N	(54)9157-8338	(54)3291-5166	\N	Ensino médio Incomplento	\N	Ensino superior Incompleto	Pardos	Nenhuma	A pé	5 Km	Não	Aprovado	Concluida	2021-01-16	M104	2021-08-30 00:45:40.83278
943	matriculas	810	TIÉRI TELLES PEDROSO	2006-09-29	Feminino	169303676	76873473707	\N	(54)9903-0613	(54)9947-7456	\N	Ensino Técnico Completo	\N	Ensino Técnico Completo	Brancos	Nenhuma	A pé	10 Km	Não	Aprovado	Concluida	2021-01-12	M104	2021-08-30 00:45:40.83278
944	matriculas	812	GRACIELE SCOPEL	2006-09-18	Feminino	505696402	29218083782	\N	(54)9244-5604	(54)9928-0407	\N	Ensino Técnico Completo	\N	Ensino fundamental Incomplento	Brancos	Nenhuma	Ônibus	15 Km	Sim	Pendente	Concluida	2021-01-24	M104	2021-08-30 00:45:40.83278
945	matriculas	821	AUGUSTO PESSINI	2006-01-20	Masculino	732566869	40374789523	\N	(54)3291-1913	(54)3291-3374	\N	Ensino médio Completo	\N	Ensino médio Incomplento	Pretos	Nenhuma	Ônibus	20 Km	Não	Aprovado	Pendente	2021-01-24	M104	2021-08-30 00:45:40.83278
946	matriculas	825	CHRISTIAN POSSO DA SILVA	2006-10-16	Feminino	916676188	43219385441	\N	(54)9992-8969	(54)3291-5190	\N	Ensino médio Incomplento	\N	Ensino fundamental Incomplento	Amarelos	Nenhuma	Moto	10 Km	Não	Pendente	Concluida	2021-01-26	M104	2021-08-30 00:45:40.83278
947	matriculas	832	ADALBERTO ANDRÉ DOS SANTOS JUNIOR	2006-03-11	Feminino	536553883	93388240715	\N	32913437	(54)9611-2906	\N	Ensino superior Completo	\N	Ensino Técnico Incompleto	Pretos	Nenhuma	A pé	1 Km	Não	Pendente	Concluida	2021-02-06	M104	2021-08-30 00:45:40.83278
948	matriculas	837	CAROLINA SIMIONI BORGES	2006-08-08	Feminino	691831639	78222693510	\N	(54)9980-8528	(54)3267-8011	\N	Ensino médio Completo	\N	Ensino fundamental Completo	Pardos	Nenhuma	Carro	20 Km	Não	Reprovou	Concluida	2021-01-14	M104	2021-08-30 00:45:40.83278
949	matriculas	839	EZEQUIEL DA SILVA SOARES MINICH	2006-11-23	Feminino	819877473	82505519086	\N	(11)1111-1111	(54)3291-2688	\N	Ensino Técnico Completo	\N	Ensino Técnico Incompleto	Brancos	Nenhuma	A pé	5 Km	Não	Aprovado	Concluida	2021-01-15	M104	2021-08-30 00:45:40.83278
950	matriculas	845	MEL FERREIRA	2006-06-08	Feminino	291557386	12631108017	\N	(54)9010-5357	(54)9600-0808	\N	Ensino superior Incompleto	\N	Ensino Técnico Completo	Indígenas	Nenhuma	A pé	10 Km	Não	Aprovado	Concluida	2021-01-21	M104	2021-08-30 00:45:40.83278
951	matriculas	848	TAYANE PERES GONÇAVES	2006-06-11	Feminino	410377410	64750668367	\N	(54)9928-6331	(54)3291-7561	\N	Ensino superior Incompleto	\N	Ensino Técnico Incompleto	Pardos	Nenhuma	Ônibus	1 Km	Não	Aprovado	Concluida	2021-02-01	M104	2021-08-30 00:45:40.83278
952	matriculas	851	RENATA CORSO PANASSOL	2006-05-22	Feminino	612885781	67663829355	\N	(54)9126-5959	(54)3291-3731	\N	Ensino superior Incompleto	\N	Ensino Técnico Incompleto	Pardos	Nenhuma	Carro	1 Km	Não	Aprovado	Concluida	2021-02-03	M104	2021-08-30 00:45:40.83278
953	matriculas	857	KATIELE ZARDO	2006-03-19	Feminino	889972203	36949945826	\N	(54)3291-4084	(54)9101-1644	\N	Ensino médio Completo	\N	Ensino Técnico Completo	Pardos	Nenhuma	Carro	15 Km	Sim	Aprovado	Pendente	2021-01-22	M104	2021-08-30 00:45:40.83278
954	matriculas	860	BRENDA BIONDO	2006-10-14	Feminino	254779153	12689821307	\N	(54)9634-8623	(54)3291-3362	\N	Ensino médio Completo	\N	Ensino fundamental Incomplento	Pardos	Nenhuma	Ônibus	10 Km	Não	Aprovado	Concluida	2021-01-20	M104	2021-08-30 00:45:40.83278
955	matriculas	865	ELENA PELLIZZARI GUERRA	2006-05-26	Feminino	323570961	41624368530	\N	(54)3291-4257	(54)9998-2189	\N	Ensino médio Incomplento	\N	Ensino fundamental Completo	Brancos	Deficiência visual	Carro	50 Km	Não	Aprovado	Concluida	2021-02-03	M104	2021-08-30 00:45:40.83278
956	matriculas	869	NOELCI MARIA ZUANAZZI SCODRO	2006-02-22	Feminino	865670937	66612337994	\N	(54)9961-9194	(54)9132-4763	\N	Ensino Técnico Completo	\N	Ensino superior Incompleto	Pretos	Nenhuma	Ônibus	15 Km	Não	Pendente	Concluida	2021-01-30	M104	2021-08-30 00:45:40.83278
957	matriculas	874	MARIA LUCIA DOS SANTOS CORRÊA	2005-12-21	Feminino	618952767	75636785934	\N	(54)9187-7745	(54)3291-4865	\N	Ensino fundamental Incomplento	\N	Ensino médio Incomplento	Pretos	Nenhuma	A pé	15 Km	Não	Pendente	Pendente	2021-02-03	M203	2021-08-30 00:45:40.83278
958	matriculas	879	VITALINA ALVES POSSO	2005-11-07	Feminino	911355086	89100654289	\N	(54)9196-1753	(54)9967-2063	\N	Ensino Técnico Incompleto	\N	Ensino fundamental Completo	Brancos	Nenhuma	Moto	1 Km	Não	Reprovou	Concluida	2021-01-23	M203	2021-08-30 00:45:40.83278
959	matriculas	883	HENRIQUE RECH GRISON	2005-11-08	Masculino	295100890	36022509315	\N	(54)3291-2819	(54)9241-7978	\N	Ensino Técnico Completo	\N	Ensino Técnico Completo	Brancos	Deficiência visual	Ônibus	20 Km	Não	Aprovado	Concluida	2021-02-02	M203	2021-08-30 00:45:40.83278
960	matriculas	885	SUELI RODRIGUES DE SOUZA SILVA	2005-03-06	Feminino	517714686	58566867286	\N	(54)9197-2339	(54)9603-3600	\N	Ensino médio Incomplento	\N	Ensino superior Completo	Pardos	Nenhuma	A pé	1 Km	Não	Aprovado	Concluida	2021-01-21	M203	2021-08-30 00:45:40.83278
961	matriculas	886	MURILO DOS REIS GUERRA	2005-07-24	Masculino	941044010	48506006506	\N	(54)3280-1258	(54)3291-1227	\N	Ensino médio Incomplento	\N	Ensino fundamental Incomplento	Pretos	Nenhuma	A pé	1 Km	Não	Aprovado	Concluida	2021-01-13	M203	2021-08-30 00:45:40.83278
962	matriculas	889	LAURA ZANARDI SCAIN	2005-12-29	Feminino	689137244	93891181995	\N	(54)3291-6537	(54)3291-3246	\N	Ensino Técnico Completo	\N	Ensino fundamental Incomplento	Amarelos	Nenhuma	A pé	50 Km	Não	Aprovado	Concluida	2021-01-11	M203	2021-08-30 00:45:40.83278
963	matriculas	894	CAROLINE HENDGES DURANTE	2005-08-03	Feminino	574669051	82657552375	\N	(54)3291-3423	(54)9686-0306	\N	Ensino superior Incompleto	\N	Ensino Técnico Completo	Pardos	Nenhuma	Bicicleta	5 Km	Não	Aprovado	Concluida	2021-01-13	M203	2021-08-30 00:45:40.83278
964	matriculas	897	ANA ZANELLA CHEMELLO	2005-12-20	Feminino	988960994	27089587698	\N	(54)9619-8125	(54)9901-0834	\N	Ensino superior Incompleto	\N	Ensino médio Completo	Amarelos	Nenhuma	A pé	5 Km	Não	Aprovado	Concluida	2021-01-18	M203	2021-08-30 00:45:40.83278
965	matriculas	907	CARLOS GABRIEL CARDOSO HENRIQUE	2005-05-01	Masculino	378569262	37664240904	\N	(54)9658-9963	(54)3291-2548	\N	Ensino Técnico Incompleto	\N	Ensino Técnico Incompleto	Amarelos	Nenhuma	A pé	15 Km	Sim	Aprovado	Concluida	2021-01-26	M203	2021-08-30 00:45:40.83278
966	matriculas	909	RAFAEL BRANCHINI	2005-07-30	Masculino	926791676	69296000940	\N	(54)3291-5159	(54)9612-8138	\N	Ensino Técnico Completo	\N	Ensino médio Incomplento	Brancos	Nenhuma	Carro	50 Km	Não	Aprovado	Pendente	2021-02-03	M203	2021-08-30 00:45:40.83278
967	matriculas	910	LEONARDO SCODRO	2005-09-28	Masculino	858253003	13395950108	\N	(54)3291-5159	(54)9983-8372	\N	Ensino fundamental Completo	\N	Ensino Técnico Completo	Brancos	Nenhuma	A pé	20 Km	Sim	Aprovado	Concluida	2021-01-16	M203	2021-08-30 00:45:40.83278
968	matriculas	912	LUCIANO DOLIZETE ZANCHETTA	2005-07-25	Masculino	277536647	20581879511	\N	\N	(54)9168-4004	\N	Ensino Técnico Incompleto	\N	Ensino superior Incompleto	Brancos	Nenhuma	A pé	15 Km	Não	Pendente	Concluida	2021-01-12	M203	2021-08-30 00:45:40.83278
969	matriculas	913	ARIEL CZICHOCKI	2005-02-07	Masculino	736854225	94727503333	\N	(54)3291-8200	(51)9903-2854	\N	Ensino médio Completo	\N	Ensino fundamental Incomplento	Pretos	Nenhuma	A pé	5 Km	Não	Aprovado	Pendente	2021-01-20	M203	2021-08-30 00:45:40.83278
970	matriculas	916	MARIA DE LURDES MORESCO	2005-08-29	Feminino	431827283	90795503493	\N	(54)9144-1280	(54)3291-5075	\N	Ensino Técnico Incompleto	\N	Ensino superior Incompleto	Pardos	Deficiência motora	Moto	15 Km	Sim	Aprovado	Pendente	2021-02-06	M203	2021-08-30 00:45:40.83278
971	matriculas	917	AMANDA SANDI	2005-01-16	Feminino	148551909	23681077431	\N	(54)9161-4960	(54)3291-3417	\N	Ensino fundamental Completo	\N	Ensino médio Incomplento	Amarelos	Nenhuma	Moto	5 Km	Não	Aprovado	Concluida	2021-01-13	M203	2021-08-30 00:45:40.83278
972	matriculas	918	ANA PAULA CECHINATO SOTORIVA	2005-06-11	Feminino	768187000	14981651016	\N	(54)3291-3347	(54)3291-1081	\N	Ensino Técnico Completo	\N	Ensino fundamental Incomplento	Indígenas	Nenhuma	A pé	1 Km	Não	Aprovado	Concluida	2021-01-25	M203	2021-08-30 00:45:40.83278
973	matriculas	920	FERNANDA UEZ CASARA	2005-09-09	Feminino	414532420	39048320484	\N	(54)9147-8907	(54)3291-7555	\N	Ensino fundamental Completo	\N	Ensino Técnico Incompleto	Pretos	Nenhuma	Carro	5 Km	Sim	Aprovado	Concluida	2021-01-19	M203	2021-08-30 00:45:40.83278
974	matriculas	925	ANA JULIA TOMIELLO	2005-02-12	Feminino	435421286	76099818588	\N	(54)9618-7508	(54)3291-3382	\N	Ensino Técnico Completo	\N	Ensino superior Incompleto	Brancos	Nenhuma	Moto	10 Km	Não	Aprovado	Concluida	2021-01-14	M203	2021-08-30 00:45:40.83278
975	matriculas	932	JOSIANE ASCARI TELES	2005-01-29	Feminino	809485609	55160459679	\N	(54)9236-3617	(54)3291-3552	\N	Ensino superior Completo	\N	Ensino fundamental Incomplento	Pardos	Nenhuma	Ônibus	1 Km	Não	Pendente	Concluida	2021-02-03	M203	2021-08-30 00:45:40.83278
976	matriculas	933	SARAH COELHO RIZZON	2004-03-21	Feminino	825374279	38467655504	\N	(54)3291-6255	(54)9636-2620	\N	Ensino Técnico Completo	\N	Ensino superior Incompleto	Pardos	Deficiência motora	Ônibus	30 Km	Não	Aprovado	Concluida	2021-01-24	M304	2021-08-30 00:45:40.83278
977	matriculas	934	JOÃO VITOR SOARES PEREIRA	2004-03-07	Masculino	714909565	56557400615	\N	(54)9115-3737	(54)9436-3044	\N	Ensino fundamental Completo	\N	Ensino fundamental Incomplento	Brancos	Nenhuma	Ônibus	15 Km	Não	Aprovado	Concluida	2021-01-12	M304	2021-08-30 00:45:40.83278
978	matriculas	939	MARINA GABRIELA DUTRA DOS REIS	2004-02-16	Feminino	153027930	62271664305	\N	(54)9668-4014	(54)9602-4110	\N	Ensino superior Incompleto	\N	Ensino médio Completo	Brancos	Nenhuma	Carro	5 Km	Não	Aprovado	Concluida	2021-02-03	M304	2021-08-30 00:45:40.83278
979	matriculas	944	GIOVANA POLETO	2004-04-14	Feminino	382634411	75639829533	\N	(54)9167-3111	(54)9173-2696	\N	Ensino Técnico Completo	\N	Ensino superior Incompleto	Brancos	Nenhuma	Carro	10 Km	Não	Pendente	Concluida	2021-01-12	M304	2021-08-30 00:45:40.83278
980	matriculas	946	LUCAS FOCHESATO SANDRI	2004-12-23	Masculino	991969362	75560310811	\N	(54)3280-1103	(54)9709-2838	\N	Ensino Técnico Completo	\N	Ensino médio Incomplento	Pardos	Nenhuma	A pé	30 Km	Não	Aprovado	Pendente	2021-01-12	M304	2021-08-30 00:45:40.83278
981	matriculas	947	GUILHERME PEREIRA	2004-03-30	Masculino	862308632	96254135119	\N	(54)3291-4528	(54)3291-4208	\N	Ensino Técnico Incompleto	\N	Ensino fundamental Incomplento	Brancos	Nenhuma	Moto	15 Km	Não	Aprovado	Pendente	2021-01-11	M304	2021-08-30 00:45:40.83278
982	matriculas	952	GIOVANI FRANCESCHINI	2004-07-03	Masculino	798235844	92763018476	\N	32914890	(54)3291-3242	\N	Ensino superior Incompleto	\N	Ensino fundamental Incomplento	Brancos	Nenhuma	Carro	15 Km	Não	Aprovado	Concluida	2021-01-21	M304	2021-08-30 00:45:40.83278
983	matriculas	957	MARLON SCAIN	2004-04-29	Masculino	890827058	69026801390	\N	99266027	(54)9166-3113	\N	Ensino Técnico Incompleto	\N	Ensino fundamental Completo	Brancos	Nenhuma	A pé	1 Km	Não	Pendente	Pendente	2021-01-25	M304	2021-08-30 00:45:40.83278
984	matriculas	960	FABIANO RIZZON	2004-01-26	Masculino	703213914	74670867666	\N	32912760	(54)9208-5162	\N	Ensino Técnico Completo	\N	Ensino Técnico Completo	Pardos	Nenhuma	Carro	5 Km	Não	Aprovado	Concluida	2021-01-30	M304	2021-08-30 00:45:40.83278
985	matriculas	962	CRISTINE DE ANDRADE MONTANARI	2004-03-20	Feminino	199741256	11375176499	\N	32912267	(54)9175-0209	\N	Ensino Técnico Completo	\N	Ensino superior Completo	Brancos	Nenhuma	Ônibus	1 Km	Não	Aprovado	Concluida	2021-02-08	M304	2021-08-30 00:45:40.83278
986	matriculas	966	CLAITON JOSÉ ALVES	2004-11-18	Masculino	781900975	23517002426	\N	32801236	(54)9969-2941	\N	Ensino superior Completo	\N	Ensino superior Completo	Pardos	Nenhuma	Carro	20 Km	Não	Aprovado	Concluida	2021-01-13	M304	2021-08-30 00:45:40.83278
987	matriculas	968	CAROLINE CARDOSO	2004-12-13	Feminino	630568616	85311597123	\N	(54)3291-6124	(54)9999-4318	\N	Ensino médio Incomplento	\N	Ensino médio Completo	Brancos	Deficiência auditiva	Ônibus	1 Km	Não	Reprovou	Concluida	2021-01-22	M304	2021-08-30 00:45:40.83278
988	matriculas	971	GESIEL CARDOSO DE OLIVEIRA	2004-04-15	Masculino	624191625	96344906277	\N	(54)9168-9426	(54)9603-6005	\N	Ensino médio Incomplento	\N	Ensino Técnico Completo	Pardos	Nenhuma	A pé	15 Km	Não	Aprovado	Concluida	2021-01-17	M304	2021-08-30 00:45:40.83278
989	matriculas	975	MARQUES PEREIRA	2004-03-16	Masculino	675630401	24059734760	\N	32913478	(54)3291-9172	\N	Ensino médio Completo	\N	Ensino médio Incomplento	Brancos	Nenhuma	A pé	5 Km	Não	Aprovado	Pendente	2021-01-28	M304	2021-08-30 00:45:40.83278
990	matriculas	976	FRANCINE BUCKELL	2004-07-15	Feminino	674128946	91381716242	\N	91762322	(54)9662-2121	\N	Ensino fundamental Incomplento	\N	Ensino superior Incompleto	Pardos	Nenhuma	Ônibus	1 Km	Não	Aprovado	Concluida	2021-01-27	M304	2021-08-30 00:45:40.83278
991	matriculas	977	JÉSSICA DOS PASSOS	2004-06-07	Feminino	652712574	57458764691	\N	(54)3291-1763	(54)9208-6212	\N	Ensino Técnico Incompleto	\N	Ensino fundamental Completo	Pardos	Nenhuma	A pé	50 Km	Sim	Aprovado	Concluida	2021-02-07	M304	2021-08-30 00:45:40.83278
992	matriculas	980	ANDERSON RONEI BRITO CASTILHOS	2004-09-13	Masculino	459952450	69514283517	\N	(54)9979-3744	(54)9900-2185	\N	Ensino Técnico Completo	\N	Ensino médio Incomplento	Brancos	Nenhuma	Ônibus	30 Km	Não	Pendente	Concluida	2021-01-27	M304	2021-08-30 00:45:40.83278
993	matriculas	982	LAIANE FONGARO	2004-03-14	Feminino	945317414	52953037651	\N	32913051	(54)9929-1790	\N	Ensino médio Completo	\N	Ensino Técnico Incompleto	Indígenas	Deficiência visual	A pé	10 Km	Não	Pendente	Pendente	2021-02-08	M304	2021-08-30 00:45:40.83278
994	matriculas	989	MAIKON CAMILO PAGNA	2004-06-28	Masculino	942380251	58035315057	\N	(54)9129-6196	(54)9680-8004	\N	Ensino fundamental Incomplento	\N	Ensino superior Completo	Pretos	Nenhuma	Ônibus	5 Km	Não	Pendente	Concluida	2021-01-29	M304	2021-08-30 00:45:40.83278
995	matriculas	990	ALANA DOS PASSOS	2004-06-05	Feminino	489138622	43508787357	\N	(54)3291-2330	(54)9112-2719	\N	Ensino superior Completo	\N	Ensino Técnico Incompleto	Brancos	Nenhuma	Ônibus	30 Km	Não	Aprovado	Pendente	2021-01-20	M304	2021-08-30 00:45:40.83278
996	matriculas	992	UALESSON DALL AGNO	2004-02-02	Masculino	780083821	35370997597	\N	(54)3291-4781	(54)3291-1896	\N	Ensino médio Incomplento	\N	Ensino Técnico Incompleto	Brancos	Nenhuma	Ônibus	1 Km	Não	Aprovado	Concluida	2021-02-07	M304	2021-08-30 00:45:40.83278
997	matriculas	997	RENATO MONTANARI POSSA	2004-05-19	Masculino	579237979	31907153083	\N	(54)9128-2425	(54)9107-8454	\N	Ensino médio Completo	\N	Ensino Técnico Incompleto	Brancos	Nenhuma	A pé	5 Km	Não	Aprovado	Pendente	2021-02-02	M304	2021-08-30 00:45:40.83278
\.


--
-- TOC entry 2937 (class 0 OID 41070)
-- Dependencies: 216
-- Data for Name: tb_alunos; Type: TABLE DATA; Schema: relacional; Owner: postgres
--

COPY relacional.tb_alunos (id_aluno, matricula, nome, dat_nascimento, rg, cpf, endereco, telefone, celular, nome_pai, escolaridade_pai, nome_mae, escolaridade_mae, distancia, dat_matricula, cor_raca, sexo, deficiencia, transporte, dat_carga) FROM stdin;
1	6	CINTIA RAFAELA FOCHESATTO	2016-03-23	377341081	11628182667	\N	(54)3291-5202	(54)3291-3845	\N	Ensino médio Completo	\N	Ensino fundamental Completo	30 Km	2021-01-26	4	2	6	2	2021-08-30 00:45:40.763983
2	12	FABIEL JULIAN SALVADOR	2015-06-03	164841202	45177645026	\N	(54)3291-4378	(54)9200-3528	\N	Ensino fundamental Incomplento	\N	Ensino superior Incompleto	1 Km	2021-01-11	1	1	6	5	2021-08-30 00:45:40.763983
3	65	MARINES ZAMPIERI BALLARDIN	2015-09-18	630124179	90855074599	\N	(54)9187-4885	(54)9604-2515	\N	Ensino médio Completo	\N	Ensino médio Incomplento	1 Km	2021-01-22	1	2	6	2	2021-08-30 00:45:40.763983
4	72	CAROLINE FOGAÇA	2015-05-29	123183542	92534285049	\N	(54)3291-2578	3291-3530	\N	Ensino Técnico Incompleto	\N	Ensino superior Completo	10 Km	2021-01-30	5	2	6	2	2021-08-30 00:45:40.763983
5	73	BIANCA CAMASSOLA	2015-01-02	431467135	78135379162	\N	(54)3291-2902	32911959	\N	Ensino fundamental Completo	\N	Ensino fundamental Incomplento	5 Km	2021-01-19	1	2	6	2	2021-08-30 00:45:40.763983
6	96	NELCI LUCHI CASAL	2015-03-27	170982363	28000408644	\N	(54)3291-2472	3291-4788	\N	Ensino superior Completo	\N	Ensino Técnico Incompleto	10 Km	2021-01-22	2	2	6	5	2021-08-30 00:45:40.763983
7	99	MAURICIO SPIGOLON	2015-02-04	540571866	57960758220	\N	(54)3291-7479	3291-2971	\N	Ensino médio Incomplento	\N	Ensino Técnico Completo	30 Km	2021-01-26	4	1	6	5	2021-08-30 00:45:40.763983
8	112	MARLI NEUMANN	2015-10-01	854970339	15934191271	\N	(54)3291-3839	(54)9925-9948	\N	Ensino Técnico Incompleto	\N	Ensino Técnico Completo	10 Km	2021-01-26	4	2	4	5	2021-08-30 00:45:40.763983
9	123	CRISTIANE NUNES DA CRUZ	2015-12-21	988418789	57989943622	\N	(54)3291-3521	32911209	\N	Ensino Técnico Incompleto	\N	Ensino superior Completo	15 Km	2021-02-05	4	2	6	3	2021-08-30 00:45:40.763983
10	168	BRENDA GENTIL	2015-10-08	265624644	77657134801	\N	(54)9627-4374	(54)9670-8008	\N	Ensino fundamental Completo	\N	Ensino Técnico Completo	20 Km	2021-01-15	1	2	1	1	2021-08-30 00:45:40.763983
11	185	PATRICIA PAGNO	2015-09-07	575514047	47186348217	\N	(54)3291-2612	(54)3291-7410	\N	Ensino Técnico Incompleto	\N	Ensino superior Incompleto	30 Km	2021-01-12	5	2	3	2	2021-08-30 00:45:40.763983
12	193	ANTONIO PAULO BALLARDIN	2015-11-12	439089095	16121017190	\N	(54)9954-3783	91245608	\N	Ensino médio Completo	\N	Ensino fundamental Incomplento	15 Km	2021-02-05	4	1	6	5	2021-08-30 00:45:40.763983
13	196	GUILHERME DE LIMA FERNANDES	2015-09-15	887389958	35972390509	\N	(54)9157-3394	32913449	\N	Ensino Técnico Incompleto	\N	Ensino fundamental Completo	1 Km	2021-02-02	1	1	6	3	2021-08-30 00:45:40.763983
14	201	EDUARDA SCHWARZ MACHADO	2015-04-07	111998077	36089132052	\N	(54)9928-0226	(54)9665-2204	\N	Ensino Técnico Completo	\N	Ensino médio Completo	15 Km	2021-01-19	1	2	1	5	2021-08-30 00:45:40.763983
15	212	MELISSA CASTILHOS DA SILVA	2015-08-08	346243249	32999177687	\N	(54)3291-1548	(54)8172-9551	\N	Ensino médio Incomplento	\N	Ensino Técnico Completo	15 Km	2021-01-17	2	2	6	5	2021-08-30 00:45:40.763983
16	220	JULIA POLO SUZIN	2015-07-17	690451748	28669392956	\N	(54)9621-6932	(54)9922-2387	\N	Ensino Técnico Incompleto	\N	Ensino médio Completo	5 Km	2021-01-21	2	2	6	3	2021-08-30 00:45:40.763983
17	241	MARIA EDUARDA DE CASTILHOS	2015-11-02	556584083	69509920765	\N	(54)8447-5345	(54)3291-6334	\N	Ensino Técnico Completo	\N	Ensino Técnico Incompleto	5 Km	2021-02-01	2	2	2	5	2021-08-30 00:45:40.763983
18	245	GABRIEL GIRARDELLO	2015-08-15	979010461	13775779521	\N	(54)9929-9065	(54)9197-9444	\N	Ensino superior Incompleto	\N	Ensino médio Incomplento	5 Km	2021-02-06	2	1	3	2	2021-08-30 00:45:40.763983
19	269	ALINE ZAN SANTOS	2015-07-10	784889587	84238402693	\N	(54)9962-9588	32914348	\N	Ensino médio Incomplento	\N	Ensino fundamental Completo	5 Km	2021-01-24	4	2	6	3	2021-08-30 00:45:40.763983
20	280	CARLA VERGINIA ZUCCHETTI PIRES	2015-03-06	453344788	65641628719	\N	(54)9924-4921	32914837	\N	Ensino superior Incompleto	\N	Ensino fundamental Completo	15 Km	2021-01-25	4	2	6	3	2021-08-30 00:45:40.763983
21	310	JESSICA MELARA	2015-05-06	427657209	45725950199	\N	(54)9136-8052	(54)3291-2318	\N	Ensino fundamental Completo	\N	Ensino médio Completo	1 Km	2021-02-01	5	2	6	4	2021-08-30 00:45:40.763983
22	314	CARLOS EDUARDO DA SILVA DE MORAES	2015-12-19	358720003	76994185562	\N	(54)3291-2434	(54)9144-7578	\N	Ensino fundamental Incomplento	\N	Ensino fundamental Incomplento	20 Km	2021-01-17	2	1	6	2	2021-08-30 00:45:40.763983
23	332	CAROLINA CORSO PANASSOL	2015-12-12	355267772	19968736245	\N	(54)9903-4584	(54)3235-1138	\N	Ensino superior Completo	\N	Ensino superior Incompleto	15 Km	2021-01-29	4	2	6	4	2021-08-30 00:45:40.763983
24	343	MATEUS MICHELON	2015-09-26	302235642	15072865796	\N	32801114	(54)3291-1099	\N	Ensino médio Incomplento	\N	Ensino Técnico Incompleto	30 Km	2021-01-14	1	1	6	3	2021-08-30 00:45:40.763983
25	350	GISELE FRANCISCHINI	2015-08-24	497035844	34464838111	\N	(54)9695-3080	(54)3291-9187	\N	Ensino médio Completo	\N	Ensino superior Completo	20 Km	2021-01-13	5	2	6	4	2021-08-30 00:45:40.763983
26	353	JOSIANE VELHO MACEDO	2015-06-25	530709797	30327722587	\N	(54)9600-4017	(54)3235-5108	\N	Ensino Técnico Completo	\N	Ensino fundamental Completo	5 Km	2021-01-31	4	2	6	2	2021-08-30 00:45:40.763983
27	379	ANDREIA DA SILVEIRA POTT	2015-06-02	699414148	30167088455	\N	(54)9901-9284	(54)3291-3368	\N	Ensino fundamental Incomplento	\N	Ensino fundamental Completo	10 Km	2021-02-01	4	2	6	4	2021-08-30 00:45:40.763983
28	384	GILMAR VEBER DA SILVA	2015-11-18	955493632	41743808208	\N	(54)9241-8029	(54)3291-9100	\N	Ensino Técnico Completo	\N	Ensino médio Completo	10 Km	2021-01-23	1	1	6	5	2021-08-30 00:45:40.763983
29	389	BIBIANA POMPEU	2015-02-16	832569316	40765307725	\N	(54)9904-3867	(54)9708-1383	\N	Ensino Técnico Completo	\N	Ensino Técnico Completo	10 Km	2021-01-14	4	2	4	4	2021-08-30 00:45:40.763983
30	404	EDIANE REGINA DE SOUZA	2015-02-17	732561913	82250609203	\N	(54)9121-1755	(54)9959-9558	\N	Ensino médio Incomplento	\N	Ensino Técnico Incompleto	1 Km	2021-01-27	2	2	6	4	2021-08-30 00:45:40.763983
31	408	GABRIELA MARINA DOS SANTOS	2015-04-18	696714023	52294010874	\N	(54)3291-4403	(54)9191-7820	\N	Ensino fundamental Completo	\N	Ensino Técnico Completo	1 Km	2021-01-18	5	2	6	3	2021-08-30 00:45:40.763983
32	420	MILENE DA COSTA MONTANARI GAZIERO	2015-01-17	761616505	11949423188	\N	(54)9120-1185	(51)9282-7044	\N	Ensino Técnico Incompleto	\N	Ensino Técnico Incompleto	30 Km	2021-02-04	5	2	6	1	2021-08-30 00:45:40.763983
33	499	GABRIELI DE SOUSA	2015-12-22	137714037	26079353279	\N	\N	(54)3291-2046	\N	Ensino superior Incompleto	\N	Ensino fundamental Incomplento	15 Km	2021-01-15	1	1	6	3	2021-08-30 00:45:40.763983
34	500	FABRICIO ERIK BALLARDIN	2015-11-29	119897922	37590158418	\N	\N	(54)3291-3642	\N	Ensino superior Incompleto	\N	Ensino médio Completo	1 Km	2021-02-06	4	2	6	5	2021-08-30 00:45:40.763983
35	530	LETÍCIA SORANZO	2015-04-05	610051059	84023896615	\N	(54)3291-4201	32913005	\N	Ensino fundamental Incomplento	\N	Ensino superior Completo	50 Km	2021-01-14	1	2	6	5	2021-08-30 00:45:40.763983
36	531	MICHAEL PEDRO BOFF	2015-09-02	866486108	30781470015	\N	(54)9122-9290	32915337	\N	Ensino médio Completo	\N	Ensino fundamental Completo	15 Km	2021-01-14	4	1	1	2	2021-08-30 00:45:40.763983
37	532	GELCEMARA CASANOVA	2015-11-27	754886918	78663815870	\N	(54)3291-3640	(54)3291-4124	\N	Ensino fundamental Incomplento	\N	Ensino superior Completo	5 Km	2021-01-22	4	2	6	2	2021-08-30 00:45:40.763983
38	544	GERCI BARBOZA	2015-03-19	799346281	92883852435	\N	(54)3291-1437	(54)9923-6992	\N	Ensino superior Completo	\N	Ensino médio Incomplento	5 Km	2021-02-02	3	1	6	5	2021-08-30 00:45:40.763983
39	556	ROSIMERI ASCARI	2015-11-09	164763720	63738715715	\N	(54)9139-5992	(54)3291-5138	\N	Ensino médio Completo	\N	Ensino fundamental Incomplento	5 Km	2021-01-24	2	2	2	5	2021-08-30 00:45:40.763983
40	628	 GABRIEL CASSOL	2015-05-31	738145553	12554392191	\N	(54)3291-7487	(54)8116-2060	\N	Ensino fundamental Completo	\N	Ensino médio Incomplento	20 Km	2021-01-21	5	1	6	5	2021-08-30 00:45:40.763983
41	644	 THALES ZATTA MEDEIROS	2015-08-06	945652101	47115350514	\N	(54)3291-6355	(54)9926-8613	\N	Ensino médio Completo	\N	Ensino Técnico Completo	5 Km	2021-01-11	4	1	6	5	2021-08-30 00:45:40.763983
42	660	 EDUARDA LEMOS LEITE	2015-01-26	862667161	10537582782	\N	(54)3291-4942	(54)9109-8235	\N	Ensino Técnico Completo	\N	Ensino fundamental Completo	1 Km	2021-01-20	4	2	6	3	2021-08-30 00:45:40.763983
43	670	 NATHÁLIA TOMIELLO	2015-11-04	906901698	41723381962	\N	(54)9619-9161	(54)9958-5314	\N	Ensino Técnico Incompleto	\N	Ensino superior Incompleto	15 Km	2021-01-25	1	2	6	3	2021-08-30 00:45:40.763983
44	694	 HELEN DA COSTA FRANÇA	2015-02-12	948492466	35602078816	\N	(54)9134-4156	(54)8435-7135	\N	Ensino superior Completo	\N	Ensino Técnico Completo	20 Km	2021-01-14	5	2	6	2	2021-08-30 00:45:40.763983
45	695	 TALIA ROSA FORTUNATTI	2015-02-08	975830997	89071210860	\N	(54)9635-5019	3291-4573	\N	Ensino superior Completo	\N	Ensino superior Completo	1 Km	2021-01-21	1	2	6	5	2021-08-30 00:45:40.763983
46	711	ELISA GUERRA	2015-01-14	250978092	74257143916	\N	(54)3921-7220	(54)3291-5307	\N	Ensino fundamental Incomplento	\N	Ensino superior Incompleto	1 Km	2021-01-18	5	2	6	3	2021-08-30 00:45:40.763983
47	726	JACIELI SUZIN	2015-02-09	311636023	87394266524	\N	(54)9620-3908	(54)3291-5304	\N	Ensino superior Incompleto	\N	Ensino fundamental Completo	1 Km	2021-02-05	1	2	6	5	2021-08-30 00:45:40.763983
48	753	DANIELE CASAROTTO PREBIANCA	2015-06-11	159383844	25710716517	\N	(54)3291-7073	(54)3291-1962	\N	Ensino superior Completo	\N	Ensino fundamental Completo	15 Km	2021-02-08	1	2	6	3	2021-08-30 00:45:40.763983
49	769	ANA JULIA POSSA	2015-12-12	824471304	11541353040	\N	(54)9109-8973	(54)9197-1955	\N	Ensino médio Incomplento	\N	Ensino fundamental Incomplento	15 Km	2021-01-18	5	2	6	5	2021-08-30 00:45:40.763983
50	797	DEMIS ALAN SANDI MOREIRA	2015-08-21	991338952	11752150797	\N	(54)9949-0598	(54)9671-5838	\N	Ensino médio Completo	\N	Ensino médio Incomplento	30 Km	2021-02-08	4	2	1	4	2021-08-30 00:45:40.763983
51	819	VICENTE DA LUZ	2015-11-05	220821997	91349859711	\N	(54)9926-8054	(54)9189-6683	\N	Ensino superior Incompleto	\N	Ensino Técnico Incompleto	10 Km	2021-01-31	4	1	6	5	2021-08-30 00:45:40.763983
52	820	MARINÊS BOMBANA RIZZON	2015-06-16	311253391	79930942856	\N	(54)9919-8672	(54)8435-2581	\N	Ensino superior Completo	\N	Ensino superior Completo	30 Km	2021-01-20	5	2	4	5	2021-08-30 00:45:40.763983
53	841	ANDREI VIEIRA	2015-12-24	404633871	48906082014	\N	(54)9157-5235	(54)9673-9077	\N	Ensino médio Incomplento	\N	Ensino médio Incomplento	5 Km	2021-01-25	4	1	6	3	2021-08-30 00:45:40.763983
54	844	LAURO SOBOLESWKI FLORES	2015-06-30	662484002	59996347462	\N	(54)9912-4692	(54)9932-2231	\N	Ensino fundamental Completo	\N	Ensino Técnico Incompleto	5 Km	2021-01-23	4	1	6	2	2021-08-30 00:45:40.763983
55	863	DENOI MARIA LEONARDELLI CAVALLI	2015-01-04	892661432	43378777922	\N	(54)9971-1252	(54)9180-0938	\N	Ensino Técnico Completo	\N	Ensino fundamental Completo	50 Km	2021-01-26	5	2	6	2	2021-08-30 00:45:40.763983
56	898	AIRTON LUIZ CANALE FILHO	2015-01-30	554643681	10635335277	\N	(54)3291-3106	(54)9183-9486	\N	Ensino fundamental Incomplento	\N	Ensino Técnico Incompleto	1 Km	2021-01-17	3	1	6	3	2021-08-30 00:45:40.763983
57	927	LUAN PINTO BRITO	2015-09-23	118245193	61086054944	\N	(54)9957-5008	(54)9123-9838	\N	Ensino superior Completo	\N	Ensino Técnico Completo	20 Km	2021-01-14	2	2	6	3	2021-08-30 00:45:40.763983
58	943	CAMILA DA SILVA BRESOLIN POSSA	2015-08-15	699248558	30441238912	\N	(54)9627-6013	(54)9190-0812	\N	Ensino superior Incompleto	\N	Ensino superior Completo	5 Km	2021-02-01	3	2	6	3	2021-08-30 00:45:40.763983
59	963	PATRÍCIA CITTON	2015-08-31	570574858	21089126886	\N	91318737	(54)9700-8428	\N	Ensino médio Incomplento	\N	Ensino Técnico Incompleto	5 Km	2021-02-02	1	2	6	5	2021-08-30 00:45:40.763983
60	964	RITA DE CASSIA BOGO	2015-06-15	868699656	45896439716	\N	99529552	(54)9980-2117	\N	Ensino fundamental Incomplento	\N	Ensino médio Incomplento	30 Km	2021-01-29	5	2	3	5	2021-08-30 00:45:40.763983
61	967	GUILHERME CICHIN SPIGOLON	2015-04-20	241117065	83340317014	\N	(54)9949-5074	(54)9650-2698	\N	Ensino médio Completo	\N	Ensino Técnico Completo	20 Km	2021-01-31	1	1	1	3	2021-08-30 00:45:40.763983
62	978	MARIA TERESA CECHINATO	2015-06-26	313461052	88625859023	\N	(54)3235-5114	(54)3280-1136	\N	Ensino Técnico Completo	\N	Ensino Técnico Completo	20 Km	2021-01-23	4	2	4	3	2021-08-30 00:45:40.763983
63	981	GENAINA PRISCILA PAGNO	2015-07-24	628965023	20245144909	\N	(54)3291-3564	(54)8435-7134	\N	Ensino fundamental Incomplento	\N	Ensino superior Incompleto	15 Km	2021-01-14	4	2	6	2	2021-08-30 00:45:40.763983
64	987	LIAMARA GARBIN RODRIGUES	2015-09-23	227403556	55310981162	\N	(  )9946-9354	(54)9210-7586	\N	Ensino fundamental Incomplento	\N	Ensino Técnico Completo	1 Km	2021-02-04	1	2	1	5	2021-08-30 00:45:40.763983
65	75	NATÁLIA CAMASSOLA	2014-07-26	403399474	12515157361	\N	\N	3281022	\N	Ensino médio Completo	\N	Ensino Técnico Completo	1 Km	2021-01-19	3	2	1	3	2021-08-30 00:45:40.763983
66	105	SUELI TERESINHA VALDEZ	2014-02-19	778432256	66117047517	\N	(54)3291-8200	(54)3291-4045	\N	Ensino superior Incompleto	\N	Ensino Técnico Completo	1 Km	2021-02-03	1	2	6	2	2021-08-30 00:45:40.763983
67	128	FRANCIELI RODRIGUES DOS SANTOS	2014-10-01	998570980	96337592770	\N	(54)3291-2129	32678229	\N	Ensino superior Incompleto	\N	Ensino Técnico Incompleto	15 Km	2021-01-14	1	2	6	2	2021-08-30 00:45:40.763983
68	164	MARIA EDUARDA BRESOLIN CRESTANA	2014-03-31	730859298	83783588594	\N	(54)3291-7501	32914430	\N	Ensino médio Completo	\N	Ensino fundamental Completo	1 Km	2021-01-24	4	2	6	1	2021-08-30 00:45:40.763983
69	171	NILCE SUSANA MENGON	2014-01-31	971311523	31643817116	\N	(54)3291-2930	32911875	\N	Ensino fundamental Incomplento	\N	Ensino médio Incomplento	5 Km	2021-02-06	5	2	1	5	2021-08-30 00:45:40.763983
70	174	LUIZ BUGANÇA	2014-04-19	963272766	18395966747	\N	(54)9210-4833	91128043	\N	Ensino superior Incompleto	\N	Ensino superior Incompleto	5 Km	2021-01-30	1	1	6	5	2021-08-30 00:45:40.763983
71	186	MARIA JOEMA MACEDO DOS SANTOS	2014-11-22	310056310	39740903468	\N	(54)9990-0226	3504-2447	\N	Ensino médio Incomplento	\N	Ensino superior Completo	15 Km	2021-01-24	2	2	6	3	2021-08-30 00:45:40.763983
72	224	OTÁVIO RECH	2014-09-05	118319438	88019175919	\N	(54)9966-2010	(54)3291-4110	\N	Ensino superior Incompleto	\N	Ensino fundamental Completo	1 Km	2021-01-17	4	1	6	3	2021-08-30 00:45:40.763983
73	246	MARCELO ALBERTO BOPSIN	2014-10-05	591414165	66039729150	\N	(54)9641-9927	(54)9631-8342	\N	Ensino Técnico Incompleto	\N	Ensino médio Incomplento	10 Km	2021-01-31	3	1	6	5	2021-08-30 00:45:40.763983
74	286	PATRICK RIBEIRO LOPES	2014-04-23	973621186	77363770246	\N	32911954	32915357	\N	Ensino superior Incompleto	\N	Ensino médio Completo	10 Km	2021-01-26	1	1	6	2	2021-08-30 00:45:40.763983
75	290	KAMILLY DANBOWSKI	2014-11-10	325669480	75471105934	\N	(54)9667-7878	(54)3291-3304	\N	Ensino Técnico Incompleto	\N	Ensino Técnico Incompleto	5 Km	2021-01-21	4	2	3	4	2021-08-30 00:45:40.763983
76	305	CLARICE ASCARI	2014-07-05	218836564	69320190650	\N	(54)9666-7511	(54)3291-3498	\N	Ensino superior Incompleto	\N	Ensino Técnico Completo	5 Km	2021-01-21	3	2	6	4	2021-08-30 00:45:40.763983
77	315	DANIEL DA SILVA CARVALHO	2014-08-15	862387740	60862890706	\N	(54)9928-7836	(54)3291-4783	\N	Ensino superior Incompleto	\N	Ensino superior Completo	1 Km	2021-01-30	1	1	6	5	2021-08-30 00:45:40.763983
78	388	GABRIELE B. GIOTTI	2014-02-17	640897782	17307131846	\N	(54)9906-1470	(54)3291-3845	\N	Ensino superior Incompleto	\N	Ensino fundamental Incomplento	20 Km	2021-01-10	4	2	6	3	2021-08-30 00:45:40.763983
79	409	KRICIAN FURTADO BRANCO FOGAÇA	2014-11-22	409094686	39660970866	\N	(54)9924-9291	(54)9144-3398	\N	Ensino Técnico Completo	\N	Ensino Técnico Incompleto	50 Km	2021-01-24	1	1	6	5	2021-08-30 00:45:40.763983
80	413	ERIK WILIAN RODRIGUES DO PRADO	2014-05-25	292085141	21546479984	\N	(54)9973-7644	(54)3291-2761	\N	Ensino Técnico Incompleto	\N	Ensino Técnico Incompleto	1 Km	2021-01-29	4	1	6	1	2021-08-30 00:45:40.763983
81	416	RODRIGO RIZZON	2014-01-23	358138702	38477996813	\N	(54)9657-2373	(54)3291-1406	\N	Ensino médio Incomplento	\N	Ensino médio Incomplento	20 Km	2021-01-30	1	1	6	3	2021-08-30 00:45:40.763983
82	417	JHORDAN ADEMIR DOS SANTOS	2014-07-23	322877949	79022984437	\N	(54)3235-5044	(54)3291-4064	\N	Ensino superior Completo	\N	Ensino Técnico Completo	5 Km	2021-01-30	2	1	6	3	2021-08-30 00:45:40.763983
83	423	EVERTON PACHECO ALVES	2014-10-28	789815846	16254359920	\N	(54)3235-1069	(54)3291-3277	\N	Ensino superior Completo	\N	Ensino fundamental Incomplento	15 Km	2021-01-28	4	1	6	5	2021-08-30 00:45:40.763983
84	436	JENNIFER MACHADO DOS SANTOS	2014-07-12	675003263	73805039575	\N	(54)9162-4411	(54)9927-3641	\N	Ensino fundamental Incomplento	\N	Ensino superior Completo	15 Km	2021-02-03	1	2	6	2	2021-08-30 00:45:40.763983
85	461	ALISSON DE CANDIDO BARBOSA	2014-01-15	520606694	85610751352	\N	(54)9164-6665	32911020	\N	Ensino fundamental Completo	\N	Ensino superior Incompleto	5 Km	2021-01-16	5	1	6	5	2021-08-30 00:45:40.763983
86	486	BRUNA CIOATO SANDI	2014-10-16	169005293	59022438799	\N	(54)3291-3503	(54)3291-6361	\N	Ensino superior Completo	\N	Ensino Técnico Completo	1 Km	2021-01-19	1	2	6	3	2021-08-30 00:45:40.763983
87	502	EDUARDO SILVA	2014-09-21	758142665	73041726923	\N	\N	(54)3291-7493	\N	Ensino médio Completo	\N	Ensino superior Incompleto	1 Km	2021-02-07	1	1	6	3	2021-08-30 00:45:40.763983
88	510	LEONARDO LAZZARETI	2014-11-29	893079196	20870759286	\N	(54)3291-3738	(54)9642-2791	\N	Ensino Técnico Completo	\N	Ensino Técnico Completo	15 Km	2021-02-03	3	1	6	5	2021-08-30 00:45:40.763983
89	569	JOÃO FELIPE LUZ	2014-06-12	159352796	27523248531	\N	(54)9943-2497	(54)9927-7057	\N	Ensino fundamental Incomplento	\N	Ensino fundamental Completo	30 Km	2021-01-17	4	1	6	5	2021-08-30 00:45:40.763983
90	588	ALEXANDRE SORANZO	2014-09-25	814818442	63112742576	\N	(54)3291-1692	(54)9986-3554	\N	Ensino médio Incomplento	\N	Ensino fundamental Incomplento	5 Km	2021-02-07	1	1	3	5	2021-08-30 00:45:40.763983
91	594	SUZANA DE FÁTIMA BORGES LAURIANO	2014-04-27	905350823	41006734260	\N	(54)9919-8322	(54)3291-3348	\N	Ensino médio Incomplento	\N	Ensino fundamental Incomplento	20 Km	2021-02-02	2	2	6	5	2021-08-30 00:45:40.763983
92	618	RODRIGO SOLDATELLI DA ROSA	2014-03-28	672648480	78941340243	\N	(54)9109-1841	(54)9618-2718	\N	Ensino Técnico Completo	\N	Ensino médio Completo	20 Km	2021-01-23	3	1	6	5	2021-08-30 00:45:40.763983
93	649	 DAIANE MASCARELLO	2014-10-19	355844421	17731200313	\N	(54)9110-1825	(54)3291-4308	\N	Ensino médio Completo	\N	Ensino Técnico Incompleto	5 Km	2021-02-01	1	2	6	2	2021-08-30 00:45:40.763983
94	675	 FELIPE ZANELLA	2014-01-22	385458819	17485375510	\N	(11)1111-1111	(54)3291-6520	\N	Ensino superior Completo	\N	Ensino Técnico Incompleto	5 Km	2021-01-24	1	1	6	1	2021-08-30 00:45:40.763983
95	681	 TAYANE PERES GONÇALVES	2014-09-28	862795659	52926645462	\N	(54)9961-3621	(54)9941-5547	\N	Ensino superior Completo	\N	Ensino fundamental Completo	5 Km	2021-01-29	4	2	6	2	2021-08-30 00:45:40.763983
96	698	 DANIEL BARBOSA LIMA	2014-08-31	436222367	38881334747	\N	(54)9912-6124	(54)3291-2215	\N	Ensino superior Incompleto	\N	Ensino fundamental Incomplento	30 Km	2021-01-13	1	1	6	4	2021-08-30 00:45:40.763983
97	704	CAMILA SELENE QUISSINI	2014-04-25	783164698	77590203999	\N	(54)9253-2184	(54)3291-4111	\N	Ensino superior Completo	\N	Ensino superior Completo	15 Km	2021-02-04	1	2	6	3	2021-08-30 00:45:40.763983
98	705	CAIO IAN MAR LEMOS	2014-03-29	408811979	77939852443	\N	(54)3235-1167	(54)9979-2704	\N	Ensino Técnico Incompleto	\N	Ensino médio Incomplento	20 Km	2021-01-11	3	1	6	2	2021-08-30 00:45:40.763983
99	724	ELOIZA CICHIN CARARO	2014-02-10	857003197	98279752422	\N	(54)9706-5117	(54)8116-6922	\N	Ensino Técnico Incompleto	\N	Ensino superior Completo	15 Km	2021-01-21	1	2	6	3	2021-08-30 00:45:40.763983
100	755	AUGUSTO RIZZON	2014-01-31	288323514	96846779269	\N	(54)8119-3624	(54)9176-3971	\N	Ensino superior Incompleto	\N	Ensino superior Incompleto	10 Km	2021-02-03	1	1	6	5	2021-08-30 00:45:40.763983
101	768	MILENA VEDANA	2014-10-13	497015083	10499603525	\N	(54)9110-6394	(54)3291-1808	\N	Ensino médio Incomplento	\N	Ensino Técnico Completo	1 Km	2021-01-19	4	2	1	5	2021-08-30 00:45:40.763983
102	781	WILLIAN DE LIMA	2014-03-26	210170347	27506448247	\N	(54)3291-4411	(54)3291-1840	\N	Ensino Técnico Completo	\N	Ensino superior Completo	30 Km	2021-01-11	4	1	6	5	2021-08-30 00:45:40.763983
103	784	BRUNO ZANETTE	2014-10-14	943315709	85215917313	\N	(54)9157-7598	(54)3291-2887	\N	Ensino superior Incompleto	\N	Ensino superior Incompleto	10 Km	2021-01-21	1	1	6	1	2021-08-30 00:45:40.763983
104	786	MATHEUS SIOTA DE LIMA	2014-08-07	492091152	83369385707	\N	(51)8033-4543	(54)9685-0114	\N	Ensino superior Completo	\N	Ensino fundamental Incomplento	15 Km	2021-01-18	4	1	6	3	2021-08-30 00:45:40.763983
105	801	JONATHAN DE LOOK	2014-01-21	877337862	78280492350	\N	(54)3291-5075	(54)9162-3576	\N	Ensino fundamental Completo	\N	Ensino médio Incomplento	5 Km	2021-02-04	5	1	6	4	2021-08-30 00:45:40.763983
106	803	EMANUEL GOMES	2014-12-16	982411382	85317500207	\N	(54)9244-0316	(54)9189-6683	\N	Ensino Técnico Incompleto	\N	Ensino fundamental Completo	1 Km	2021-01-12	1	1	6	5	2021-08-30 00:45:40.763983
107	831	IARA STUDIZINSKI	2014-11-29	589245932	56035943855	\N	(54)9656-3054	(54)9165-1573	\N	Ensino fundamental Incomplento	\N	Ensino Técnico Completo	1 Km	2021-02-06	5	2	6	4	2021-08-30 00:45:40.763983
108	876	MAIQUI SOLDERA	2014-07-18	698493215	87273677987	\N	(54)9953-3581	(54)3291-4466	\N	Ensino Técnico Completo	\N	Ensino médio Incomplento	10 Km	2021-01-11	4	1	6	2	2021-08-30 00:45:40.763983
109	882	RUI RIZZON	2014-04-08	876736531	79918511147	\N	(54)9623-7374	(54)9942-2699	\N	Ensino fundamental Incomplento	\N	Ensino Técnico Incompleto	5 Km	2021-02-06	5	1	6	5	2021-08-30 00:45:40.763983
110	892	RUBIANE GUERRA	2014-05-23	687576178	28867699886	\N	(54)9917-0716	(54)9130-8423	\N	Ensino fundamental Incomplento	\N	Ensino Técnico Completo	10 Km	2021-01-28	1	2	6	5	2021-08-30 00:45:40.763983
111	901	JOÃO MARCOS CECATO	2014-04-04	653341396	60551312321	\N	(54)3291-3437	(54)9623-2883	\N	Ensino Técnico Completo	\N	Ensino superior Incompleto	30 Km	2021-01-26	1	1	4	2	2021-08-30 00:45:40.763983
112	903	LAURA CASTILHOS DOS REIS	2014-07-11	479460417	25466625175	\N	(54)9943-9158	(54)9982-5508	\N	Ensino fundamental Incomplento	\N	Ensino Técnico Incompleto	10 Km	2021-02-01	3	2	6	3	2021-08-30 00:45:40.763983
113	937	TAINARA DA SILVA CARDOSO	2014-12-24	433739925	71585214511	\N	(54)9658-0856	(53)9954-1108	\N	Ensino fundamental Incomplento	\N	Ensino Técnico Incompleto	5 Km	2021-02-07	2	2	6	4	2021-08-30 00:45:40.763983
114	941	MARIA CRISTINA MARCANZONI	2014-06-01	691180897	68934816916	\N	(54)9181-2124	(54)3291-2156	\N	Ensino médio Completo	\N	Ensino Técnico Completo	30 Km	2021-01-13	1	2	3	2	2021-08-30 00:45:40.763983
115	985	AMANDA SCODRO	2014-03-02	598656146	78364540257	\N	32912596	(54)9910-4829	\N	Ensino fundamental Completo	\N	Ensino superior Incompleto	15 Km	2021-01-13	4	2	1	4	2021-08-30 00:45:40.763983
116	28	CRISTIAN CAMATTI MENEGON	2013-06-08	469054691	88071449436	\N	(54)8154-6723	(54)9996-4577	\N	Ensino fundamental Incomplento	\N	Ensino fundamental Incomplento	15 Km	2021-01-29	1	1	6	2	2021-08-30 00:45:40.763983
117	58	GUILHERME FIGUEIRÓ HALLAL	2013-04-13	696361017	12949541173	\N	(54)3291-2557	(54)9144-8826	\N	Ensino Técnico Completo	\N	Ensino fundamental Incomplento	5 Km	2021-02-01	4	1	6	5	2021-08-30 00:45:40.763983
118	76	JÉSSICA FOCHESATO	2013-03-07	862313949	55348667160	\N	(54)9648-0061	32911762	\N	Ensino médio Incomplento	\N	Ensino médio Completo	10 Km	2021-01-23	5	2	6	2	2021-08-30 00:45:40.763983
119	91	DEISE CARLA BOSSARDI	2013-09-24	938757069	90897524215	\N	(54)3291-8100	(54)9179-7950	\N	Ensino Técnico Incompleto	\N	Ensino superior Completo	5 Km	2021-01-13	2	2	6	5	2021-08-30 00:45:40.763983
120	102	RICARDO DALZOTTO	2013-03-12	861610863	74912584514	\N	(54)3291-9848	32914199	\N	Ensino médio Incomplento	\N	Ensino superior Completo	15 Km	2021-01-26	1	1	6	2	2021-08-30 00:45:40.763983
121	106	BERNARDETE PEROZZO RIZZON	2013-01-20	171862056	87388320308	\N	(54)9143-4902	(54)3291-3107	\N	Ensino médio Completo	\N	Ensino fundamental Completo	1 Km	2021-01-25	1	2	6	5	2021-08-30 00:45:40.763983
122	139	ARTHUR DE ALMEIDA RAMOS	2013-02-01	415851881	84202187724	\N	(54)9146-2360	(54)9149-7396	\N	Ensino superior Incompleto	\N	Ensino fundamental Completo	10 Km	2021-01-30	1	1	6	3	2021-08-30 00:45:40.763983
123	150	AMANDA DA SILVA	2013-12-06	327305373	36419248218	\N	(54)9668-6283	(54)3291-4257	\N	Ensino Técnico Completo	\N	Ensino médio Completo	10 Km	2021-02-01	1	2	6	5	2021-08-30 00:45:40.763983
124	159	MILENA BASSANESI	2013-10-06	746196684	60769355982	\N	(54)9119-2863	(54)9128-0051	\N	Ensino médio Completo	\N	Ensino fundamental Completo	30 Km	2021-01-27	4	2	6	2	2021-08-30 00:45:40.763983
125	178	ERIC DALLAGNO	2013-12-05	376893610	13314736967	\N	(54)9677-0281	(54)3291-2214	\N	Ensino fundamental Completo	\N	Ensino Técnico Completo	5 Km	2021-02-01	1	2	6	2	2021-08-30 00:45:40.763983
126	200	LUCAS PEDROTI	2013-07-02	952916222	40975645102	\N	(54)9113-0022	(54)3235-1657	\N	Ensino fundamental Completo	\N	Ensino Técnico Completo	30 Km	2021-02-05	5	1	6	5	2021-08-30 00:45:40.763983
127	214	GABRIEL ANGELO CHINELATO TAUFER	2013-05-01	262923469	86717495940	\N	(54)9993-1624	(54)9652-9088	\N	Ensino médio Incomplento	\N	Ensino fundamental Incomplento	1 Km	2021-01-13	1	1	2	5	2021-08-30 00:45:40.763983
128	215	OTÁVIO AUGUSTO DAROS	2013-06-28	788413507	84515795040	\N	(54)9184-2962	32801150	\N	Ensino Técnico Incompleto	\N	Ensino médio Incomplento	10 Km	2021-01-31	4	1	1	3	2021-08-30 00:45:40.763983
129	230	ÁLVARO GATELLI DE SOUZA	2013-08-29	637256327	18435054927	\N	(54)9196-7654	\N	\N	Ensino fundamental Completo	\N	Ensino fundamental Incomplento	5 Km	2021-01-28	1	1	6	2	2021-08-30 00:45:40.763983
130	255	MAICON JONATAN SOARES SILVEIRA SOUZA	2013-12-11	559498126	93326842989	\N	(54)9628-1388	(54)9987-6134	\N	Ensino superior Completo	\N	Ensino Técnico Incompleto	1 Km	2021-02-02	2	1	4	3	2021-08-30 00:45:40.763983
131	266	 PAMELLA FERREIRA DE OLIVEIRA CARAMORI	2013-03-25	550787377	74831795208	\N	(54)9935-6498	(00)0000-0000	\N	Ensino superior Incompleto	\N	Ensino Técnico Incompleto	1 Km	2021-01-11	2	2	6	5	2021-08-30 00:45:40.763983
132	267	MATEUS ROMANI	2013-12-09	203544582	65955591215	\N	\N	(54)3291-4837	\N	Ensino fundamental Incomplento	\N	Ensino médio Incomplento	15 Km	2021-02-06	3	1	6	3	2021-08-30 00:45:40.763983
133	287	JÚLIA CAVAGNOLLI DE CASTILHOS	2013-07-14	818369524	70050685410	\N	(54)3291-1767	91017750	\N	Ensino fundamental Completo	\N	Ensino superior Completo	10 Km	2021-01-10	4	2	6	4	2021-08-30 00:45:40.763983
134	288	RAFAEL FONGARO	2013-09-17	399625091	78180666447	\N	(54)9614-7370	(54)3291-4235	\N	Ensino fundamental Completo	\N	Ensino médio Completo	5 Km	2021-01-31	5	1	6	5	2021-08-30 00:45:40.763983
135	292	TANIELE DE ATAIDE DE VIDI	2013-01-22	747842392	74133761841	\N	(54)9971-5271	(54)3504-1247	\N	Ensino fundamental Incomplento	\N	Ensino médio Completo	10 Km	2021-02-04	4	2	6	3	2021-08-30 00:45:40.763983
136	311	FERNANDO VIEIRA GOLARTE	2013-07-29	719218707	15103029043	\N	32912261	(54)3291-4799	\N	Ensino médio Completo	\N	Ensino médio Incomplento	5 Km	2021-02-01	4	1	6	2	2021-08-30 00:45:40.763983
137	312	LUCAS MENEGUSSI	2013-04-23	561719844	13666249702	\N	(54)9137-5784	(54)8115-3154	\N	Ensino médio Completo	\N	Ensino fundamental Incomplento	30 Km	2021-01-10	2	1	6	3	2021-08-30 00:45:40.763983
138	313	CAROLINE DE CARVALHO BORGES	2013-09-28	369861972	41635844093	\N	(54)9111-2221	(54)3291-5190	\N	Ensino médio Completo	\N	Ensino superior Incompleto	1 Km	2021-01-31	5	2	6	5	2021-08-30 00:45:40.763983
139	317	ANDREI LIDUVINO MASCARELLO	2013-03-17	378282060	38340100459	\N	(54)9101-7750	(54)9965-4045	\N	Ensino médio Incomplento	\N	Ensino médio Completo	10 Km	2021-01-15	1	1	6	5	2021-08-30 00:45:40.763983
140	320	DANUSA DA ROCHA RENOSTO	2013-09-23	419499115	28549372437	\N	(54)3291-4998	(54)3291-3909	\N	Ensino fundamental Completo	\N	Ensino superior Completo	30 Km	2021-02-05	4	2	6	5	2021-08-30 00:45:40.763983
141	335	MAURÍCIO ANDREOLI	2013-05-22	834242138	27316702106	\N	(54)9907-0915	(54)9626-8449	\N	Ensino fundamental Incomplento	\N	Ensino fundamental Completo	1 Km	2021-01-14	1	1	6	5	2021-08-30 00:45:40.763983
142	365	JULIANA GOMES	2013-05-18	202446774	96219438023	\N	(54)9971-5520	(54)9923-3565	\N	Ensino fundamental Completo	\N	Ensino médio Incomplento	5 Km	2021-01-27	1	2	6	2	2021-08-30 00:45:40.763983
143	392	ISADORA MAGRIN MARCON	2013-08-15	704497083	97952828605	\N	(54)9142-6062	(54)8447-5345	\N	Ensino superior Incompleto	\N	Ensino Técnico Incompleto	15 Km	2021-01-14	4	2	6	3	2021-08-30 00:45:40.763983
144	426	MARIA EDUARDA DE SOUZA	2013-11-23	104907414	90742358421	\N	(54)9163-9869	32912259	\N	Ensino médio Incomplento	\N	Ensino médio Incomplento	1 Km	2021-01-16	3	2	6	5	2021-08-30 00:45:40.763983
145	441	BARBARA PEDROSO DE FREITAS	2013-01-08	905031443	42919883002	\N	(54)9144-9202	\N	\N	Ensino superior Completo	\N	Ensino superior Completo	50 Km	2021-01-29	4	2	4	5	2021-08-30 00:45:40.763983
146	454	EDNO ZANELLA	2013-02-18	305548821	44543962590	\N	(54)9168-6758	32914388	\N	Ensino fundamental Completo	\N	Ensino superior Completo	5 Km	2021-01-23	4	1	6	5	2021-08-30 00:45:40.763983
147	455	GABRIEL SANDRI CHEMELLO	2013-04-28	425563914	47340493255	\N	(54)9966-0608	3291-5010	\N	Ensino Técnico Completo	\N	Ensino médio Completo	10 Km	2021-01-22	4	1	6	2	2021-08-30 00:45:40.763983
148	476	GENAINA PAGNO	2013-06-03	270121700	63631935029	\N	(54)9148-6802	(54)3291-4161	\N	Ensino superior Incompleto	\N	Ensino fundamental Completo	10 Km	2021-01-14	3	2	6	3	2021-08-30 00:45:40.763983
149	498	PATRICK GONÇALVES PEREIRA	2013-03-03	446643489	74788222033	\N	\N	(54)9137-8647	\N	Ensino fundamental Incomplento	\N	Ensino Técnico Incompleto	20 Km	2021-01-23	1	2	6	3	2021-08-30 00:45:40.763983
150	526	RAFAELA GRISON	2013-11-16	755919313	22444185052	\N	(54)9181-7054	3291-2596	\N	Ensino fundamental Incomplento	\N	Ensino Técnico Completo	10 Km	2021-01-18	4	2	6	3	2021-08-30 00:45:40.763983
151	560	RICARDO JUNIOR PEDROTI	2013-03-07	514519759	67275569750	\N	(54)9608-2320	(54)3291-2787	\N	Ensino fundamental Completo	\N	Ensino fundamental Incomplento	5 Km	2021-01-26	1	1	6	5	2021-08-30 00:45:40.763983
152	563	AREOLI MARGARIDA LIPOSKI RIZZON	2013-05-17	752032694	24526590629	\N	(54)3291-1638	(54)3291-1839	\N	Ensino médio Incomplento	\N	Ensino Técnico Incompleto	5 Km	2021-01-11	4	1	6	5	2021-08-30 00:45:40.763983
153	573	LUCAS MOISÉS THOME DA ROSA	2013-06-05	641938737	41553915073	\N	(54)9139-5025	(54)3291-4871	\N	Ensino fundamental Completo	\N	Ensino Técnico Completo	1 Km	2021-01-11	5	1	6	2	2021-08-30 00:45:40.763983
154	582	MARCO ANTONIO MICHELON DE ROSSO	2013-01-12	693855068	35780793416	\N	(54)3291-2942	32911905	\N	Ensino Técnico Incompleto	\N	Ensino superior Incompleto	1 Km	2021-02-06	1	1	6	3	2021-08-30 00:45:40.763983
155	605	CHEILA MIÉLE GIRARDINI	2013-09-09	570394316	89388748964	\N	(54)9962-4982	(54)3291-2674	\N	Ensino superior Incompleto	\N	Ensino superior Incompleto	5 Km	2021-01-24	4	2	6	5	2021-08-30 00:45:40.763983
156	607	KELYN FAGUNDES DILLI	2013-10-03	425604839	76844008173	\N	(54)9658-1833	(54)9668-2424	\N	Ensino fundamental Completo	\N	Ensino superior Incompleto	5 Km	2021-02-06	4	2	6	2	2021-08-30 00:45:40.763983
157	642	 LEONARDO GIOTTI	2013-07-05	629836097	66160693159	\N	(  )    -	(54)3291-1792	\N	Ensino médio Incomplento	\N	Ensino Técnico Incompleto	5 Km	2021-01-11	4	1	6	3	2021-08-30 00:45:40.763983
158	650	 LILIAN ELISABETI RODRIGUÊS DA SILVA	2013-01-09	123738618	26353432867	\N	(54)9976-0730	(54)9965-6995	\N	Ensino superior Completo	\N	Ensino superior Incompleto	5 Km	2021-01-18	4	2	6	5	2021-08-30 00:45:40.763983
159	661	 LAURICIO DE OLIVEIRA FERNANDES	2013-09-02	467658438	59952453825	\N	(54)3291-1209	(54)9912-9668	\N	Ensino Técnico Incompleto	\N	Ensino Técnico Incompleto	30 Km	2021-02-05	4	1	6	2	2021-08-30 00:45:40.763983
160	676	 TERESINHA ISABEL CIOATTO	2013-10-11	874487213	40728662811	\N	(54)9928-3831	(54)9652-0406	\N	Ensino superior Completo	\N	Ensino Técnico Incompleto	5 Km	2021-01-10	4	2	6	3	2021-08-30 00:45:40.763983
161	687	 THALITA PREBIANCA FIAMINGHI	2013-03-12	348728214	64044527402	\N	(54)9692-0879	(54)9953-5058	\N	Ensino Técnico Incompleto	\N	Ensino médio Completo	5 Km	2021-02-04	4	2	6	3	2021-08-30 00:45:40.763983
162	701	 MARIA ISABEL MOTA DA SILVA	2013-07-15	780365796	59999002811	\N	(54)3291-1382	(54)3291-4423	\N	Ensino fundamental Completo	\N	Ensino fundamental Completo	5 Km	2021-01-31	2	2	4	3	2021-08-30 00:45:40.763983
163	744	EDUARDA DOS SANTOS SILVA	2013-08-08	440995597	70957475381	\N	(54)9154-6339	(54)9133-5631	\N	Ensino médio Completo	\N	Ensino fundamental Completo	10 Km	2021-01-19	3	2	4	2	2021-08-30 00:45:40.763983
164	749	FLAVIANO SCOPEL	2013-03-13	205769170	82112041153	\N	(54)3291-2683	(54)3235-1076	\N	Ensino superior Incompleto	\N	Ensino fundamental Completo	20 Km	2021-01-25	4	1	3	5	2021-08-30 00:45:40.763983
165	775	ARTHUR MUSSATTO MIOTTO	2013-12-17	993417802	65279170681	\N	(54)9602-4110	(54)9100-6669	\N	Ensino superior Completo	\N	Ensino Técnico Completo	20 Km	2021-01-27	2	1	6	2	2021-08-30 00:45:40.763983
166	777	IGOR DE OLIVEIRA DALLARGNOL	2013-06-14	807853601	98285462702	\N	(54)9255-4210	(54)3291-2848	\N	Ensino fundamental Incomplento	\N	Ensino superior Completo	1 Km	2021-02-05	4	1	6	3	2021-08-30 00:45:40.763983
167	791	ROSIMERE REGINA DRAGO	2013-06-23	143395638	88611492735	\N	(54)9640-5088	(54)3291-7560	\N	Ensino fundamental Completo	\N	Ensino médio Completo	5 Km	2021-02-03	5	2	6	3	2021-08-30 00:45:40.763983
168	808	NILMA CLARA PEREIRA	2013-03-30	930685085	53455633063	\N	(54)9204-4465	(54)9100-1193	\N	Ensino médio Incomplento	\N	Ensino superior Completo	5 Km	2021-01-18	4	2	6	4	2021-08-30 00:45:40.763983
169	818	CRISTOFFER DE OLIVEIRA ALVES	2013-06-29	650664793	56725956723	\N	(54)9619-9453	(54)9993-3973	\N	Ensino superior Completo	\N	Ensino superior Incompleto	30 Km	2021-01-15	4	1	1	2	2021-08-30 00:45:40.763983
170	836	LAURA LEITE RODRIGUES	2013-08-12	627018587	59838772776	\N	(54)3291-2103	(11)1111-1111	\N	Ensino fundamental Incomplento	\N	Ensino fundamental Completo	30 Km	2021-02-05	3	2	6	2	2021-08-30 00:45:40.763983
171	849	ALICE DA SILVA CHAVES	2013-04-13	907667402	30623783469	\N	(54)9140-9252	(54)3267-8012	\N	Ensino fundamental Incomplento	\N	Ensino fundamental Incomplento	30 Km	2021-01-18	1	2	6	5	2021-08-30 00:45:40.763983
172	854	VANESSA DOS SANTOS	2013-04-02	803872674	31361668914	\N	3291-3131	(54)9601-8026	\N	Ensino fundamental Incomplento	\N	Ensino superior Completo	15 Km	2021-01-19	3	2	6	2	2021-08-30 00:45:40.763983
173	864	FATIMA RASADOR GIRARDELLO	2013-04-01	195232290	33876763779	\N	(54)3291-2974	(54)9127-1602	\N	Ensino superior Incompleto	\N	Ensino superior Completo	20 Km	2021-01-19	2	2	1	2	2021-08-30 00:45:40.763983
174	929	ARIELE VIEIRA DOS SANTOS	2013-08-23	141721301	64706657920	\N	(54)9136-2238	(54)9920-5173	\N	Ensino Técnico Incompleto	\N	Ensino médio Completo	10 Km	2021-01-28	1	2	6	5	2021-08-30 00:45:40.763983
175	935	CRISTINE MORAES DE SOUZA	2013-07-28	819573305	80519222917	\N	(54)9197-7779	(54)9195-2116	\N	Ensino fundamental Completo	\N	Ensino superior Incompleto	5 Km	2021-02-07	1	2	6	5	2021-08-30 00:45:40.763983
176	950	LUCAS STRIEDES DA SILVA	2013-05-06	244931403	58055522072	\N	(48)9146-6974	(54)9942-3079	\N	Ensino Técnico Incompleto	\N	Ensino superior Completo	15 Km	2021-01-31	1	1	6	3	2021-08-30 00:45:40.763983
177	953	LEONARDO JOSE GUERRA	2013-05-12	784335507	82499375735	\N	32355136	(54)9909-8557	\N	Ensino superior Incompleto	\N	Ensino médio Completo	5 Km	2021-01-17	1	1	6	5	2021-08-30 00:45:40.763983
178	958	FLAVIANO NUNES DOS SANTOS	2013-04-07	198477199	36565018557	\N	(54)9973-5014	(54)9964-3845	\N	Ensino Técnico Completo	\N	Ensino médio Completo	5 Km	2021-01-20	4	1	6	3	2021-08-30 00:45:40.763983
179	970	GILSIANE RIZZO CASANOVA	2013-01-27	276281177	52007296926	\N	99943936	(54)3291-3404	\N	Ensino fundamental Completo	\N	Ensino Técnico Incompleto	1 Km	2021-01-14	1	2	6	2	2021-08-30 00:45:40.763983
180	31	JUCELITO ANTONIO VANAZ	2012-08-20	603878518	29268270244	\N	3291-6028	(54)9995-3909	\N	Ensino superior Completo	\N	Ensino fundamental Incomplento	1 Km	2021-01-18	4	1	6	3	2021-08-30 00:45:40.763983
181	42	RODRIGO SCAIN	2012-08-05	372419306	56290884443	\N	\N	30340109	\N	Ensino superior Completo	\N	Ensino Técnico Incompleto	1 Km	2021-01-16	3	1	6	5	2021-08-30 00:45:40.763983
182	47	CECILIA SCAIN ZARDO	2012-03-09	397363607	60793821626	\N	32917280	3291-2809/	\N	Ensino Técnico Completo	\N	Ensino superior Incompleto	30 Km	2021-01-12	1	2	6	5	2021-08-30 00:45:40.763983
183	49	ALÉX JUNIOR RASADOR	2012-09-01	597451790	53251238156	\N	(54)3291-3071	3291-4534	\N	Ensino superior Completo	\N	Ensino médio Incomplento	5 Km	2021-02-01	4	1	6	3	2021-08-30 00:45:40.763983
184	70	VICTOR TONET RASADOR	2012-04-16	872567498	26991972697	\N	(54)9113-6609	30342623	\N	Ensino Técnico Completo	\N	Ensino superior Incompleto	20 Km	2021-01-17	3	1	6	5	2021-08-30 00:45:40.763983
185	71	MAURÍCIO MARCON	2012-04-13	588103219	67373145168	\N	\N	91888333	\N	Ensino médio Incomplento	\N	Ensino Técnico Incompleto	20 Km	2021-01-22	4	1	6	5	2021-08-30 00:45:40.763983
186	77	EVA QUISSINI	2012-10-17	758573537	39465244467	\N	(54)3291-1262	(54)9979-2615	\N	Ensino médio Completo	\N	Ensino Técnico Completo	50 Km	2021-02-05	3	2	1	5	2021-08-30 00:45:40.763983
187	80	GABRIELA CORSO	2012-06-24	395009487	58874115835	\N	(54)9955-9220	32915349	\N	Ensino fundamental Completo	\N	Ensino fundamental Completo	10 Km	2021-01-17	1	1	6	4	2021-08-30 00:45:40.763983
188	84	EZEQUIEL GAZZIERO	2012-09-22	592952287	53727803765	\N	(54)3291-3770	(54)3291-2537	\N	Ensino superior Completo	\N	Ensino médio Completo	15 Km	2021-01-19	1	1	6	5	2021-08-30 00:45:40.763983
189	116	JOSEMAR CARARO	2012-03-11	545320865	79588120700	\N	(54)9189-0409	32913374	\N	Ensino médio Incomplento	\N	Ensino fundamental Completo	10 Km	2021-01-28	4	1	6	4	2021-08-30 00:45:40.763983
190	130	JENNIFER MANTOVANI FRANCISCO DE CHAVES S	2012-10-06	308017890	54329220911	\N	(54)3291-5035	32912604	\N	Ensino Técnico Completo	\N	Ensino médio Completo	10 Km	2021-01-24	5	2	4	4	2021-08-30 00:45:40.763983
191	149	ERIC CASTILHOS DOS REIS	2012-06-05	487633532	50718121480	\N	(54)3291-3067	(54)9219-9592	\N	Ensino Técnico Completo	\N	Ensino superior Completo	30 Km	2021-01-16	4	1	6	2	2021-08-30 00:45:40.763983
192	151	CLEIDE MORAES DE SOUZA	2012-11-13	901205896	10174645311	\N	(54)3291-9060	(54)9626-1742	\N	Ensino fundamental Incomplento	\N	Ensino superior Incompleto	5 Km	2021-01-25	4	2	6	2	2021-08-30 00:45:40.763983
193	157	MORGANA MICHELON	2012-05-03	407864977	70425751974	\N	(54)9169-5862	(54)3291-7080	\N	Ensino superior Incompleto	\N	Ensino fundamental Completo	20 Km	2021-01-23	4	2	6	5	2021-08-30 00:45:40.763983
194	161	SUÉLEN CASTILHOS RODRIGUES	2012-09-14	410759591	90449575075	\N	(54)3291-7901	32911257	\N	Ensino Técnico Incompleto	\N	Ensino superior Completo	30 Km	2021-02-06	3	2	6	5	2021-08-30 00:45:40.763983
195	172	SIMONE SCOPEL MENEGON	2012-12-16	352719049	62223618118	\N	(54)9909-3207	32912267	\N	Ensino Técnico Completo	\N	Ensino superior Incompleto	30 Km	2021-01-21	1	2	6	5	2021-08-30 00:45:40.763983
196	181	BRUNA ISABEL SANDRI	2012-03-19	430081194	18622918381	\N	(54)9657-7212	(54)3267-8011	\N	Ensino superior Incompleto	\N	Ensino Técnico Incompleto	5 Km	2021-01-16	1	2	6	3	2021-08-30 00:45:40.763983
197	182	RONEI CARLOS DE CASTILHOS	2012-11-27	113937254	30908487630	\N	(54)9910-5709	(54)3235-5039	\N	Ensino médio Completo	\N	Ensino Técnico Completo	10 Km	2021-02-04	2	1	6	3	2021-08-30 00:45:40.763983
198	213	PATRYCK SCARIOT LIRA	2012-02-18	144872144	28579518232	\N	(54)9187-3084	(54)9660-7623	\N	Ensino fundamental Incomplento	\N	Ensino médio Incomplento	5 Km	2021-01-19	1	1	6	3	2021-08-30 00:45:40.763983
199	236	NATALI SUZIN PANASSOL	2012-08-31	557021487	72175442041	\N	(54)9674-4865	(54)9131-5072	\N	Ensino Técnico Incompleto	\N	Ensino médio Incomplento	15 Km	2021-01-31	4	2	6	3	2021-08-30 00:45:40.763983
200	240	ROBERTO ALEXANDRE GUERRA	2012-12-03	290814020	45427537043	\N	(54)9177-5537	(54)9246-2253	\N	Ensino Técnico Completo	\N	Ensino fundamental Incomplento	15 Km	2021-01-23	2	1	6	3	2021-08-30 00:45:40.763983
201	244	MAICOL VÍGOLO	2012-05-04	984433362	48231977073	\N	(54)3291-3941	(54)9168-7714	\N	Ensino Técnico Completo	\N	Ensino superior Completo	15 Km	2021-01-11	3	1	6	3	2021-08-30 00:45:40.763983
202	275	EDUARDO DE OLIVEIRA PREBIANCA.	2012-07-28	934490818	39429892414	\N	32915075	96329462	\N	Ensino médio Completo	\N	Ensino superior Completo	5 Km	2021-01-13	4	1	6	5	2021-08-30 00:45:40.763983
203	323	GISELE MACIEL POLETO	2012-01-18	989297015	29375330536	\N	(54)3291-3202	(54)3291-1074	\N	Ensino superior Incompleto	\N	Ensino Técnico Completo	20 Km	2021-01-23	3	2	6	4	2021-08-30 00:45:40.763983
204	329	PAULO DANIEL BERNARDO DA SILVA	2012-12-11	837371325	44207912209	\N	(54)3291-3143	(54)3291-1603	\N	Ensino Técnico Incompleto	\N	Ensino superior Incompleto	10 Km	2021-02-06	1	1	6	2	2021-08-30 00:45:40.763983
205	340	BRUNO POLO GIORDANI	2012-06-13	264618913	40396701899	\N	(54)3291-1044	(54)3291-3967	\N	Ensino médio Incomplento	\N	Ensino Técnico Incompleto	1 Km	2021-01-11	4	1	6	3	2021-08-30 00:45:40.763983
206	346	RAFAEL RIZZO	2012-02-04	756961587	43537130267	\N	(54)3235-5139	(54)3291-6334	\N	Ensino fundamental Incomplento	\N	Ensino médio Incomplento	10 Km	2021-01-22	3	1	6	3	2021-08-30 00:45:40.763983
207	355	LUCAS MACHADO STEDILE	2012-07-19	648309808	15205512660	\N	(54)9904-5355	(54)3291-2340	\N	Ensino médio Incomplento	\N	Ensino médio Incomplento	10 Km	2021-01-29	4	1	6	3	2021-08-30 00:45:40.763983
208	387	ANA PAULA CASTAGNO	2012-01-18	814938144	87642684518	\N	(54)9612-1282	(54)9987-4900	\N	Ensino Técnico Incompleto	\N	Ensino superior Completo	10 Km	2021-01-26	1	2	4	5	2021-08-30 00:45:40.763983
209	401	DANIEL BIANCHI	2012-05-19	380672412	70378495381	\N	(54)9935-9832	(54)9671-8581	\N	Ensino Técnico Incompleto	\N	Ensino superior Completo	1 Km	2021-01-31	1	1	6	4	2021-08-30 00:45:40.763983
210	429	LEANDRO LUAN CARDOSO	2012-03-17	341731359	79624445528	\N	(54)9646-2302	(54)3291-3471	\N	Ensino Técnico Incompleto	\N	Ensino superior Incompleto	5 Km	2021-02-02	1	1	6	2	2021-08-30 00:45:40.763983
211	434	DEUSDETE LOREMAL MOTA	2012-03-10	195254294	66949091477	\N	(54)9633-0409	(54)3291-7474	\N	Ensino superior Completo	\N	Ensino superior Completo	5 Km	2021-01-29	1	1	6	3	2021-08-30 00:45:40.763983
212	495	ALEX TROLE	2012-11-20	946752562	55855389642	\N	\N	(54)9619-2904	\N	Ensino Técnico Completo	\N	Ensino fundamental Completo	1 Km	2021-02-07	4	2	6	5	2021-08-30 00:45:40.763983
213	518	LUCAS TORRESAN	2012-08-23	952296177	63483756102	\N	(54)8114-0837	(54)9965-5165	\N	Ensino Técnico Incompleto	\N	Ensino médio Completo	20 Km	2021-01-30	1	1	6	5	2021-08-30 00:45:40.763983
214	540	IASMIN SOLDERA STELLA	2012-09-07	735009224	11447177268	\N	(54)9987-3515	(54)3291-7258	\N	Ensino superior Completo	\N	Ensino Técnico Completo	15 Km	2021-01-12	4	2	6	2	2021-08-30 00:45:40.763983
215	547	CLAUDETE MOREIRA	2012-03-30	740958969	44280300963	\N	(54)9192-5981	(54)3280-1016	\N	Ensino superior Completo	\N	Ensino fundamental Completo	1 Km	2021-01-20	2	2	6	1	2021-08-30 00:45:40.763983
216	621	 VITOR DE MACEDO MOTA	2012-01-09	439456236	30436176481	\N	(54)9614-4717	(54)3291-3507	\N	Ensino superior Completo	\N	Ensino médio Completo	10 Km	2021-01-28	1	1	3	3	2021-08-30 00:45:40.763983
217	635	 JULIANO CARDOZO DA SILVA JUNIOR	2012-07-18	960855904	83338269331	\N	(54)9957-2430	3291-2674	\N	Ensino fundamental Completo	\N	Ensino fundamental Completo	20 Km	2021-02-05	2	1	6	2	2021-08-30 00:45:40.763983
218	657	 MÉO BUENO DA SILVA	2012-03-12	312352468	59637244735	\N	(54)9137-9707	\N	\N	Ensino superior Completo	\N	Ensino superior Completo	30 Km	2021-01-16	1	2	6	2	2021-08-30 00:45:40.763983
219	662	 LAURA BORGES	2012-10-26	300209772	45180690960	\N	(54)9185-7751	(54)9109-1284	\N	Ensino Técnico Incompleto	\N	Ensino médio Completo	30 Km	2021-01-28	4	2	6	3	2021-08-30 00:45:40.763983
220	665	 ELIN MAURINA	2012-12-02	931023983	86179259506	\N	(54)3291-5142	(54)3291-6361	\N	Ensino superior Completo	\N	Ensino médio Incomplento	10 Km	2021-01-25	1	2	6	5	2021-08-30 00:45:40.763983
221	669	 RAFAELA FLÁVIA CHEMELLO	2012-10-23	608351275	17576323972	\N	\N	(54)9157-2114	\N	Ensino superior Completo	\N	Ensino superior Completo	1 Km	2021-02-08	4	2	6	5	2021-08-30 00:45:40.763983
222	671	 RANGEL ZANELLA	2012-06-04	207782098	66260612456	\N	(54)3291-2739	(54)3291-4573	\N	Ensino superior Incompleto	\N	Ensino médio Completo	15 Km	2021-01-27	4	2	6	2	2021-08-30 00:45:40.763983
223	683	 MÉO DA SILVA	2012-10-31	858060293	20862447429	\N	(54)9672-0530	(54)9144-2926	\N	Ensino médio Incomplento	\N	Ensino médio Incomplento	15 Km	2021-01-24	1	2	6	1	2021-08-30 00:45:40.763983
224	688	 GILBERTO PEREIRA DOS SANTOS	2012-06-02	870941623	20895886586	\N	(54)9934-9411	(54)9925-9948	\N	Ensino superior Incompleto	\N	Ensino médio Incomplento	5 Km	2021-01-25	3	1	6	5	2021-08-30 00:45:40.763983
225	689	 EULLER VECHIATO	2012-04-25	522154227	28350472495	\N	(54)9144-8549	(54)9666-6188	\N	Ensino superior Incompleto	\N	Ensino Técnico Incompleto	10 Km	2021-02-07	1	1	6	5	2021-08-30 00:45:40.763983
226	728	ISADORA SANDI RECH	2012-04-16	450503597	67489681072	\N	(54)8432-5367	(54)9144-8201	\N	Ensino Técnico Completo	\N	Ensino Técnico Incompleto	50 Km	2021-01-26	4	2	6	5	2021-08-30 00:45:40.763983
227	735	MATHIAS SCODRO DOS SANTOS	2012-01-09	952952476	15677019252	\N	(54)9993-5068	(54)3291-7501	\N	Ensino superior Completo	\N	Ensino fundamental Completo	30 Km	2021-02-04	1	1	6	5	2021-08-30 00:45:40.763983
228	766	ALEX J UNIOR SPESIER	2012-11-07	195476671	76162518493	\N	(54)9120-8934	(54)9907-0915	\N	Ensino médio Completo	\N	Ensino médio Completo	30 Km	2021-01-15	1	1	6	5	2021-08-30 00:45:40.763983
229	772	LUCIMAIA ESTEFANIA GARBIN POLIDORO	2012-11-14	920204054	29318777064	\N	(54)9675-5394	(54)9939-7752	\N	Ensino médio Incomplento	\N	Ensino médio Completo	1 Km	2021-01-24	2	2	6	2	2021-08-30 00:45:40.763983
230	817	LUCAS TERRAS	2012-10-01	677303882	82037321066	\N	(54)9619-5575	(54)9619-6606	\N	Ensino médio Completo	\N	Ensino superior Completo	15 Km	2021-01-10	4	1	6	5	2021-08-30 00:45:40.763983
231	834	JAIANE DE GOIS CASTILHOS	2012-08-21	147557594	55183517276	\N	(54)8119-3624	(54)3291-2922	\N	Ensino médio Completo	\N	Ensino superior Completo	50 Km	2021-02-08	4	2	6	5	2021-08-30 00:45:40.763983
232	835	MARINA VIANA DA SILVA	2012-07-16	746132238	87128594399	\N	(54)9641-5004	(54)9642-5074	\N	Ensino médio Completo	\N	Ensino Técnico Incompleto	20 Km	2021-01-26	1	2	6	3	2021-08-30 00:45:40.763983
233	856	MARINA BORGES	2012-07-24	265039231	84526510182	\N	(05)4996-5599	(54)9936-4803	\N	Ensino Técnico Incompleto	\N	Ensino fundamental Completo	20 Km	2021-01-24	1	2	6	3	2021-08-30 00:45:40.763983
234	871	NEUZA SEBASTIANA DA LUZ TELES	2012-05-20	935519125	59601241246	\N	(54)9215-0650	(54)9906-4656	\N	Ensino fundamental Completo	\N	Ensino médio Incomplento	5 Km	2021-01-30	4	2	6	5	2021-08-30 00:45:40.763983
235	872	MARICELIA CICHIN CARARO	2012-09-13	582106434	93333177850	\N	(54)3291-3389	(54)9159-6902	\N	Ensino médio Completo	\N	Ensino Técnico Incompleto	10 Km	2021-01-12	5	2	6	2	2021-08-30 00:45:40.763983
236	888	LUCIANA RENATA POLO	2012-12-27	726984398	78876894535	\N	(54)3291-3081	(54)9680-0380	\N	Ensino Técnico Incompleto	\N	Ensino Técnico Completo	20 Km	2021-01-11	1	2	6	5	2021-08-30 00:45:40.763983
237	919	MATEUS BOFF	2012-12-09	420955419	64832946632	\N	(54)9918-1473	(54)9917-1562	\N	Ensino superior Incompleto	\N	Ensino médio Completo	15 Km	2021-01-14	4	1	6	2	2021-08-30 00:45:40.763983
238	926	ANA JÚLIA VELHO	2012-08-12	503597396	86217836870	\N	(54)9700-1233	(54)3267-8035	\N	Ensino superior Incompleto	\N	Ensino superior Incompleto	5 Km	2021-01-28	5	2	6	5	2021-08-30 00:45:40.763983
239	951	OTÁVIO BERNARDO DA SILVA	2012-01-01	564632268	84229241889	\N	(54)9634-8662	(54)9967-5026	\N	Ensino superior Completo	\N	Ensino médio Completo	10 Km	2021-01-29	3	1	2	4	2021-08-30 00:45:40.763983
240	961	TOBIAS CASANOVA	2012-06-25	487625117	94058253713	\N	32914170	(54)9615-5320	\N	Ensino Técnico Incompleto	\N	Ensino Técnico Completo	5 Km	2021-01-23	1	1	6	5	2021-08-30 00:45:40.763983
241	986	TAINARA PELISSARI ANTUNES SIQUEIRA	2012-08-15	483234300	90140116336	\N	32917239	(54)9184-0097	\N	Ensino médio Completo	\N	Ensino Técnico Incompleto	10 Km	2021-01-14	4	2	6	2	2021-08-30 00:45:40.763983
242	29	TIAGO PIROLLI MAGRIN	2011-06-22	736321063	54047136782	\N	(54)9953-3185	(54)9917-8137	\N	Ensino médio Incomplento	\N	Ensino superior Incompleto	20 Km	2021-01-23	5	1	6	5	2021-08-30 00:45:40.763983
243	100	ADRIANO DO PILAR	2011-06-11	941738091	38960467137	\N	(54)3291-5159	(54)9982-0296	\N	Ensino Técnico Incompleto	\N	Ensino médio Incomplento	1 Km	2021-01-18	5	1	1	5	2021-08-30 00:45:40.763983
244	107	JOSÉ ADAIR CASTILHOS DOS REIS	2011-11-07	266085707	24376001114	\N	(54)3291-1888	(54)3291-7409	\N	Ensino fundamental Completo	\N	Ensino médio Incomplento	5 Km	2021-01-23	1	1	6	5	2021-08-30 00:45:40.763983
245	132	JOSÉ DE SOUZA GAMBA	2011-09-13	789535451	90742438747	\N	(54)9184-8740	96122941	\N	Ensino médio Completo	\N	Ensino fundamental Incomplento	50 Km	2021-01-18	2	1	6	1	2021-08-30 00:45:40.763983
246	143	LETÍCIA ANE BENATTO	2011-09-04	291045725	40843813306	\N	(54)9957-5008	(54)3280-1100	\N	Ensino médio Completo	\N	Ensino Técnico Incompleto	15 Km	2021-01-10	2	2	6	2	2021-08-30 00:45:40.763983
247	153	SCHAIANE LUTINSKI BOHMENBERGER	2011-06-03	757580091	61197474862	\N	(54)9684-8577	(54)9101-1636	\N	Ensino superior Completo	\N	Ensino Técnico Incompleto	20 Km	2021-01-15	2	2	6	5	2021-08-30 00:45:40.763983
248	154	LIDIANE DA SILVA CASTILHOS	2011-10-08	577155519	85587480192	\N	(54)8427-8457	(54)9600-1142	\N	Ensino fundamental Completo	\N	Ensino fundamental Completo	5 Km	2021-01-30	1	2	6	4	2021-08-30 00:45:40.763983
249	175	ANA PAULA DA SILVA	2011-02-23	466912502	70476443118	\N	(54)3291-2984	32911479	\N	Ensino superior Completo	\N	Ensino Técnico Incompleto	1 Km	2021-01-26	1	2	4	5	2021-08-30 00:45:40.763983
250	234	FELIPE MARCHIORETTO	2011-02-06	323361649	27166421095	\N	(54)9957-4587	(54)9614-3816	\N	Ensino médio Incomplento	\N	Ensino fundamental Completo	5 Km	2021-01-18	1	1	6	4	2021-08-30 00:45:40.763983
251	271	KARINA DAL SOCHIO	2011-03-03	363763501	15895572493	\N	\N	(54)9107-2665	\N	Ensino superior Completo	\N	Ensino Técnico Completo	10 Km	2021-01-21	4	2	6	3	2021-08-30 00:45:40.763983
252	273	PEDRO HENRIQUE NUNES FERREIRA	2011-08-06	624943772	18000078750	\N	91788920	3291-6054	\N	Ensino Técnico Completo	\N	Ensino Técnico Completo	20 Km	2021-01-21	2	1	6	3	2021-08-30 00:45:40.763983
253	278	LUIZA BIASOTTO	2011-02-03	211258855	80849223529	\N	(54)9980-4053	(54)9634-7738	\N	Ensino superior Completo	\N	Ensino fundamental Incomplento	10 Km	2021-02-06	5	2	6	4	2021-08-30 00:45:40.763983
254	284	LUCILDA MARIA CHEMELLO	2011-07-03	607912842	61599247927	\N	(54)9135-2436	3291 22 14	\N	Ensino superior Completo	\N	Ensino fundamental Completo	15 Km	2021-02-04	1	2	6	5	2021-08-30 00:45:40.763983
255	298	LEANDRA JULIANA CARDOSO	2011-05-06	748023729	37402202963	\N	(54)9177-0054	(54)3291-1148	\N	Ensino superior Incompleto	\N	Ensino superior Completo	15 Km	2021-01-23	1	2	6	2	2021-08-30 00:45:40.763983
256	303	IRIS ZANELLA VANIN	2011-04-08	973388335	41263119717	\N	(54)9672-2864	(54)9902-5870	\N	Ensino médio Incomplento	\N	Ensino Técnico Completo	15 Km	2021-02-02	4	2	6	2	2021-08-30 00:45:40.803379
257	322	JURACI ZUANAZZI BORGHETTI	2011-09-20	419591853	82413968250	\N	(54)9946-4408	(54)9943-1694	\N	Ensino fundamental Completo	\N	Ensino médio Completo	5 Km	2021-01-21	1	2	6	5	2021-08-30 00:45:40.803379
258	382	MARIA EDUARDA MASCARELLO	2011-11-09	324177350	53489635204	\N	\N	(54)9628-2100	\N	Ensino Técnico Incompleto	\N	Ensino médio Completo	5 Km	2021-01-14	1	2	6	4	2021-08-30 00:45:40.803379
259	390	ANDREI BRANCO BORGHETTI	2011-04-05	644384401	51518140096	\N	(54)9235-6282	(54)9694-6181	\N	Ensino médio Completo	\N	Ensino Técnico Completo	50 Km	2021-01-18	1	1	6	3	2021-08-30 00:45:40.803379
260	395	CAMILA CASARA	2011-04-12	398396803	32656746402	\N	(54)3291-3356	(54)3291-3508	\N	Ensino médio Incomplento	\N	Ensino médio Incomplento	15 Km	2021-01-17	4	2	6	5	2021-08-30 00:45:40.803379
261	425	JONATAN ARGENTA TURCATI	2011-03-02	185919617	28524702816	\N	(54)3291-6560	99448714	\N	Ensino médio Completo	\N	Ensino médio Incomplento	30 Km	2021-02-07	4	1	6	3	2021-08-30 00:45:40.803379
262	444	MATHEUS RODRIGUES DE MACEDO	2011-07-18	183596044	46342035631	\N	(54)8432-5367	3291-1011	\N	Ensino superior Completo	\N	Ensino Técnico Incompleto	15 Km	2021-02-06	4	1	6	3	2021-08-30 00:45:40.803379
263	449	BRUNO VIEIRA	2011-12-18	802926570	79147443776	\N	(54)9974-1439	91243521	\N	Ensino Técnico Incompleto	\N	Ensino superior Completo	1 Km	2021-02-01	5	1	6	5	2021-08-30 00:45:40.803379
264	465	BRUNA DE ABREU DOS SANTOS	2011-06-01	764836643	98010801208	\N	(11)1111-1111	(54)3291-6454	\N	Ensino médio Incomplento	\N	Ensino médio Completo	5 Km	2021-02-07	3	2	6	5	2021-08-30 00:45:40.803379
265	481	GUILHERME AUGUSTO RIBEIRO DE OLIVEIRA	2011-03-17	449760985	61189020489	\N	(54)9923-7152	(54)3291-1355	\N	Ensino Técnico Completo	\N	Ensino médio Completo	20 Km	2021-01-23	4	2	6	2	2021-08-30 00:45:40.803379
266	504	JÚLIO SERGIO	2011-06-08	915426533	72675427078	\N	\N	(54)9998-3690	\N	Ensino Técnico Completo	\N	Ensino superior Completo	10 Km	2021-01-11	1	1	6	2	2021-08-30 00:45:40.803379
267	521	MARLON NUNES	2011-08-16	712895114	95529809046	\N	(54)9172-6865	3291-1933	\N	Ensino superior Completo	\N	Ensino Técnico Completo	1 Km	2021-01-27	1	1	6	2	2021-08-30 00:45:40.803379
268	559	VITÓRIA PELIZZARI	2011-10-11	240538747	80390801924	\N	(54)9904-0199	(54)3291-5329	\N	Ensino superior Completo	\N	Ensino fundamental Incomplento	5 Km	2021-01-30	4	2	6	3	2021-08-30 00:45:40.803379
269	601	LUANA LETICIA DOS PASSOS	2011-01-31	900192176	10062137068	\N	(54)3291-7236	(54)9193-4943	\N	Ensino fundamental Completo	\N	Ensino superior Completo	1 Km	2021-01-14	1	2	6	5	2021-08-30 00:45:40.803379
270	606	JULIANA DE CASTILHOS DOS PASSOS	2011-02-19	237380077	57918822885	\N	(54)9649-9834	(54)9987-3515	\N	Ensino superior Incompleto	\N	Ensino Técnico Incompleto	5 Km	2021-01-14	1	2	6	3	2021-08-30 00:45:40.803379
271	633	  CRISTIAN DE ATAIDE VIDI	2011-08-24	786060334	39017143940	\N	(54)9111-7339	(54)9120-5973	\N	Ensino médio Completo	\N	Ensino Técnico Incompleto	10 Km	2021-01-31	5	1	6	4	2021-08-30 00:45:40.803379
272	656	 GERMANO BASSANESI ZUANAZZI	2011-12-25	813789172	24168556015	\N	(54)3291-1412	(54)3291-5228	\N	Ensino médio Completo	\N	Ensino Técnico Completo	30 Km	2021-01-16	5	1	6	2	2021-08-30 00:45:40.803379
273	659	 GABRIEL DEBOVI LISBOA	2011-12-20	816533507	95699716840	\N	(11)1111-1111	(54)9978-4303	\N	Ensino médio Incomplento	\N	Ensino fundamental Completo	5 Km	2021-01-30	4	1	6	4	2021-08-30 00:45:40.803379
274	666	 ANA JULIA ALBUQUERQUE	2011-02-24	118920505	90200567191	\N	(54)9165-9982	(54)9174-6571	\N	Ensino fundamental Incomplento	\N	Ensino médio Incomplento	5 Km	2021-01-27	3	2	6	4	2021-08-30 00:45:40.803379
275	693	 ALEX DELFS DOS SANTOS	2011-03-14	624090935	20169275342	\N	(54)9134-4156	(54)3291-3772	\N	Ensino fundamental Incomplento	\N	Ensino médio Completo	20 Km	2021-02-07	2	1	6	4	2021-08-30 00:45:40.803379
276	759	JÚLIA SPIGOLON	2011-03-11	207475169	20904228519	\N	(54)9101-4788	(54)9136-4687	\N	Ensino superior Incompleto	\N	Ensino médio Completo	5 Km	2021-01-25	4	2	6	5	2021-08-30 00:45:40.803379
277	780	YURI P. MAGNABOSCO	2011-09-27	897082244	53318153078	\N	(54)9616-5944	(54)3291-3950	\N	Ensino superior Completo	\N	Ensino médio Incomplento	10 Km	2021-01-19	1	1	6	5	2021-08-30 00:45:40.803379
278	858	ANA DUARTE	2011-02-11	684869489	73928863522	\N	(54)9123-3045	(54)9697-3179	\N	Ensino fundamental Completo	\N	Ensino fundamental Incomplento	10 Km	2021-01-20	1	2	6	2	2021-08-30 00:45:40.803379
279	862	EMILIO GOMES	2011-11-06	178762375	43016001116	\N	(54)9181-5069	(54)9974-7497	\N	Ensino superior Incompleto	\N	Ensino superior Completo	15 Km	2021-01-30	2	1	6	5	2021-08-30 00:45:40.803379
280	895	ANDERSON ANTONIO DOS SANTOS BOEIRA	2011-06-26	710884901	50020004304	\N	(54)9106-8656	(54)9958-2072	\N	Ensino médio Completo	\N	Ensino médio Completo	5 Km	2021-01-15	2	1	6	5	2021-08-30 00:45:40.803379
281	905	GEORGIA VARGAS LOPES	2011-06-01	791228136	89935257524	\N	(55)9915-3359	(54)9103-0149	\N	Ensino superior Incompleto	\N	Ensino superior Completo	30 Km	2021-01-23	3	2	6	3	2021-08-30 00:45:40.803379
282	906	GUILHERME BIONDO BRAMBATTI	2011-11-07	871259592	60276577915	\N	(54)9190-3185	(54)3267-8257	\N	Ensino Técnico Incompleto	\N	Ensino superior Completo	5 Km	2021-02-04	1	1	6	5	2021-08-30 00:45:40.803379
283	911	ISABELLA BRUGALLI BORGHETTI	2011-03-02	949097971	31659305961	\N	(54)3291-9810	(54)9996-8994	\N	Ensino superior Completo	\N	Ensino fundamental Incomplento	1 Km	2021-01-20	5	2	6	5	2021-08-30 00:45:40.803379
284	945	GRACIELE CAROLINE FERREIRA RAMOS	2011-02-28	961382677	59660629447	\N	(54)9183-8207	(54)9603-2677	\N	Ensino superior Completo	\N	Ensino fundamental Completo	15 Km	2021-01-25	1	2	6	4	2021-08-30 00:45:40.803379
285	988	ADRIANA CASTILHOS NASCIMENTO	2011-12-10	897780480	62706445813	\N	(  )9991-4601	(54)9667-8063	\N	Ensino fundamental Incomplento	\N	Ensino médio Completo	10 Km	2021-02-03	1	2	6	2	2021-08-30 00:45:40.803379
286	7	CAROLINE ZANELLA	2010-09-16	729830732	62877269017	\N	(54)3291-7281	(54)3235-1634	\N	Ensino médio Completo	\N	Ensino superior Completo	50 Km	2021-01-13	1	2	6	3	2021-08-30 00:45:40.803379
287	24	JOÃO CARLOS CIOATO	2010-08-12	403179164	63316043996	\N	(54)9642-2654	(54)3235-1185	\N	Ensino superior Incompleto	\N	Ensino fundamental Incomplento	50 Km	2021-01-11	1	1	6	5	2021-08-30 00:45:40.803379
288	34	PATRIC FERNANDES TREVISAN	2010-09-12	486807587	79253800097	\N	32919172	(54)9913-0527	\N	Ensino médio Incomplento	\N	Ensino superior Completo	10 Km	2021-01-13	1	1	6	5	2021-08-30 00:45:40.803379
289	43	UISLEI RIZZO	2010-11-19	675507543	24752298556	\N	(54)9931-6402	(54)9912-6848	\N	Ensino superior Incompleto	\N	Ensino fundamental Incomplento	15 Km	2021-01-15	4	1	2	5	2021-08-30 00:45:40.803379
290	50	ANDRÉIA BORGES VIEIRA	2010-04-05	732554964	20251228461	\N	(54)9114-4108	96192093	\N	Ensino Técnico Incompleto	\N	Ensino Técnico Incompleto	1 Km	2021-01-10	4	2	6	2	2021-08-30 00:45:40.803379
291	59	LEONARDO RASADOR	2010-01-31	501869535	24794088064	\N	(54)9115-6651	3291-4514	\N	Ensino superior Incompleto	\N	Ensino Técnico Incompleto	10 Km	2021-01-16	2	1	6	3	2021-08-30 00:45:40.803379
292	62	JUSSARA VECHIATO	2010-10-11	795164575	15411756733	\N	(54)9117-9740	32919071	\N	Ensino superior Completo	\N	Ensino superior Completo	15 Km	2021-02-05	4	2	6	4	2021-08-30 00:45:40.803379
293	68	IRENE TERESINHA FOGAÇA	2010-10-22	366754008	52502385017	\N	(54)3291-1072	96110017	\N	Ensino Técnico Incompleto	\N	Ensino superior Completo	15 Km	2021-01-30	2	2	6	3	2021-08-30 00:45:40.803379
294	86	MATEUS CIOATO POLETO	2010-05-18	553809101	41776674058	\N	(54)9169-8787	(54)9195-4021	\N	Ensino Técnico Completo	\N	Ensino médio Incomplento	15 Km	2021-01-30	1	1	6	5	2021-08-30 00:45:40.803379
295	88	CATIA BIONDO	2010-01-04	542428155	52951881744	\N	(54)3291-1967	3291-3572	\N	Ensino superior Incompleto	\N	Ensino Técnico Incompleto	1 Km	2021-01-26	2	2	6	5	2021-08-30 00:45:40.803379
296	117	TOBIAS BUGANÇA	2010-06-24	799731468	81622055716	\N	(54)3291-3404	32916025	\N	Ensino Técnico Incompleto	\N	Ensino superior Incompleto	1 Km	2021-02-07	4	1	6	2	2021-08-30 00:45:40.803379
297	131	MATEUS BUGANÇA	2010-08-31	481801598	26988906273	\N	(54)3291-5035	32911858	\N	Ensino superior Incompleto	\N	Ensino fundamental Incomplento	20 Km	2021-01-27	3	1	6	3	2021-08-30 00:45:40.803379
298	147	MATEUS ALVES SCHUSTER	2010-01-10	583303956	60017744244	\N	(54)9955-4420	(54)9196-8891	\N	Ensino superior Completo	\N	Ensino Técnico Incompleto	15 Km	2021-01-30	4	1	6	5	2021-08-30 00:45:40.803379
299	187	LAVÍNIA STICH BIASOTTO	2010-05-17	183126809	47311089386	\N	(54)9145-3026	81416266	\N	Ensino superior Incompleto	\N	Ensino superior Incompleto	1 Km	2021-01-12	4	2	6	3	2021-08-30 00:45:40.803379
300	190	MIRELA SANTANA	2010-11-21	696333761	84310560319	\N	(54)9932-7421	32351693	\N	Ensino Técnico Incompleto	\N	Ensino Técnico Completo	5 Km	2021-01-20	1	2	6	5	2021-08-30 00:45:40.803379
301	205	RAFAEL BENATO BOFF	2010-01-04	671952979	94802532309	\N	(54)9197-7832	(54)9922-4369	\N	Ensino médio Completo	\N	Ensino Técnico Incompleto	20 Km	2021-02-05	5	1	6	5	2021-08-30 00:45:40.803379
302	260	FRANCINE NILZA DA SILVA	2010-01-07	640900358	94851911344	\N	(54)9632-6696	(54)9661-0384	\N	Ensino médio Incomplento	\N	Ensino superior Incompleto	20 Km	2021-02-03	2	2	3	3	2021-08-30 00:45:40.803379
303	277	LUCAS JORDANI MACHADO	2010-11-02	753925679	20703655843	\N	(54)9155-7043	32912653	\N	Ensino fundamental Completo	\N	Ensino Técnico Completo	1 Km	2021-01-21	1	1	6	2	2021-08-30 00:45:40.803379
304	282	CAMILA RODRIGUES ALVES	2010-10-11	801228632	98577325735	\N	(54)9668-5318	32801189	\N	Ensino Técnico Incompleto	\N	Ensino superior Incompleto	20 Km	2021-01-29	1	2	6	3	2021-08-30 00:45:40.803379
305	289	THIAGO GABRIEL DE SOUSA SANTOS	2010-06-17	295127112	72154115893	\N	(54)8122-7596	(54)9135-0541	\N	Ensino superior Incompleto	\N	Ensino superior Incompleto	15 Km	2021-01-31	1	1	6	2	2021-08-30 00:45:40.803379
306	295	NEURA LETTI BORGHETTI	2010-10-20	771940043	19080380813	\N	(54)3291-4212	(54)3267-8091	\N	Ensino Técnico Incompleto	\N	Ensino superior Completo	10 Km	2021-01-21	4	2	6	2	2021-08-30 00:45:40.803379
307	328	FELIPE DE MORAES SILVA	2010-10-07	322455405	32338215900	\N	(54)9173-2117	(54)3291-1239	\N	Ensino Técnico Incompleto	\N	Ensino médio Incomplento	15 Km	2021-01-12	5	1	6	5	2021-08-30 00:45:40.803379
308	333	GILBERTO ASCARI	2010-03-30	515347001	27728772075	\N	(54)3291-2103	(54)9615-7575	\N	Ensino médio Incomplento	\N	Ensino fundamental Completo	1 Km	2021-01-28	1	1	6	2	2021-08-30 00:45:40.803379
309	351	JONATAN NOVELLO	2010-08-03	524029745	43308271583	\N	(54)3291-7460	(54)3291-3496	\N	Ensino superior Completo	\N	Ensino Técnico Completo	5 Km	2021-01-27	3	1	6	3	2021-08-30 00:45:40.803379
310	356	JESSICA FRANCIELLE MATAURO	2010-12-04	727812756	64072420393	\N	(54)9668-1587	(54)3291-5350	\N	Ensino fundamental Completo	\N	Ensino médio Completo	15 Km	2021-01-18	1	2	6	5	2021-08-30 00:45:40.803379
311	385	BRUNA DE JESUS	2010-09-05	501927643	20235716815	\N	(54)8115-7336	(54)9191-2310	\N	Ensino médio Incomplento	\N	Ensino médio Incomplento	10 Km	2021-02-01	4	2	6	5	2021-08-30 00:45:40.803379
312	405	YASMIN RECH SOARES	2010-04-14	759061724	60975103764	\N	(54)9662-5762	(54)9119-2407	\N	Ensino médio Completo	\N	Ensino Técnico Incompleto	30 Km	2021-01-26	4	2	1	2	2021-08-30 00:45:40.803379
313	447	ÁLVARO POGGERE	2010-12-31	158648981	93996358896	\N	\N	32913821	\N	Ensino superior Incompleto	\N	Ensino Técnico Incompleto	5 Km	2021-01-25	4	1	6	2	2021-08-30 00:45:40.803379
314	462	JAMILLY DOS SANTOS CORRÊA	2010-04-24	592447800	61735528396	\N	(54)9651-5176	(54)3291-4990	\N	Ensino Técnico Incompleto	\N	Ensino médio Completo	1 Km	2021-01-17	4	2	6	4	2021-08-30 00:45:40.803379
315	474	ANDREIA LOPES	2010-05-26	959285668	19274457251	\N	(54)9197-9444	32911011	\N	Ensino médio Completo	\N	Ensino médio Completo	15 Km	2021-02-08	4	2	6	5	2021-08-30 00:45:40.803379
316	483	SABRINA DUTRA DOS REIS	2010-04-02	793176095	41311294097	\N	(54)9214-4428	(54)8144-9362	\N	Ensino médio Incomplento	\N	Ensino fundamental Incomplento	20 Km	2021-01-27	2	2	6	5	2021-08-30 00:45:40.803379
317	491	FELIPE GOMES MEDEIROS	2010-09-03	327962871	86573337418	\N	(54)3291-4819	(54)3291-5141	\N	Ensino fundamental Incomplento	\N	Ensino superior Incompleto	5 Km	2021-01-22	3	2	6	2	2021-08-30 00:45:40.803379
318	494	DALTRO LEONCIO	2010-08-07	610169102	22086154909	\N	(54)9687-7052	(54)9665-4965	\N	Ensino fundamental Completo	\N	Ensino médio Incomplento	1 Km	2021-01-29	1	1	6	2	2021-08-30 00:45:40.803379
319	503	ALLAN SILVA DE SOUSA	2010-01-15	667179219	48371071455	\N	\N	(54)3291-2135	\N	Ensino superior Incompleto	\N	Ensino superior Completo	5 Km	2021-01-21	1	2	6	2	2021-08-30 00:45:40.803379
320	508	GABRIEL DE SOUSA	2010-03-07	604390304	59518442763	\N	32916469	(54)3291-2244	\N	Ensino superior Incompleto	\N	Ensino fundamental Incomplento	15 Km	2021-01-12	3	1	6	5	2021-08-30 00:45:40.803379
321	512	ALINE BRUNELLO	2010-05-02	442901453	48642640804	\N	32916336	(54)3291-2835	\N	Ensino médio Completo	\N	Ensino Técnico Incompleto	10 Km	2021-01-29	3	2	6	1	2021-08-30 00:45:40.803379
322	519	JOÃO VICTOR ALMEIDA POSSA	2010-11-09	678184990	23511907713	\N	(54)3280-1016	32914138	\N	Ensino Técnico Incompleto	\N	Ensino médio Incomplento	10 Km	2021-01-15	2	1	6	5	2021-08-30 00:45:40.803379
323	523	CANDICE SOLDATELLI	2010-08-02	829781354	19246880297	\N	3291-3170	3291-1364	\N	Ensino fundamental Completo	\N	Ensino superior Completo	1 Km	2021-02-02	1	2	6	3	2021-08-30 00:45:40.803379
324	529	GABRIEL LUÍS FOCHESATO	2010-03-05	606882229	54002512697	\N	(54)3291-4017	(54)9682-4398	\N	Ensino superior Incompleto	\N	Ensino médio Completo	1 Km	2021-01-27	5	1	6	2	2021-08-30 00:45:40.803379
325	535	MARIANA ARMILIATO	2010-12-31	514600378	61329770491	\N	(54)9948-6555	(54)9165-9716	\N	Ensino médio Completo	\N	Ensino médio Completo	5 Km	2021-02-02	4	2	6	3	2021-08-30 00:45:40.803379
326	536	FABIO DAL ZOTTO	2010-06-17	489229044	60725773392	\N	(54)3291-1078	(54)9165-9716	\N	Ensino fundamental Completo	\N	Ensino médio Completo	10 Km	2021-01-20	1	1	6	5	2021-08-30 00:45:40.803379
327	542	TIAGO GABRIEL DAROS VELHO	2010-12-11	207911697	26437286480	\N	(54)9623-0818	(54)3291-9039	\N	Ensino médio Completo	\N	Ensino superior Completo	30 Km	2021-01-16	5	1	6	2	2021-08-30 00:45:40.803379
328	555	ERIC DA CRUZ VAZ	2010-08-12	327666364	54223372629	\N	(54)3291-3208	(54)3291-2653	\N	Ensino médio Incomplento	\N	Ensino Técnico Incompleto	5 Km	2021-02-04	1	1	6	4	2021-08-30 00:45:40.803379
329	558	VITORIA WILLRICH DE ARAUJO	2010-07-03	734180514	85873499108	\N	(54)9990-6774	(54)9207-1163	\N	Ensino Técnico Incompleto	\N	Ensino Técnico Completo	1 Km	2021-01-13	4	2	6	2	2021-08-30 00:45:40.803379
330	571	NARCISO OSNI LUCRÉCIO	2010-06-09	255232084	49882298472	\N	(54)9157-3336	(54)9951-2690	\N	Ensino fundamental Completo	\N	Ensino superior Completo	15 Km	2021-01-18	2	1	6	5	2021-08-30 00:45:40.803379
331	587	SILVIA MARA BOFF	2010-02-25	326741679	52359055042	\N	(54)9997-9784	(54)9127-1444	\N	Ensino superior Completo	\N	Ensino médio Incomplento	10 Km	2021-01-22	1	2	6	2	2021-08-30 00:45:40.803379
332	614	RAFAELA SOUZA ESTEVO	2010-07-07	432299414	84764701118	\N	\N	(54)9962-1420	\N	Ensino Técnico Incompleto	\N	Ensino médio Incomplento	30 Km	2021-01-17	1	2	6	3	2021-08-30 00:45:40.803379
333	626	 CHARLES GRISON	2010-03-14	515388568	17963907819	\N	(54)9165-3969	(54)9992-8969	\N	Ensino médio Completo	\N	Ensino médio Incomplento	5 Km	2021-01-24	4	1	6	5	2021-08-30 00:45:40.803379
334	634	 MAURICIO DALSOTTO	2010-05-29	367506833	27731218519	\N	(54)9197-2329	(54)9667-7878	\N	Ensino Técnico Completo	\N	Ensino superior Completo	5 Km	2021-01-27	3	1	6	4	2021-08-30 00:45:40.803379
335	643	 LEONARDO BRIGOLINI	2010-12-21	550357088	24552362317	\N	(54)9631-505	(54)3235-5117	\N	Ensino fundamental Incomplento	\N	Ensino fundamental Completo	5 Km	2021-01-10	1	1	1	5	2021-08-30 00:45:40.803379
336	651	 VITÓRIA TOMAZ	2010-04-28	383515333	17308834792	\N	(54)9184-2962	(54)3291-6094	\N	Ensino fundamental Completo	\N	Ensino médio Incomplento	5 Km	2021-01-16	1	2	6	5	2021-08-30 00:45:40.803379
337	673	 GUSTAVO BIZOTTO SECCO	2010-10-07	338308093	63579941517	\N	(54)9124-3297	(54)9614-6711	\N	Ensino médio Completo	\N	Ensino superior Completo	5 Km	2021-01-23	4	1	6	2	2021-08-30 00:45:40.803379
338	708	DANDARA BOEIRA QUINTANILHA	2010-04-30	858191753	68908629030	\N	32913030	(54)9965-3111	\N	Ensino médio Incomplento	\N	Ensino médio Completo	5 Km	2021-02-01	1	2	6	3	2021-08-30 00:45:40.803379
339	710	MILEIDE SILVA	2010-12-21	924491950	87763679818	\N	(54)3291-7105	(54)9146-3068	\N	Ensino Técnico Incompleto	\N	Ensino Técnico Incompleto	5 Km	2021-01-15	5	2	6	5	2021-08-30 00:45:40.803379
340	732	MIKAELEN GONÇALVES DA SILVA	2010-06-10	672684295	65416368705	\N	(54)3291-2030	(54)3291-2866	\N	Ensino fundamental Completo	\N	Ensino fundamental Incomplento	10 Km	2021-02-05	3	2	6	2	2021-08-30 00:45:40.803379
341	790	MATHEUS SOARES QUINTANA	2010-05-02	658742690	23155800040	\N	(54)3291-2713	(54)9900-5876	\N	Ensino Técnico Completo	\N	Ensino superior Completo	1 Km	2021-02-04	1	1	6	5	2021-08-30 00:45:40.803379
342	794	DANIELA DE FARIA	2010-04-17	730121742	69410609500	\N	(54)9971-5520	(54)9156-5182	\N	Ensino fundamental Incomplento	\N	Ensino médio Incomplento	5 Km	2021-01-12	1	2	6	3	2021-08-30 00:45:40.803379
343	833	JOÃO PEDRO DE GOIS DOS REIS	2010-02-02	190315524	13497823974	\N	(54)9255-4210	(54)9697-3615	\N	Ensino fundamental Completo	\N	Ensino Técnico Completo	10 Km	2021-02-01	1	1	6	2	2021-08-30 00:45:40.803379
344	843	VINÍCIUS GIRARDINI MOREIRA E SILVA	2010-04-09	817285485	91831353875	\N	(54)9955-0096	(54)3291-1407	\N	Ensino Técnico Incompleto	\N	Ensino superior Completo	10 Km	2021-01-13	4	1	1	2	2021-08-30 00:45:40.803379
345	861	MARCELA SCOPEL	2010-07-20	382960074	43637427319	\N	(54)3291-2478	(54)9180-9191	\N	Ensino superior Completo	\N	Ensino Técnico Completo	20 Km	2021-01-22	5	2	6	3	2021-08-30 00:45:40.803379
346	891	FERNANDA POZZO	2010-02-09	236138207	18907269740	\N	(54)9152-1297	(54)3291-1210	\N	Ensino médio Incomplento	\N	Ensino superior Completo	20 Km	2021-02-06	1	2	4	3	2021-08-30 00:45:40.803379
347	928	LETÍCIA APARECIDA EBERT	2010-04-19	469700616	28840409028	\N	(54)9703-3352	(54)3291-3382	\N	Ensino superior Completo	\N	Ensino superior Completo	5 Km	2021-01-16	1	2	6	2	2021-08-30 00:45:40.803379
348	938	MICHAEL RECH	2010-01-16	959741656	20323936164	\N	(54)3291-1934	(54)9984-7729	\N	Ensino fundamental Incomplento	\N	Ensino superior Completo	1 Km	2021-01-31	1	2	6	5	2021-08-30 00:45:40.803379
349	959	JEAN BARBOSA	2010-10-15	633509174	57499013361	\N	32917066	(54)9609-2186	\N	Ensino superior Incompleto	\N	Ensino Técnico Incompleto	5 Km	2021-01-24	4	1	6	5	2021-08-30 00:45:40.803379
350	974	DIEGO BUSIN	2010-09-08	503345779	39023789410	\N	(54)3291-9094	(54)9663-2977	\N	Ensino médio Incomplento	\N	Ensino Técnico Completo	10 Km	2021-02-07	1	1	6	2	2021-08-30 00:45:40.803379
351	995	CRISELEN CASTAGNA	2010-08-26	828970192	10131208377	\N	(54)3291-4629	(54)9158-4943	\N	Ensino fundamental Incomplento	\N	Ensino fundamental Completo	5 Km	2021-01-25	4	2	6	5	2021-08-30 00:45:40.803379
352	1	DANIELI SANTINI	2009-06-14	662817027	50465101929	\N	(54)3291-3073	(54)9195-2874	\N	Ensino fundamental Completo	\N	Ensino médio Incomplento	1 Km	2021-01-24	2	2	6	5	2021-08-30 00:45:40.803379
353	41	CRISTIAN FURLAN	2009-01-17	888538149	60225768873	\N	(54)9987-8987	99043429	\N	Ensino Técnico Completo	\N	Ensino médio Incomplento	15 Km	2021-01-19	4	1	6	2	2021-08-30 00:45:40.803379
354	83	LUIZ FERNANDO RIZZON	2009-06-22	891542226	97396707523	\N	(54)3291-1453	(54)3291-2088	\N	Ensino Técnico Incompleto	\N	Ensino fundamental Incomplento	5 Km	2021-02-02	1	1	6	3	2021-08-30 00:45:40.803379
355	109	BRUNA DA SILVA	2009-12-15	918084127	61552415735	\N	(54)3291-1870	(54)3291-2060	\N	Ensino fundamental Incomplento	\N	Ensino médio Completo	15 Km	2021-01-17	4	2	6	4	2021-08-30 00:45:40.803379
356	122	ONADIR DA SILVA DE OLIVEIRA	2009-09-05	783643207	65436326851	\N	(54)9121-9821	32911963	\N	Ensino superior Incompleto	\N	Ensino médio Completo	1 Km	2021-01-19	4	1	6	3	2021-08-30 00:45:40.803379
357	134	FELIPE ZAMBONI	2009-10-17	766773646	30487087843	\N	(54)3291-1393	(54)3235-5097	\N	Ensino superior Incompleto	\N	Ensino fundamental Completo	30 Km	2021-01-25	1	1	6	5	2021-08-30 00:45:40.803379
358	135	ALINE SILVA VIEIRA	2009-05-31	113347236	79795992382	\N	(54)9152-9690	(54)3235-5096	\N	Ensino médio Completo	\N	Ensino Técnico Incompleto	1 Km	2021-01-10	4	2	1	4	2021-08-30 00:45:40.803379
359	144	GABRIELLY GRAZIOTIN ALMEIDA	2009-11-29	529110354	57204711815	\N	(54)9192-3293	(54)9938-2822	\N	Ensino médio Incomplento	\N	Ensino superior Completo	1 Km	2021-01-30	3	2	6	5	2021-08-30 00:45:40.803379
360	146	MICAEL BIANCHI SPIGOLON	2009-08-07	144562483	37874329609	\N	(54)9624-1476	(54)3291-2883	\N	Ensino médio Completo	\N	Ensino Técnico Completo	20 Km	2021-01-17	1	1	6	2	2021-08-30 00:45:40.803379
361	166	SAMANTA DA LUZ FEREIRA	2009-08-25	637036617	82379117283	\N	(54)9985-2966	32914516	\N	Ensino fundamental Completo	\N	Ensino Técnico Incompleto	20 Km	2021-01-21	1	2	2	2	2021-08-30 00:45:40.803379
362	177	REGINA MARIA ALVES CAMELO	2009-12-11	716523171	18354237189	\N	(54)9691-0709	(54)3291-1207	\N	Ensino fundamental Completo	\N	Ensino superior Completo	30 Km	2021-02-08	3	2	6	5	2021-08-30 00:45:40.803379
363	225	SEBASTIÃO VALDERES BOEIRA	2009-12-30	407430711	11695418076	\N	(54)9147-3927	\N	\N	Ensino Técnico Incompleto	\N	Ensino médio Completo	5 Km	2021-02-08	2	2	1	2	2021-08-30 00:45:40.803379
364	226	ELFIRA MACHADO BOEIRA	2009-04-07	324226729	58782183925	\N	(54)8148-6576	(54)9128-2751	\N	Ensino médio Incomplento	\N	Ensino Técnico Completo	5 Km	2021-02-03	4	1	6	5	2021-08-30 00:45:40.803379
365	252	DANIEL PELIZZARI	2009-07-20	101250898	78057904728	\N	(54)9157-4055	(54)9932-0850	\N	Ensino médio Completo	\N	Ensino superior Incompleto	10 Km	2021-01-13	3	1	6	2	2021-08-30 00:45:40.803379
366	254	IRAN ANDRADE DE LIMA	2009-06-04	485433087	13756564852	\N	(54)9692-9892	(54)9928-0226	\N	Ensino Técnico Incompleto	\N	Ensino fundamental Completo	1 Km	2021-01-31	2	1	6	5	2021-08-30 00:45:40.803379
367	256	CAROLAINE MULLER	2009-12-24	646878022	50063351271	\N	(54)9980-7422	(54)9907-2318	\N	Ensino fundamental Completo	\N	Ensino superior Incompleto	5 Km	2021-02-03	3	2	6	5	2021-08-30 00:45:40.803379
368	279	LUCIANA APARECIDA CARDOSO HENRIQUE SANT	2009-08-04	655297447	49295687603	\N	(54)9603-8361	32914238	\N	Ensino médio Incomplento	\N	Ensino fundamental Completo	20 Km	2021-01-23	1	2	6	3	2021-08-30 00:45:40.803379
369	294	EDRIELE CAVALLI	2009-10-24	416819363	93357001212	\N	(54)8105-4278	(54)3291-3751	\N	Ensino Técnico Incompleto	\N	Ensino superior Completo	10 Km	2021-01-23	1	2	6	2	2021-08-30 00:45:40.803379
370	368	AUGUSTO BURATTI	2009-03-14	741445562	41797588344	\N	(54)9114-5621	(54)9932-2782	\N	Ensino médio Completo	\N	Ensino superior Completo	10 Km	2021-02-07	1	1	6	3	2021-08-30 00:45:40.803379
371	372	ITAMARA GUZZON	2009-06-09	259215045	33002135057	\N	(54)9203-5404	(54)9902-8906	\N	Ensino fundamental Incomplento	\N	Ensino superior Completo	1 Km	2021-01-14	1	2	6	1	2021-08-30 00:45:40.803379
372	377	MARCELO PEREIRA VARELA	2009-07-28	999354378	79173660675	\N	(54)9173-2696	(54)9922-9397	\N	Ensino fundamental Completo	\N	Ensino Técnico Completo	50 Km	2021-01-22	4	1	6	5	2021-08-30 00:45:40.803379
373	396	JOSÉ CARLOS HASKEL VELHO	2009-09-03	617682521	18540186326	\N	(54)9924-0099	(54)9700-8428	\N	Ensino fundamental Incomplento	\N	Ensino fundamental Incomplento	10 Km	2021-02-04	1	1	3	2	2021-08-30 00:45:40.803379
374	397	MATHEUS SOARES QUINTANA	2009-12-07	717439540	43768606038	\N	(54)9714-3892	(54)3291-3305	\N	Ensino médio Incomplento	\N	Ensino superior Completo	5 Km	2021-02-06	4	1	6	2	2021-08-30 00:45:40.803379
375	415	MARINETE BONNI FANTIN	2009-06-07	218266743	84288804536	\N	(54)3280-1170	(54)9976-2832	\N	Ensino fundamental Completo	\N	Ensino fundamental Completo	15 Km	2021-01-21	1	2	6	5	2021-08-30 00:45:40.803379
376	419	CRISTINE CHINELATO	2009-11-22	459286679	28811448675	\N	(54)3291-4573	(54)9134-5890	\N	Ensino fundamental Incomplento	\N	Ensino superior Incompleto	15 Km	2021-01-21	4	2	6	3	2021-08-30 00:45:40.803379
377	437	SANDRA  MARIA DE LIMA LOURENÇO	2009-09-25	445247967	93952621474	\N	(54)9938-6583	(54)3291-6318	\N	Ensino superior Completo	\N	Ensino Técnico Incompleto	5 Km	2021-02-05	1	2	6	2	2021-08-30 00:45:40.803379
378	463	MAURO POLO GIORDANI	2009-03-28	288553225	21607024142	\N	(11)1111-1111	32914159	\N	Ensino superior Completo	\N	Ensino superior Completo	15 Km	2021-01-16	1	1	6	5	2021-08-30 00:45:40.803379
379	464	MARCO ANTONIO STEDILE	2009-08-07	413161730	45850846817	\N	(11)1111-1111	32912182	\N	Ensino superior Incompleto	\N	Ensino Técnico Incompleto	30 Km	2021-02-06	1	1	6	2	2021-08-30 00:45:40.803379
380	469	SABRINA SALVADOR CARARO	2009-05-01	721019960	97202180559	\N	(54)3291-2244	32919009	\N	Ensino fundamental Completo	\N	Ensino Técnico Completo	1 Km	2021-01-31	5	2	6	4	2021-08-30 00:45:40.803379
381	477	GREICIELI SANTINI	2009-07-16	307094132	36473541683	\N	(54)8432-4133	(54)3291-1809	\N	Ensino superior Completo	\N	Ensino fundamental Completo	1 Km	2021-01-20	4	2	6	3	2021-08-30 00:45:40.803379
382	484	MAIRA FONGARO	2009-03-27	172375181	71192066721	\N	(54)9646-4832	(54)3291-2273	\N	Ensino fundamental Completo	\N	Ensino Técnico Completo	1 Km	2021-01-23	4	2	6	3	2021-08-30 00:45:40.803379
383	525	LUIZ HENRIQUE P. KAPP	2009-09-10	446819350	32553982652	\N	(11)1111-1111	32912121	\N	Ensino superior Incompleto	\N	Ensino médio Completo	10 Km	2021-01-20	4	1	6	2	2021-08-30 00:45:40.803379
384	528	JULIO CÉSAR CAMELO	2009-07-03	310767265	47272164723	\N	(54)3280-1142	32915346	\N	Ensino superior Completo	\N	Ensino Técnico Completo	5 Km	2021-02-01	4	1	6	5	2021-08-30 00:45:40.803379
385	539	GUSTAVO ZANOL	2009-02-07	263230770	70178800899	\N	(  )    -	(54)9175-5155	\N	Ensino Técnico Incompleto	\N	Ensino médio Completo	30 Km	2021-01-19	4	1	6	3	2021-08-30 00:45:40.803379
386	541	BEATRIZ PAOLA CABRAL DA S. RIBEIRO	2009-02-15	687359276	29290160302	\N	(54)3291-5111	(54)3291-3937	\N	Ensino superior Incompleto	\N	Ensino fundamental Incomplento	5 Km	2021-02-03	4	2	6	4	2021-08-30 00:45:40.803379
387	548	KETLIN RAMONE DE LIMA BOEIRA	2009-06-18	120192045	73092074325	\N	(54)3291-1329	\N	\N	Ensino Técnico Incompleto	\N	Ensino Técnico Incompleto	15 Km	2021-01-11	4	2	6	3	2021-08-30 00:45:40.803379
388	551	GABRIEL	2009-06-25	353361339	48008318515	\N	(54)3291-7550	(54)3291-3059	\N	Ensino Técnico Incompleto	\N	Ensino fundamental Incomplento	15 Km	2021-01-21	3	1	6	2	2021-08-30 00:45:40.803379
389	630	 CAMILE SANDRI	2009-03-30	937587490	44250650412	\N	(54)9999-0607	(54)9626-5117	\N	Ensino médio Incomplento	\N	Ensino médio Completo	20 Km	2021-01-20	4	2	6	2	2021-08-30 00:45:40.803379
390	641	 ALISSON LEONARDO DE OLVIEIRA	2009-08-04	481496043	73517101790	\N	(54)9118-5198	(54)3034-0309	\N	Ensino Técnico Incompleto	\N	Ensino Técnico Completo	30 Km	2021-01-18	1	1	6	4	2021-08-30 00:45:40.803379
391	686	 SILVIA RECH POLETO	2009-01-19	647072902	14379928887	\N	(54)9701-5419	(54)9908-2637	\N	Ensino superior Incompleto	\N	Ensino superior Incompleto	10 Km	2021-01-25	3	2	6	3	2021-08-30 00:45:40.803379
392	712	JOANA DARK	2009-05-11	824529227	43658006253	\N	(54)3291-3647	(54)3291-4602	\N	Ensino Técnico Incompleto	\N	Ensino Técnico Incompleto	5 Km	2021-01-22	4	2	6	5	2021-08-30 00:45:40.803379
393	717	OTÁVIO RECH CAMASSOLA	2009-12-26	853062734	76110875615	\N	(54)3291-3929	\N	\N	Ensino médio Incomplento	\N	Ensino Técnico Incompleto	5 Km	2021-01-10	4	1	6	2	2021-08-30 00:45:40.803379
394	725	LUIZ HENRIQUE SOLDERA	2009-07-28	720515696	63855176833	\N	(54)3291-3016	32801142	\N	Ensino fundamental Completo	\N	Ensino médio Completo	30 Km	2021-02-06	4	1	6	3	2021-08-30 00:45:40.803379
395	731	EDUARDO ROSSI	2009-06-01	950233125	84985458371	\N	(54)9998-7926	(54)9914-0240	\N	Ensino Técnico Incompleto	\N	Ensino fundamental Incomplento	1 Km	2021-01-30	1	1	1	2	2021-08-30 00:45:40.803379
396	739	BERNARDO FREDERICK ASCARI	2009-03-07	671430468	44170424326	\N	(54)9657-3417	(54)9193-2300	\N	Ensino médio Completo	\N	Ensino superior Incompleto	30 Km	2021-01-11	5	1	6	5	2021-08-30 00:45:40.803379
397	742	GIOVANI DA SILVA FANTIN	2009-05-05	223215142	23938275787	\N	(54)9656-6362	(54)9182-9947	\N	Ensino superior Completo	\N	Ensino superior Completo	10 Km	2021-01-19	1	2	1	2	2021-08-30 00:45:40.803379
398	761	MAURO RICARDO DE CASTILHOS	2009-04-03	154229055	35718038434	\N	(54)9926-2960	(54)3291-1096	\N	Ensino fundamental Incomplento	\N	Ensino Técnico Incompleto	5 Km	2021-01-24	1	1	6	4	2021-08-30 00:45:40.803379
399	773	TIAGO BRASIL	2009-02-18	625422837	57577995597	\N	(54)9165-9716	(54)9204-9549	\N	Ensino Técnico Completo	\N	Ensino médio Incomplento	5 Km	2021-01-29	2	1	6	5	2021-08-30 00:45:40.803379
400	774	GABRIELE CAMPOS PIRES	2009-12-28	539534436	89525332640	\N	(54)9925-3198	(54)3291-3301	\N	Ensino superior Completo	\N	Ensino Técnico Incompleto	15 Km	2021-02-04	3	2	3	2	2021-08-30 00:45:40.803379
401	788	ERIC DA SILVA FONTANA	2009-01-04	814688373	96840433359	\N	(54)3291-4449	(54)9999-9999	\N	Ensino Técnico Completo	\N	Ensino fundamental Completo	5 Km	2021-01-18	1	1	6	2	2021-08-30 00:45:40.803379
402	852	BRUNA TREVIZAN	2009-11-25	936990616	72316053413	\N	(54)9900-2157	(54)9904-3367	\N	Ensino superior Completo	\N	Ensino superior Incompleto	15 Km	2021-01-10	5	2	6	4	2021-08-30 00:45:40.803379
403	867	ISMAEL TORRESAN	2009-03-03	166853793	32018352753	\N	(54)3291-3600	(54)3291-5221	\N	Ensino médio Completo	\N	Ensino superior Incompleto	15 Km	2021-01-30	1	1	6	5	2021-08-30 00:45:40.803379
404	870	MARIA DE LOURDES DE CASTILHOS FORTUNATTI	2009-12-18	952892463	24525286322	\N	(54)3291-4101	(54)9612-6333	\N	Ensino Técnico Incompleto	\N	Ensino Técnico Completo	20 Km	2021-01-29	1	2	6	5	2021-08-30 00:45:40.803379
405	899	MARIA MARGARIDA CORREA BORGES	2009-09-03	413182209	34429767397	\N	(54)9922-4369	(54)9932-7421	\N	Ensino superior Completo	\N	Ensino Técnico Completo	1 Km	2021-02-01	4	2	6	2	2021-08-30 00:45:40.803379
406	921	RAQUEL BOLZON	2009-12-13	960507962	43551106697	\N	(54)9145-6452	(54)9708-8199	\N	Ensino superior Completo	\N	Ensino médio Completo	20 Km	2021-01-31	4	2	6	2	2021-08-30 00:45:40.803379
407	948	ANDRÉ MORANDI	2009-02-20	597379029	50740260384	\N	(54)9644-3500	(55)9627-1430	\N	Ensino fundamental Completo	\N	Ensino médio Completo	50 Km	2021-01-23	1	1	6	2	2021-08-30 00:45:40.803379
408	949	MATEUS CASANOVA	2009-02-23	587805404	55377464651	\N	(54)9100-9027	(54)9164-2537	\N	Ensino médio Completo	\N	Ensino médio Completo	15 Km	2021-01-19	1	1	6	4	2021-08-30 00:45:40.803379
409	994	CLARISSA TOLARDO	2009-03-10	885267165	52647082458	\N	(54)3280-1187	(54)9155-2281	\N	Ensino superior Completo	\N	Ensino fundamental Completo	10 Km	2021-01-12	1	2	6	5	2021-08-30 00:45:40.803379
410	15	VILMA CECILIA LEONARDELLI CARRARO	2008-12-20	306267021	63425069913	\N	(54)3291-1641	(54)9619-9161	\N	Ensino Técnico Incompleto	\N	Ensino Técnico Completo	1 Km	2021-01-14	5	2	6	3	2021-08-30 00:45:40.803379
411	30	MICHEL MARCON	2008-10-16	212294900	11983556666	\N	(54)9103-5320	\N	\N	Ensino Técnico Completo	\N	Ensino médio Incomplento	20 Km	2021-01-13	1	1	6	4	2021-08-30 00:45:40.803379
412	55	RANGEL RIZZO	2008-07-09	969019360	51835068921	\N	(54)9116-6359	99368582	\N	Ensino superior Incompleto	\N	Ensino fundamental Incomplento	5 Km	2021-01-18	4	1	6	5	2021-08-30 00:45:40.803379
413	111	NEIVA TEREZINHA BORGUETTI	2008-12-22	904792798	35237342688	\N	(54)9157-3336	(54)9146-1700	\N	Ensino Técnico Completo	\N	Ensino fundamental Incomplento	5 Km	2021-02-04	1	2	6	2	2021-08-30 00:45:40.803379
414	126	MARCOS GRIZZON	2008-01-12	873752141	67037133473	\N	(54)9183-9216	32912749	\N	Ensino superior Completo	\N	Ensino médio Incomplento	20 Km	2021-02-06	5	1	6	2	2021-08-30 00:45:40.803379
415	141	ROGER FONTANA DA CRUZ	2008-01-02	793536175	64746874585	\N	(54)9132-6922	(54)3291-2359	\N	Ensino superior Incompleto	\N	Ensino Técnico Completo	30 Km	2021-01-31	4	1	6	1	2021-08-30 00:45:40.803379
416	142	CAMILI VITÓRIA FONGARO	2008-02-27	673638336	70677350883	\N	(54)9613-3419	(54)9143-9980	\N	Ensino médio Completo	\N	Ensino Técnico Completo	20 Km	2021-01-20	4	2	6	3	2021-08-30 00:45:40.803379
417	227	JULIANO MARCELO BONELLA	2008-08-27	443059445	11213023118	\N	(54)9174-6069	(54)9644-0712	\N	Ensino Técnico Incompleto	\N	Ensino superior Completo	10 Km	2021-01-16	1	1	6	5	2021-08-30 00:45:40.803379
418	232	GEISON CARDOSO	2008-06-30	428678647	63744265676	\N	(54)9704-1922	(54)9989-1731	\N	Ensino superior Completo	\N	Ensino Técnico Completo	10 Km	2021-01-18	4	1	6	3	2021-08-30 00:45:40.803379
419	250	KELVIN DIOGO GOMES RICARDO	2008-01-04	856880247	64617615103	\N	(54)8147-1101	(54)9977-7851	\N	Ensino superior Incompleto	\N	Ensino superior Incompleto	15 Km	2021-01-16	1	1	6	3	2021-08-30 00:45:40.803379
420	268	JOANA EDUARDA PEREIRA GOBBI	2008-05-18	139990779	11180301928	\N	(11)1111-1111	(54)9158-3355	\N	Ensino fundamental Completo	\N	Ensino médio Completo	20 Km	2021-02-03	1	2	6	2	2021-08-30 00:45:40.803379
421	276	JULIANA DE SOUZA PONES	2008-09-21	868882913	88369046968	\N	(54)3291-4928	3291- 2674	\N	Ensino fundamental Incomplento	\N	Ensino médio Completo	5 Km	2021-02-04	1	2	6	3	2021-08-30 00:45:40.803379
422	306	LIVIA LEITE RODRIGUES	2008-10-07	156354480	87863828467	\N	(54)9602-3359	(54)3291-3382	\N	Ensino superior Completo	\N	Ensino superior Incompleto	5 Km	2021-01-21	1	2	6	3	2021-08-30 00:45:40.803379
423	331	RIAN ANDREOLA RENOSTO	2008-04-02	384518994	74770230513	\N	(54)3291-1802	(54)3291-2002	\N	Ensino Técnico Incompleto	\N	Ensino fundamental Incomplento	5 Km	2021-01-26	2	1	6	2	2021-08-30 00:45:40.803379
424	338	MORGANA SANDI	2008-02-16	557061350	14462939493	\N	(54)9908-4074	(54)3280-1069	\N	Ensino superior Incompleto	\N	Ensino Técnico Incompleto	30 Km	2021-01-21	4	2	1	4	2021-08-30 00:45:40.803379
425	345	NICOLLY DE CASTRO	2008-04-02	447852023	28965814279	\N	(  )    -	(54)9152-0846	\N	Ensino fundamental Incomplento	\N	Ensino médio Incomplento	5 Km	2021-01-12	1	2	3	3	2021-08-30 00:45:40.803379
426	348	JAQUELINE SOLDERA	2008-10-04	202199992	78274914663	\N	(54)3291-2700	(54)9154-9752	\N	Ensino Técnico Incompleto	\N	Ensino superior Incompleto	20 Km	2021-01-18	1	2	6	5	2021-08-30 00:45:40.803379
427	358	LIRIA MARILEI DE OLIVEIRA	2008-05-26	844763375	43713949702	\N	(54)3291-3929	(54)3235-1150	\N	Ensino superior Incompleto	\N	Ensino superior Completo	5 Km	2021-01-13	2	2	6	4	2021-08-30 00:45:40.803379
428	373	LUANA MAGRIN	2008-06-16	326243611	33934269041	\N	(54)9920-8653	(54)3291-2151	\N	Ensino superior Incompleto	\N	Ensino superior Incompleto	5 Km	2021-01-11	1	2	6	3	2021-08-30 00:45:40.803379
429	432	MARLI ANDREOLA CASANOVA	2008-12-28	753660687	77716884655	\N	(54)3291-2447	(54)3291-9133	\N	Ensino superior Completo	\N	Ensino superior Incompleto	30 Km	2021-01-10	4	2	6	5	2021-08-30 00:45:40.803379
430	448	GIOVANNI POGGERE	2008-03-04	605472267	51754978985	\N	(54)3291-3883	30342623	\N	Ensino superior Completo	\N	Ensino Técnico Completo	10 Km	2021-01-26	3	1	6	4	2021-08-30 00:45:40.803379
431	493	ANDRÉIA PINHEIROS	2008-12-30	492950199	18712898050	\N	(54)9127-8073	(54)9983-4926	\N	Ensino fundamental Completo	\N	Ensino fundamental Incomplento	20 Km	2021-01-18	1	1	6	5	2021-08-30 00:45:40.803379
432	497	FERNANDA CIOATO	2008-12-27	577742381	25784515070	\N	\N	(54)3291-2344	\N	Ensino superior Incompleto	\N	Ensino Técnico Completo	1 Km	2021-01-30	4	1	1	2	2021-08-30 00:45:40.803379
433	511	TERSA BATISTA DA SILVA	2008-12-23	864730606	65879834492	\N	(54)3291-2133	(54)9171-6949	\N	Ensino Técnico Incompleto	\N	Ensino superior Incompleto	30 Km	2021-01-13	4	2	6	1	2021-08-30 00:45:40.803379
434	545	GABRIELE MOTA PEREIRA	2008-02-08	471046547	21326706451	\N	(54)9603-7744	(54)3291-2002	\N	Ensino fundamental Completo	\N	Ensino Técnico Completo	20 Km	2021-01-20	4	2	6	3	2021-08-30 00:45:40.803379
435	546	VIRGINIA MARIA MARQUES DOS SANTOS	2008-12-08	299085547	73979247605	\N	(54)9141-9255	(54)9906-5274	\N	Ensino fundamental Incomplento	\N	Ensino Técnico Completo	30 Km	2021-01-10	3	2	6	4	2021-08-30 00:45:40.803379
436	557	LEONARDO DE SOUZA	2008-06-18	258853928	74587897161	\N	(54)9606-4308	(54)9178-2603	\N	Ensino médio Completo	\N	Ensino Técnico Incompleto	30 Km	2021-01-15	5	1	6	5	2021-08-30 00:45:40.803379
437	580	VITOR QUISSINI MARTININGHI	2008-09-22	521756520	83282339002	\N	(54)9148-9448	(54)9108-8069	\N	Ensino superior Completo	\N	Ensino Técnico Completo	5 Km	2021-02-04	4	1	6	5	2021-08-30 00:45:40.803379
438	637	 SILVANE FRANCI DE PAULA SCAIN	2008-01-13	545603898	15026651000	\N	(54)9215-2118	(54)3291-3933	\N	Ensino fundamental Completo	\N	Ensino superior Completo	20 Km	2021-01-21	3	2	6	5	2021-08-30 00:45:40.803379
439	646	 JONATHAN PELLIZZARI	2008-10-01	823569394	68350944811	\N	(54)3291-3446	(54)9977-2699	\N	Ensino médio Completo	\N	Ensino fundamental Completo	10 Km	2021-01-17	1	1	6	2	2021-08-30 00:45:40.803379
440	664	 MARIA CRISTINA SCODRO MICHELON	2008-08-31	434832255	11734843391	\N	(54)9206-5857	(54)3291-4039	\N	Ensino superior Completo	\N	Ensino superior Completo	5 Km	2021-01-23	4	2	6	4	2021-08-30 00:45:40.803379
441	685	 BRUNO DE CASTILHOS FORTUNATTI	2008-03-06	267698664	43997075501	\N	(54)9136-7949	(54)9903-0268	\N	Ensino médio Incomplento	\N	Ensino superior Incompleto	10 Km	2021-01-26	3	1	6	5	2021-08-30 00:45:40.803379
442	692	 AMANDA UBATUBA FERREIRA	2008-05-22	450460996	35326937042	\N	(54)9901-9284	(54)3291-1939	\N	Ensino Técnico Incompleto	\N	Ensino superior Incompleto	15 Km	2021-01-14	5	2	6	3	2021-08-30 00:45:40.803379
443	696	 ERICK CASANOVA QUADROS	2008-10-19	351154699	14423513989	\N	(54)9963-0143	(54)9991-6502	\N	Ensino superior Incompleto	\N	Ensino superior Incompleto	20 Km	2021-01-21	1	1	6	2	2021-08-30 00:45:40.803379
444	706	CLARA BEATRIZ MAR LEMOS	2008-07-20	533329470	38425124025	\N	(54)3291-1756	(54)9645-8990	\N	Ensino superior Incompleto	\N	Ensino fundamental Incomplento	10 Km	2021-02-04	2	2	6	5	2021-08-30 00:45:40.803379
445	709	FATIMA INES BORTOLON	2008-10-08	163427011	26321754373	\N	(54)9699-2843	(54)3291-4970	\N	Ensino médio Incomplento	\N	Ensino fundamental Incomplento	50 Km	2021-01-29	4	2	6	3	2021-08-30 00:45:40.803379
446	723	NYCOLAS ZANELA BIANCHI	2008-12-24	954835324	55245545187	\N	(54)9978-5687	3291-3125	\N	Ensino Técnico Incompleto	\N	Ensino Técnico Completo	20 Km	2021-01-20	1	1	6	2	2021-08-30 00:45:40.803379
447	734	BERNARDO ALEXANDRE P. DOS SANTOS	2008-10-08	440248264	11748957065	\N	(54)3291-1116	(54)3291-1939	\N	Ensino superior Completo	\N	Ensino Técnico Incompleto	30 Km	2021-01-27	1	1	6	5	2021-08-30 00:45:40.803379
448	754	GUSTAVO GALVAM	2008-06-02	425543913	50928862555	\N	(54)3267-8035	(54)9939-7752	\N	Ensino Técnico Incompleto	\N	Ensino médio Completo	30 Km	2021-01-21	1	1	6	2	2021-08-30 00:45:40.803379
449	756	MARINA CICHIN CARARO	2008-11-06	456815902	24005322673	\N	(54)8432-5367	(54)9159-5658	\N	Ensino fundamental Completo	\N	Ensino fundamental Incomplento	30 Km	2021-01-24	2	2	6	2	2021-08-30 00:45:40.803379
450	783	JONATHAN DE LIMA GOMES	2008-11-19	529916746	19712316491	\N	(54)9980-8528	(54)9172-6795	\N	Ensino fundamental Incomplento	\N	Ensino médio Completo	30 Km	2021-01-14	4	1	6	5	2021-08-30 00:45:40.803379
451	800	VITÓRIA APARECIDA SOGARI	2008-10-18	131890372	54681479892	\N	(54)9704-1687	(54)9715-3522	\N	Ensino superior Completo	\N	Ensino fundamental Incomplento	5 Km	2021-01-24	4	2	6	2	2021-08-30 00:45:40.803379
452	804	MARIA ISABEL MOTA DA SILVA	2008-09-06	262031596	15476572201	\N	(54)3291-3234	(54)3291-6334	\N	Ensino superior Completo	\N	Ensino Técnico Completo	15 Km	2021-01-15	1	2	6	2	2021-08-30 00:45:40.803379
453	805	RAFAEL GUERRA DA ROSA	2008-03-16	520659034	80492442080	\N	(54)3291-5272	(54)3280-1016	\N	Ensino superior Incompleto	\N	Ensino Técnico Incompleto	1 Km	2021-01-15	1	1	6	3	2021-08-30 00:45:40.803379
454	816	TALISON DALBERTO DO AMARANTE	2008-04-22	456069194	49126930635	\N	(54)9689-9395	(54)9685-0247	\N	Ensino superior Incompleto	\N	Ensino fundamental Incomplento	15 Km	2021-01-26	4	1	4	4	2021-08-30 00:45:40.803379
455	830	JULIANA BRASIL	2008-09-08	938551383	78402431703	\N	(54)9644-9117	(54)9925-7912	\N	Ensino médio Completo	\N	Ensino fundamental Completo	10 Km	2021-01-13	3	2	6	2	2021-08-30 00:45:40.803379
456	840	SUELIN PELLIZZARI	2008-11-26	427331164	93512503529	\N	(54)9124-3297	(54)9645-2711	\N	Ensino Técnico Completo	\N	Ensino superior Completo	10 Km	2021-01-16	4	2	6	2	2021-08-30 00:45:40.803379
457	842	EDUARDA CASTILHOS	2008-04-07	571585155	81310949073	\N	(54)9215-0650	(54)3291-2874	\N	Ensino fundamental Completo	\N	Ensino fundamental Completo	1 Km	2021-01-24	4	2	1	2	2021-08-30 00:45:40.803379
458	853	ADRIELI NUNES	2008-11-30	790552033	73517068488	\N	(11)1111-1111	(54)9108-5691	\N	Ensino superior Incompleto	\N	Ensino Técnico Completo	1 Km	2021-01-27	4	2	6	5	2021-08-30 00:45:40.803379
459	859	LOGAN R. DOS SANTOS	2008-10-07	261440063	12806895616	\N	(54)9122-8019	(54)9961-3621	\N	Ensino Técnico Completo	\N	Ensino médio Completo	1 Km	2021-02-03	1	1	6	2	2021-08-30 00:45:40.803379
460	873	ANA CLAUDIA SORANZO	2008-10-05	527894039	98810928438	\N	(54)9164-2653	(54)3291-2670	\N	Ensino Técnico Completo	\N	Ensino Técnico Incompleto	1 Km	2021-01-29	4	2	6	2	2021-08-30 00:45:40.803379
461	875	VERGILIO TOME	2008-03-06	775142032	37865504892	\N	(54)9109-1841	32911360	\N	Ensino superior Completo	\N	Ensino médio Completo	15 Km	2021-01-22	3	1	4	2	2021-08-30 00:45:40.803379
462	878	SIRLEI CECHIN	2008-12-21	425978664	93297786770	\N	(54)3291-1854	(54)3291-2614	\N	Ensino superior Completo	\N	Ensino superior Incompleto	5 Km	2021-01-30	1	2	6	3	2021-08-30 00:45:40.803379
463	915	JONATAN GIACOMELLI PAGNO	2008-01-12	645486632	96169906977	\N	(54)9120-2190	32913382	\N	Ensino superior Incompleto	\N	Ensino superior Incompleto	20 Km	2021-02-05	4	1	4	5	2021-08-30 00:45:40.803379
464	923	FRANCIELE DA ROSA DOS SANTOS	2008-10-27	975924181	41280690824	\N	(54)9904-2624	(54)3291-7996	\N	Ensino Técnico Completo	\N	Ensino superior Completo	30 Km	2021-01-15	5	2	6	5	2021-08-30 00:45:40.803379
465	931	LETICIA POLIDORO SUSIN	2008-06-13	460194499	77879209162	\N	(54)9919-1034	(54)3291-2135	\N	Ensino Técnico Incompleto	\N	Ensino fundamental Completo	15 Km	2021-01-27	2	2	6	2	2021-08-30 00:45:40.803379
466	993	TIAGO SPIGOLON	2008-12-01	299414043	93203670200	\N	(54)3291-4145	(54)9940-2531	\N	Ensino fundamental Completo	\N	Ensino fundamental Completo	10 Km	2021-01-28	1	1	6	5	2021-08-30 00:45:40.803379
467	996	ALINE ARGENTA	2008-11-12	827328008	76487500462	\N	\N	(54)9983-5200	\N	Ensino superior Incompleto	\N	Ensino Técnico Completo	5 Km	2021-01-16	4	2	6	3	2021-08-30 00:45:40.803379
468	14	MADALENA FATIMA LIMA NAZARIO	2007-04-30	376314356	36412271835	\N	32912205	(54)9619-9161	\N	Ensino médio Completo	\N	Ensino superior Completo	5 Km	2021-02-05	5	2	6	2	2021-08-30 00:45:40.803379
469	16	ROSMARI LEONCIO	2007-10-29	217154534	25237422895	\N	\N	(54)3817-1807	\N	Ensino fundamental Completo	\N	Ensino fundamental Incomplento	5 Km	2021-02-02	1	2	6	5	2021-08-30 00:45:40.803379
470	19	FLAVIA CAPELETTI	2007-12-05	427941109	25360704737	\N	91549871	(54)9913-2794	\N	Ensino médio Incomplento	\N	Ensino fundamental Incomplento	10 Km	2021-01-11	3	2	6	2	2021-08-30 00:45:40.803379
471	26	JUNIOR NOVELLO	2007-08-12	392093707	68165546232	\N	(54)9938-3016	(54)9694-7124	\N	Ensino médio Completo	\N	Ensino superior Completo	50 Km	2021-02-04	1	1	6	5	2021-08-30 00:45:40.803379
472	46	FABRÍCIO LUIZ CAVALI	2007-11-26	886887891	70308199468	\N	(54)9163-4604	3291-5361	\N	Ensino médio Completo	\N	Ensino superior Incompleto	20 Km	2021-01-25	4	1	6	5	2021-08-30 00:45:40.803379
473	48	VALDOIR DOS SANTOS NAZARIO	2007-08-20	900860175	36266625031	\N	(54)3291-4293	3291-1239	\N	Ensino fundamental Incomplento	\N	Ensino fundamental Incomplento	10 Km	2021-01-10	1	1	6	4	2021-08-30 00:45:40.803379
474	56	LUCAS DEON SORANZO	2007-05-12	617884926	87751967464	\N	(54)3291-2109	(54)9134-0467	\N	Ensino médio Completo	\N	Ensino Técnico Incompleto	5 Km	2021-01-19	5	1	6	3	2021-08-30 00:45:40.803379
475	79	IRACEMA LORITA BUSIN BERNARDI	2007-05-15	933958734	76539394787	\N	(54)9133-5585	1213165465	\N	Ensino médio Completo	\N	Ensino superior Incompleto	1 Km	2021-01-18	1	2	6	5	2021-08-30 00:45:40.803379
476	82	MARIO LUIZ STEDILE	2007-02-05	756500223	86435003026	\N	(54)3291-2298	(54)3291-3059	\N	Ensino Técnico Incompleto	\N	Ensino superior Incompleto	15 Km	2021-02-06	1	1	6	2	2021-08-30 00:45:40.803379
477	90	ANA DAGMAR MACHADO	2007-12-04	992774314	84745891362	\N	(54)9119-1206	32914426	\N	Ensino médio Incomplento	\N	Ensino superior Completo	5 Km	2021-02-06	4	2	6	4	2021-08-30 00:45:40.803379
478	101	MAURÍCIO VIGANÓ MARCON	2007-07-06	792634233	43672268875	\N	(54)9187-2663	(54)9998-3340	\N	Ensino médio Completo	\N	Ensino superior Completo	5 Km	2021-02-02	4	1	6	2	2021-08-30 00:45:40.803379
479	156	GABRIELLY NAVARINI	2007-01-12	694129199	41333280679	\N	(54)9952-9474	(54)3291-7525	\N	Ensino Técnico Incompleto	\N	Ensino superior Incompleto	5 Km	2021-01-13	1	2	6	5	2021-08-30 00:45:40.803379
480	165	KETLEN PADILHA BOGO	2007-03-14	945942360	68154502015	\N	(54)3291-4609	3291-3161	\N	Ensino superior Incompleto	\N	Ensino superior Incompleto	15 Km	2021-02-04	1	2	1	5	2021-08-30 00:45:40.803379
481	195	LUCIANO AMPESSAN GENEROSO	2007-11-21	122692178	77094397854	\N	(54)9933-7582	32911790	\N	Ensino fundamental Incomplento	\N	Ensino superior Completo	15 Km	2021-02-03	4	1	4	3	2021-08-30 00:45:40.803379
482	216	ALEX SANDRO ALMEIDA BERTELLI	2007-02-08	285887566	31435192433	\N	(54)9699-2843	32912729	\N	Ensino fundamental Completo	\N	Ensino superior Incompleto	1 Km	2021-02-03	2	1	6	3	2021-08-30 00:45:40.803379
483	233	RAFAEL AUGUSTO BOLZAN	2007-07-20	540010510	32194416343	\N	(54)9950-6026	(54)8138-1996	\N	Ensino médio Completo	\N	Ensino superior Completo	30 Km	2021-01-14	1	1	6	5	2021-08-30 00:45:40.803379
484	251	ELENISA DUTRA DEMORI	2007-06-20	247191793	31161645706	\N	(54)9200-0643	(54)3291-4551	\N	Ensino superior Incompleto	\N	Ensino superior Incompleto	15 Km	2021-01-20	3	2	6	5	2021-08-30 00:45:40.803379
485	257	FELIPE FIAMINGHI	2007-08-17	942750753	35115479070	\N	(54)9253-2184	(54)9636-2620	\N	Ensino fundamental Completo	\N	Ensino fundamental Incomplento	20 Km	2021-01-25	1	1	4	5	2021-08-30 00:45:40.803379
486	265	JOANA HELENA LUZ	2007-03-21	665243178	32938084567	\N	(54)9133-4599	(54)9663-6281	\N	Ensino fundamental Completo	\N	Ensino fundamental Completo	10 Km	2021-01-12	1	2	2	2	2021-08-30 00:45:40.803379
487	324	GABRIELLY ALMEIDA VEDANA	2007-07-08	450213208	46765883010	\N	(  )    -	(54)3291-9140	\N	Ensino superior Incompleto	\N	Ensino Técnico Incompleto	50 Km	2021-01-25	4	2	6	5	2021-08-30 00:45:40.803379
488	344	DOUGLAS TOLEDO DANDOLINI	2007-12-12	533058409	98959514110	\N	32912884	(54)9919-2656	\N	Ensino fundamental Completo	\N	Ensino médio Incomplento	10 Km	2021-01-20	1	1	6	5	2021-08-30 00:45:40.803379
489	361	JONATAN FIAMINGHI	2007-11-22	635197549	41686013289	\N	(54)9187-0266	(54)9642-8685	\N	Ensino superior Completo	\N	Ensino fundamental Incomplento	1 Km	2021-01-28	1	1	6	3	2021-08-30 00:45:40.803379
490	407	LEOMAR DA SILVA RODRIGUES	2007-05-18	403702457	62119629969	\N	(54)3291-9007	(54)9663-3512	\N	Ensino fundamental Incomplento	\N	Ensino superior Completo	5 Km	2021-01-30	3	1	6	4	2021-08-30 00:45:40.803379
491	414	ARTUR NOVELO	2007-07-10	420942222	28982702966	\N	(54)3034-0309	(54)9167-9108	\N	Ensino médio Incomplento	\N	Ensino médio Completo	10 Km	2021-02-08	5	1	6	2	2021-08-30 00:45:40.803379
492	435	HENRIQUE CASTILHOS DA SILVA	2007-02-28	137783857	52852324183	\N	(54)9992-9158	(54)9608-8577	\N	Ensino Técnico Completo	\N	Ensino médio Incomplento	1 Km	2021-01-27	4	1	4	2	2021-08-30 00:45:40.803379
493	450	VITORIA RODRIGUES BAHU	2007-09-11	964771796	15302753876	\N	(54)3291-4412	(54)3291-3550	\N	Ensino médio Incomplento	\N	Ensino fundamental Completo	5 Km	2021-02-05	1	2	6	3	2021-08-30 00:45:40.803379
494	470	MIRIÃ HOFFMANN ZORZIN	2007-08-29	469737373	63977302243	\N	(11)1111-1111	96214415	\N	Ensino fundamental Completo	\N	Ensino superior Incompleto	5 Km	2021-01-11	1	2	6	5	2021-08-30 00:45:40.803379
495	471	ALEX DALPONTE	2007-03-04	835164161	91874172280	\N	(54)3291-3772	32914062	\N	Ensino fundamental Completo	\N	Ensino médio Incomplento	5 Km	2021-02-01	4	1	6	4	2021-08-30 00:45:40.803379
496	480	DANIELA GIRARDELLO	2007-04-14	417575802	25996786093	\N	(11)1111-1111	(54)3291-9003	\N	Ensino médio Completo	\N	Ensino médio Completo	20 Km	2021-02-05	4	2	6	3	2021-08-30 00:45:40.803379
497	488	UILIAN PEREIRA	2007-04-26	689686079	79726274071	\N	(54)9961-1628	(54)9614-7323	\N	Ensino superior Completo	\N	Ensino fundamental Incomplento	15 Km	2021-02-02	4	1	6	4	2021-08-30 00:45:40.803379
498	538	FERNANDA GRISON DA SILVA	2007-03-03	490373695	42778217427	\N	(54)9120-8790	(54)9984-6427	\N	Ensino Técnico Completo	\N	Ensino médio Completo	50 Km	2021-01-19	3	1	6	2	2021-08-30 00:45:40.803379
499	575	JOICE MACIEL DE OLIVEIRA DOS PASSOS	2007-09-20	721067614	25191821218	\N	(54)9148-5184	(54)3291-3358	\N	Ensino médio Completo	\N	Ensino fundamental Completo	10 Km	2021-02-07	4	2	6	3	2021-08-30 00:45:40.803379
500	586	SILVANE IMUZOLI DA ROSA DE GOIS GIRARDELL	2007-07-10	799891775	85988272934	\N	(54)9956-6853	(54)9907-7237	\N	Ensino superior Incompleto	\N	Ensino Técnico Completo	30 Km	2021-01-13	1	2	6	3	2021-08-30 00:45:40.803379
501	604	SABRINA GRISON DOS REIS	2007-05-01	339634072	45854700287	\N	(11)9544-3210	(54)9622-3839	\N	Ensino fundamental Completo	\N	Ensino superior Completo	15 Km	2021-01-23	5	2	6	5	2021-08-30 00:45:40.803379
502	625	 ODETE RIZZON BUGANÇA	2007-11-15	126195351	43098721760	\N	(54)9224-5150	(54)3291-3730	\N	Ensino Técnico Incompleto	\N	Ensino médio Completo	30 Km	2021-01-26	2	2	6	3	2021-08-30 00:45:40.803379
503	636	 VINICIUS ZANELLA GIACOMELLI	2007-09-09	535085413	76378163187	\N	(54)8132-8003	(54)3291-2741	\N	Ensino Técnico Incompleto	\N	Ensino fundamental Incomplento	10 Km	2021-02-01	1	1	6	2	2021-08-30 00:45:40.803379
695	881	GUSTAVO FELIPE VANIN	2005-03-09	341237875	40725503914	\N	(54)3291-1096	\N	\N	Ensino superior Incompleto	\N	Ensino médio Completo	1 Km	2021-01-15	4	1	6	2	2021-08-30 00:45:40.817298
504	645	 ARTHUR SIQUEIRA REZER	2007-07-10	538323622	26954123339	\N	(54)9971-9989	(54)9919-6802	\N	Ensino superior Incompleto	\N	Ensino Técnico Incompleto	15 Km	2021-02-03	4	1	6	4	2021-08-30 00:45:40.803379
505	674	 MICHAEL MAIKY DAROS	2007-04-01	151456840	99595814577	\N	(54)9119-1379	(54)9143-2015	\N	Ensino Técnico Incompleto	\N	Ensino médio Incomplento	5 Km	2021-01-23	2	1	6	2	2021-08-30 00:45:40.803379
506	702	 JOÃO VITOR DOS SANTOS VARGAS	2007-12-19	380082253	64549985444	\N	(54)9965-1264	(54)3291-2668	\N	Ensino superior Completo	\N	Ensino médio Completo	1 Km	2021-01-25	1	1	3	3	2021-08-30 00:45:40.803379
507	738	LUCAS CAINÃ PRESTES GARCIA	2007-11-20	291575674	80720730520	\N	(54)9951-5098	(54)9159-5658	\N	Ensino Técnico Completo	\N	Ensino superior Completo	15 Km	2021-01-12	4	1	6	2	2021-08-30 00:45:40.803379
508	767	ELIANE MICHELON BORGHETTI	2007-05-26	733412924	33104706637	\N	(54)9956-7261	(54)3235-1076	\N	Ensino superior Completo	\N	Ensino Técnico Completo	20 Km	2021-01-25	4	2	6	5	2021-08-30 00:45:40.803379
509	771	JULIANA ZUANAS	2007-06-07	763292525	17739027083	\N	(54)9928-0226	(54)3291-1962	\N	Ensino médio Incomplento	\N	Ensino Técnico Completo	20 Km	2021-01-18	4	2	2	3	2021-08-30 00:45:40.803379
510	776	JAMILE FONGARO	2007-04-23	516215332	27920211509	\N	(54)9144-9202	(54)3280-1027	\N	Ensino Técnico Incompleto	\N	Ensino médio Incomplento	5 Km	2021-01-15	1	2	1	2	2021-08-30 00:45:40.803379
511	778	RAFAEL DIDONÉ	2007-08-25	560733203	60445007091	\N	(54)9977-3199	(54)3280-1034	\N	Ensino médio Incomplento	\N	Ensino médio Completo	20 Km	2021-01-17	2	1	6	3	2021-08-30 00:45:40.803379
512	782	YANN MARCELO OLIVEIRA	2007-06-25	119829346	16285870753	\N	(11)1111-1111	(54)3291-3556	\N	Ensino fundamental Completo	\N	Ensino superior Completo	15 Km	2021-01-17	2	1	6	3	2021-08-30 00:45:40.817298
513	787	JULIO BRANCO DA SILVA	2007-11-08	700304637	56370622204	\N	(54)3291-1744	(54)9931-7450	\N	Ensino Técnico Completo	\N	Ensino fundamental Completo	20 Km	2021-01-19	1	1	6	3	2021-08-30 00:45:40.817298
514	811	LAURA GARBIN POLIDORO	2007-12-06	829348908	56882346317	\N	(54)3291-4411	(11)1111-1111	\N	Ensino superior Completo	\N	Ensino superior Incompleto	15 Km	2021-01-26	4	2	6	5	2021-08-30 00:45:40.817298
515	826	MARIA EDUARDA RIZZON	2007-08-03	957196076	70905406383	\N	(54)9646-1871	(54)3291-3552	\N	Ensino fundamental Incomplento	\N	Ensino Técnico Incompleto	15 Km	2021-01-15	2	2	6	2	2021-08-30 00:45:40.817298
516	846	LARA EMELINDA ZAN	2007-05-18	713938812	46145036580	\N	(54)9615-8374	(54)9106-7634	\N	Ensino médio Completo	\N	Ensino médio Completo	15 Km	2021-02-03	4	2	6	5	2021-08-30 00:45:40.817298
517	890	CARLOS EDUARDO RODRIGUES	2007-02-04	717621482	70629608188	\N	(54)9146-1960	(54)9132-5402	\N	Ensino Técnico Completo	\N	Ensino médio Completo	10 Km	2021-01-24	4	1	6	1	2021-08-30 00:45:40.817298
518	904	ALISSON JÚNIOR BORBA	2007-04-14	572959973	68232463150	\N	(54)3291-3734	(54)9915-6367	\N	Ensino Técnico Incompleto	\N	Ensino superior Completo	30 Km	2021-01-20	1	1	6	2	2021-08-30 00:45:40.817298
519	908	MATEUS FABBRO	2007-12-03	537625557	53935168485	\N	(54)9982-1582	(54)9650-6709	\N	Ensino superior Incompleto	\N	Ensino médio Incomplento	5 Km	2021-02-01	5	1	6	3	2021-08-30 00:45:40.817298
520	914	CARLOS EDUARDO CAMATTI	2007-09-30	585855029	27390450240	\N	(54)9168-4445	(11)1111-1111	\N	Ensino Técnico Incompleto	\N	Ensino superior Completo	15 Km	2021-01-10	4	1	6	2	2021-08-30 00:45:40.817298
521	924	FABIO BORGES VIEIRA	2007-02-05	846505642	33179400541	\N	(54)9964-0807	(54)0000-0000	\N	Ensino Técnico Completo	\N	Ensino fundamental Completo	10 Km	2021-01-29	1	1	6	3	2021-08-30 00:45:40.817298
522	940	LUAN MARINO KOCHHANN	2007-01-22	922082281	23884120093	\N	(54)9609-0284	(54)9657-7150	\N	Ensino Técnico Completo	\N	Ensino Técnico Incompleto	30 Km	2021-01-24	2	2	1	2	2021-08-30 00:45:40.817298
523	954	MORGANA CAPELETTI BETT	2007-02-03	560964504	15764023898	\N	(54)9103-8140	(54)9977-8364	\N	Ensino superior Incompleto	\N	Ensino médio Completo	15 Km	2021-01-23	4	2	6	3	2021-08-30 00:45:40.817298
524	955	LUCIANO SCARMIN	2007-09-24	743257875	90914687097	\N	32913152	(54)9654-1115	\N	Ensino médio Incomplento	\N	Ensino fundamental Incomplento	10 Km	2021-01-11	4	1	6	5	2021-08-30 00:45:40.817298
525	979	LUCAS ANDRE FONGARO	2007-05-22	953030961	20386340002	\N	(54)3235-5030	(54)9927-3919	\N	Ensino Técnico Incompleto	\N	Ensino superior Incompleto	15 Km	2021-02-05	4	1	6	3	2021-08-30 00:45:40.817298
526	991	FERNANDA BIONDO BIAZUS	2007-10-29	355764124	64216909937	\N	(54)3291-3666	(54)9695-6070	\N	Ensino Técnico Incompleto	\N	Ensino Técnico Completo	1 Km	2021-02-07	1	2	6	4	2021-08-30 00:45:40.817298
527	54	GILBERTO PELISSARI	2016-08-07	897284578	90293535932	\N	(54)9602-2303	(54)3291-2946	\N	Ensino médio Incomplento	\N	Ensino fundamental Completo	20 Km	2021-01-21	4	1	6	3	2021-08-30 00:45:40.817298
528	74	VIVIANE LENISE MARTENINGHI MARTINS	2016-12-28	941031939	99836761162	\N	(54)3034-0270	32142287	\N	Ensino médio Completo	\N	Ensino médio Completo	30 Km	2021-01-15	1	2	6	3	2021-08-30 00:45:40.817298
529	110	GABRIELA ROMANO	2016-12-31	397026819	98474449123	\N	(54)9157-3336	(54)8135-8493	\N	Ensino fundamental Completo	\N	Ensino médio Completo	5 Km	2021-01-17	1	2	4	2	2021-08-30 00:45:40.817298
530	124	ROSELI CARARO DE OLIVEIRA	2016-12-23	632647474	94780976228	\N	(54)3291-2399	32919172	\N	Ensino superior Completo	\N	Ensino Técnico Incompleto	10 Km	2021-01-15	1	2	6	3	2021-08-30 00:45:40.817298
531	127	LINDOMAR GONÇALVES DE JESUS	2016-08-18	932556685	49984863435	\N	(54)9927-5718	3267-8246	\N	Ensino médio Incomplento	\N	Ensino superior Completo	15 Km	2021-02-08	1	1	6	5	2021-08-30 00:45:40.817298
532	148	CAROLINE BRITO RODRIGUES	2016-05-24	812670839	22076188680	\N	(54)9978-4303	(54)9902-9613	\N	Ensino fundamental Completo	\N	Ensino fundamental Incomplento	1 Km	2021-02-05	4	2	6	5	2021-08-30 00:45:40.817298
533	163	GABRIELA SILVA DA ROSA	2016-03-23	446454498	77519421286	\N	(54)3291-7501	3291 44 30	\N	Ensino médio Incomplento	\N	Ensino fundamental Completo	15 Km	2021-01-28	5	2	6	5	2021-08-30 00:45:40.817298
534	180	LUCAS DE OLIVEIRA HERPICH	2016-09-15	419123744	27000638822	\N	(54)9138-4436	(57)3235-5039	\N	Ensino superior Incompleto	\N	Ensino Técnico Incompleto	5 Km	2021-01-16	1	1	6	3	2021-08-30 00:45:40.817298
535	183	RENATO FELIPE RECH	2016-05-03	531051987	11224493010	\N	(54)3291-3844	(54)9197-9775	\N	Ensino médio Incomplento	\N	Ensino Técnico Incompleto	15 Km	2021-01-22	1	1	6	2	2021-08-30 00:45:40.817298
536	207	ALISON DA J. VARELA	2016-06-23	834315992	74130871326	\N	(54)9197-9959	(54)9980-2117	\N	Ensino fundamental Incomplento	\N	Ensino superior Incompleto	5 Km	2021-01-17	5	1	6	5	2021-08-30 00:45:40.817298
537	210	GUSTAVO CAMASSOLA	2016-08-29	516916087	22671443864	\N	(54)9148-4141	(54)3291-2713	\N	Ensino fundamental Completo	\N	Ensino médio Completo	5 Km	2021-01-20	4	1	6	5	2021-08-30 00:45:40.817298
538	217	JULIANA MENEGUZZO	2016-08-25	687587597	16912232425	\N	(54)9145-7409	91755236	\N	Ensino superior Incompleto	\N	Ensino fundamental Completo	10 Km	2021-01-10	5	2	6	2	2021-08-30 00:45:40.817298
539	221	MILENE FÁTIMA VARELA	2016-10-18	116625945	26819292858	\N	(11)9133-6475	(54)3291-4121	\N	Ensino Técnico Incompleto	\N	Ensino médio Incomplento	1 Km	2021-01-20	1	2	6	5	2021-08-30 00:45:40.817298
540	243	EDUARDO PAIM	2016-12-23	375172820	83016463133	\N	(54)9700-7212	(54)9148-9083	\N	Ensino médio Incomplento	\N	Ensino Técnico Incompleto	20 Km	2021-01-20	4	1	4	2	2021-08-30 00:45:40.817298
541	281	EDVÂNIA OLIVEIRA	2016-07-24	148139506	17188468865	\N	(54)9981-7382	(54)3291-4207	\N	Ensino superior Completo	\N	Ensino superior Incompleto	1 Km	2021-02-01	1	2	6	3	2021-08-30 00:45:40.817298
542	285	JHENIFER SLONGO	2016-09-06	711545810	46905009793	\N	(54)9915-1005	35042447	\N	Ensino médio Incomplento	\N	Ensino fundamental Incomplento	5 Km	2021-01-20	3	2	6	5	2021-08-30 00:45:40.817298
543	354	GABRIEL GOULART MONTANARI	2016-12-28	879187604	80370664327	\N	(54)3291-3065	(54)3291-1613	\N	Ensino Técnico Completo	\N	Ensino Técnico Incompleto	1 Km	2021-01-12	4	1	6	5	2021-08-30 00:45:40.817298
544	362	MORGANA FIAMINGHI	2016-09-05	421430425	56682895002	\N	(54)9171-4875	(54)8412-9664	\N	Ensino superior Incompleto	\N	Ensino fundamental Completo	20 Km	2021-02-02	3	2	6	2	2021-08-30 00:45:40.817298
545	380	WILIAN LIPOSKI PEROZZO	2016-09-01	743038351	86562176827	\N	(54)3291-5008	(54)9904-0784	\N	Ensino superior Completo	\N	Ensino fundamental Incomplento	20 Km	2021-02-05	1	1	6	1	2021-08-30 00:45:40.817298
546	386	KATIELE ZAMPIERI	2016-02-29	245547056	47123417236	\N	(54)9192-4460	(54)8418-8289	\N	Ensino fundamental Incomplento	\N	Ensino Técnico Completo	1 Km	2021-01-24	1	2	6	2	2021-08-30 00:45:40.817298
547	421	AUGUSTO ZUANAZZI AUMOND	2016-08-20	130372752	12049398964	\N	(54)9607-4223	30340109	\N	Ensino superior Incompleto	\N	Ensino fundamental Completo	15 Km	2021-01-23	4	1	6	2	2021-08-30 00:45:40.817298
548	427	GUILHERME ESPELOCIN	2016-05-22	435493785	93445630302	\N	(54)9977-0840	32915355	\N	Ensino médio Completo	\N	Ensino superior Completo	30 Km	2021-01-13	4	1	6	3	2021-08-30 00:45:40.817298
549	440	GUSTAVO ASCARI STEDILE	2016-05-28	331141946	82311474371	\N	(54)9967-2026	(54)9953-3185	\N	Ensino médio Incomplento	\N	Ensino fundamental Incomplento	30 Km	2021-02-03	1	1	3	3	2021-08-30 00:45:40.817298
550	446	BERNARDO SANDRI	2016-08-08	973404704	86067083193	\N	(54)9655-1909	*	\N	Ensino Técnico Completo	\N	Ensino Técnico Completo	30 Km	2021-01-11	3	1	6	3	2021-08-30 00:45:40.817298
551	460	CAROLINA DE OLIVEIRA	2016-08-03	412917105	66113849200	\N	(54)9256-5944	(54)9627-9134	\N	Ensino superior Completo	\N	Ensino superior Incompleto	30 Km	2021-01-20	5	2	6	2	2021-08-30 00:45:40.817298
552	475	FELIPE DE MORAES	2016-04-27	586190883	55110056381	\N	(54)9973-5233	32912259	\N	Ensino fundamental Incomplento	\N	Ensino Técnico Incompleto	5 Km	2021-01-21	1	1	6	3	2021-08-30 00:45:40.817298
553	487	ALEXANDRA BALARDIN ZAFFONATO	2016-02-27	777383655	32782874424	\N	(54)9615-8038	(54)9605-1321	\N	Ensino fundamental Incomplento	\N	Ensino superior Completo	1 Km	2021-01-27	4	1	6	3	2021-08-30 00:45:40.817298
554	496	MARIA EDUARDA MOLLMANN DE ALMEIDA	2016-10-14	497059002	72393910487	\N	\N	(54)3291-1161	\N	Ensino Técnico Incompleto	\N	Ensino médio Completo	5 Km	2021-02-06	1	2	4	5	2021-08-30 00:45:40.817298
555	520	JULIA MACHADO SCARABELOT	2016-09-07	518620415	55171747335	\N	(54)9135-1027	91282425	\N	Ensino médio Completo	\N	Ensino superior Completo	5 Km	2021-01-26	4	2	1	3	2021-08-30 00:45:40.817298
556	549	MARCELO AUGUSTO DOS SANTOS	2016-12-27	276382009	45594937477	\N	(54)9674-4612	(54)3291-2267	\N	Ensino superior Incompleto	\N	Ensino médio Completo	20 Km	2021-02-06	1	1	6	3	2021-08-30 00:45:40.817298
557	579	ROSALVO MARIA BONI	2016-01-05	981971151	83602911570	\N	(54)9951-1651	(54)9139-4104	\N	Ensino médio Completo	\N	Ensino médio Incomplento	1 Km	2021-01-18	4	1	6	3	2021-08-30 00:45:40.817298
558	600	CAMILA APARECIDA GOZZI	2016-10-12	785838653	33490361351	\N	(54)9668-1743	(54)9217-4853	\N	Ensino médio Incomplento	\N	Ensino médio Incomplento	10 Km	2021-01-13	1	2	6	3	2021-08-30 00:45:40.817298
559	615	JULIANA PENCA	2016-03-02	487851952	53172185511	\N	(54)3291-4153	(54)9975-5082	\N	Ensino fundamental Completo	\N	Ensino médio Incomplento	30 Km	2021-02-05	5	2	6	2	2021-08-30 00:45:40.817298
560	623	 RODRIGO BRESOLIN	2016-04-11	542645950	87930945184	\N	(54)9951-9231	(54)3291-5297	\N	Ensino superior Completo	\N	Ensino médio Completo	15 Km	2021-01-18	1	1	6	3	2021-08-30 00:45:40.817298
561	627	 LUIS EDUARDO CAVALLI	2016-01-10	631308487	99212081128	\N	(54)9931-9078	(54)3291-3557	\N	Ensino médio Incomplento	\N	Ensino superior Incompleto	1 Km	2021-02-04	5	1	6	5	2021-08-30 00:45:40.817298
562	703	 JOSÉ ARMANDO PRACE DE SOUZA	2016-02-03	109648189	70882710445	\N	\N	(54)3280-1136	\N	Ensino médio Incomplento	\N	Ensino médio Completo	10 Km	2021-01-11	4	1	6	5	2021-08-30 00:45:40.817298
563	721	LUAN BRITO	2016-01-23	291874221	61377765135	\N	(54)3291-2416	(54)9146-7313	\N	Ensino médio Completo	\N	Ensino médio Incomplento	5 Km	2021-01-20	1	1	1	5	2021-08-30 00:45:40.817298
564	727	FERNANDA CEBALLOS SOLEIMAN	2016-04-26	392770336	63936633906	\N	(54)9982-0292	(54)3291-4290	\N	Ensino fundamental Completo	\N	Ensino fundamental Completo	20 Km	2021-01-21	4	2	6	5	2021-08-30 00:45:40.817298
565	741	GISLAINE DUARTE DA SILVA	2016-01-18	142761156	81929400704	\N	(54)9960-5142	(54)9136-4687	\N	Ensino Técnico Completo	\N	Ensino superior Incompleto	15 Km	2021-01-12	1	2	6	5	2021-08-30 00:45:40.817298
566	745	JULIANA DA LUZ	2016-11-03	453264421	72407928838	\N	\N	(54)9111-2416	\N	Ensino médio Incomplento	\N	Ensino fundamental Incomplento	5 Km	2021-02-06	4	2	6	2	2021-08-30 00:45:40.817298
567	746	ANA CAROLINA DUARTE	2016-05-28	920024045	99151077603	\N	(54)9691-9382	(54)9607-4279	\N	Ensino superior Completo	\N	Ensino médio Incomplento	15 Km	2021-01-28	1	2	6	5	2021-08-30 00:45:40.817298
568	770	JUSCELINO GOULART FILHO	2016-11-19	690685154	54460724317	\N	(54)9246-3946	(54)3291-3721	\N	Ensino médio Incomplento	\N	Ensino fundamental Incomplento	30 Km	2021-01-25	2	1	6	5	2021-08-30 00:45:40.817298
569	813	NATÁLIA MOTA	2016-08-05	220105741	16601885015	\N	(54)3291-3454	(54)3280-1040	\N	Ensino superior Completo	\N	Ensino médio Completo	15 Km	2021-02-02	1	2	6	4	2021-08-30 00:45:40.817298
570	815	GUILHERME DOS SANTOS CAMASSOLA	2016-03-31	399179087	30434862410	\N	(54)8154-2081	(54)9908-6708	\N	Ensino superior Incompleto	\N	Ensino Técnico Incompleto	10 Km	2021-01-13	1	1	6	5	2021-08-30 00:45:40.817298
571	824	BRUNO BALARDIN	2016-04-10	876301259	93225931435	\N	(54)9711-9605	(54)9147-6487	\N	Ensino Técnico Completo	\N	Ensino médio Incomplento	20 Km	2021-01-21	3	1	6	5	2021-08-30 00:45:40.817298
572	827	TAISE BORGES	2016-05-06	855580495	88078301371	\N	(54)9913-7933	(54)9699-8143	\N	Ensino fundamental Incomplento	\N	Ensino superior Completo	5 Km	2021-01-11	1	2	6	3	2021-08-30 00:45:40.817298
573	838	BEATRIZ RAPIKVCZ	2016-01-26	699522882	22116817397	\N	(54)9108-4934	(54)3291-1257	\N	Ensino fundamental Incomplento	\N	Ensino fundamental Completo	20 Km	2021-01-11	3	2	1	5	2021-08-30 00:45:40.817298
574	866	RENAN SOUZA TEIXEIRA	2016-10-22	305613719	68260646889	\N	(54)9187-0053	(54)9981-6531	\N	Ensino Técnico Completo	\N	Ensino médio Completo	20 Km	2021-02-06	1	1	6	5	2021-08-30 00:45:40.817298
575	877	MARINETE FARIAS	2016-07-05	578066248	78893597471	\N	(54)3291-3595	(54)9949-6094	\N	Ensino fundamental Incomplento	\N	Ensino médio Completo	30 Km	2021-01-19	5	2	6	5	2021-08-30 00:45:40.817298
576	887	PAULO SERGIO FOCHESATO	2016-09-01	648625271	86367084017	\N	(54)9983-6032	(54)3291-4554	\N	Ensino médio Completo	\N	Ensino Técnico Incompleto	1 Km	2021-01-23	1	1	6	5	2021-08-30 00:45:40.817298
577	922	ROBSON ROSSI	2016-05-28	872903233	23050743624	\N	(54)9192-0865	(54)9693-2076	\N	Ensino médio Incomplento	\N	Ensino superior Incompleto	30 Km	2021-01-23	2	1	6	2	2021-08-30 00:45:40.817298
578	972	UERLON RECH	2016-05-14	843438851	77758166847	\N	(54)9669-6265	(54)9930-7136	\N	Ensino fundamental Completo	\N	Ensino superior Completo	30 Km	2021-02-01	1	1	6	5	2021-08-30 00:45:40.817298
579	2	BARBARA ZANOTTO	2006-12-29	273490857	30253766489	\N	(54)9152-7397	(54)9219-8342	\N	Ensino fundamental Completo	\N	Ensino Técnico Incompleto	20 Km	2021-01-27	3	2	6	5	2021-08-30 00:45:40.817298
580	10	DIÉLI ZULIAN TERRES	2006-03-18	653252232	26409219937	\N	91596219	(54)9101-6865	\N	Ensino médio Incomplento	\N	Ensino Técnico Completo	5 Km	2021-01-28	4	2	6	1	2021-08-30 00:45:40.817298
581	17	ANANDA MICHELON	2006-02-04	235628893	93786346547	\N	(54)9984-7729	(54)9609-1167	\N	Ensino Técnico Completo	\N	Ensino superior Completo	20 Km	2021-01-28	2	2	6	5	2021-08-30 00:45:40.817298
582	38	LUIZ FELIPE DAL ZOTTO	2006-06-23	423493959	37544244521	\N	(54)9682-6842	3291-4534	\N	Ensino superior Incompleto	\N	Ensino superior Incompleto	20 Km	2021-01-28	5	1	6	2	2021-08-30 00:45:40.817298
583	40	VILNEI CORSO	2006-11-16	830953659	83969553052	\N	(54)3291-5202	3291-5272	\N	Ensino superior Completo	\N	Ensino fundamental Incomplento	20 Km	2021-01-24	4	1	6	2	2021-08-30 00:45:40.817298
584	66	ILIANE FONTANA CHEMELLO	2006-08-15	424332449	93476919074	\N	(54)9154-1619	32911743	\N	Ensino fundamental Incomplento	\N	Ensino superior Completo	10 Km	2021-01-14	3	2	6	2	2021-08-30 00:45:40.817298
585	67	SOLANGE MICHELON	2006-06-06	329101858	38161681561	\N	(54)3291-3539	3291-2879	\N	Ensino superior Incompleto	\N	Ensino superior Completo	50 Km	2021-02-01	1	2	4	2	2021-08-30 00:45:40.817298
586	69	ROSANGELA APARECIDA ANTUNES FOGAÇA	2006-11-15	573222425	51243987326	\N	(54)9143-2051	32917232	\N	Ensino superior Incompleto	\N	Ensino fundamental Incomplento	20 Km	2021-02-03	4	2	6	2	2021-08-30 00:45:40.817298
587	81	GUSTAVO MENEGON	2006-10-26	774247102	27237706048	\N	(54)8110-0355	32919124	\N	Ensino Técnico Incompleto	\N	Ensino fundamental Completo	30 Km	2021-02-01	5	1	6	3	2021-08-30 00:45:40.817298
588	103	EMAEL RIBEIRO KLEIN	2006-03-17	702945636	15471005772	\N	(54)9991-4360	96084506	\N	Ensino médio Completo	\N	Ensino Técnico Incompleto	1 Km	2021-02-04	3	1	6	5	2021-08-30 00:45:40.817298
589	121	IVANIR INÊS TOMÉ VANIN	2006-02-12	462275950	43403808441	\N	(54)9969-9397	(  )9175-5236	\N	Ensino fundamental Completo	\N	Ensino médio Incomplento	30 Km	2021-01-21	1	2	6	5	2021-08-30 00:45:40.817298
590	137	ANGELO GABRIEL CARVALHO DA SILVA	2006-04-25	211107044	64864596572	\N	\N	(54)3291-4152	\N	Ensino fundamental Completo	\N	Ensino fundamental Completo	50 Km	2021-01-14	4	1	6	2	2021-08-30 00:45:40.817298
591	179	NEUZA APARECIDA DE OLIVEIRA PEREIRA	2006-04-08	130629365	80908384109	\N	(54)9141-5220	(  )    -	\N	Ensino superior Completo	\N	Ensino Técnico Completo	5 Km	2021-01-17	1	2	6	5	2021-08-30 00:45:40.817298
592	199	EDUARDA DOS SANTOS DE OLIVEIRA	2006-02-04	486000886	47025571253	\N	(54)9154-0785	(54)3291-1697	\N	Ensino médio Incomplento	\N	Ensino fundamental Incomplento	1 Km	2021-01-23	4	2	4	3	2021-08-30 00:45:40.817298
593	208	TIAGO FACHIN RECH	2006-04-26	640548652	94375692630	\N	(54)9615-8038	(54)9967-0680	\N	Ensino Técnico Completo	\N	Ensino médio Incomplento	20 Km	2021-01-21	1	1	6	3	2021-08-30 00:45:40.817298
594	235	RAFAEL FANTIN BORGHETTI	2006-07-08	481367728	48259829066	\N	(54)8401-2526	(54)9986-3158	\N	Ensino fundamental Incomplento	\N	Ensino superior Incompleto	15 Km	2021-02-05	1	1	6	2	2021-08-30 00:45:40.817298
595	253	DIONATAN FILIPINI DE OLIVEIRA	2006-11-21	997794185	89037456038	\N	(54)9148-4305	(54)9939-5714	\N	Ensino médio Completo	\N	Ensino médio Completo	15 Km	2021-02-01	4	1	4	2	2021-08-30 00:45:40.817298
596	263	FERNANDO DALL'AGNO RODRIGUES	2006-09-14	115911777	95643126494	\N	(54)9638-1313	(54)9653-8347	\N	Ensino Técnico Incompleto	\N	Ensino médio Completo	5 Km	2021-01-29	2	1	6	5	2021-08-30 00:45:40.817298
597	264	FERNANDO ANTÔNIO ZUCCO	2006-02-07	680385137	34317606595	\N	(54)8441-8700	(54)9164-0858	\N	Ensino médio Incomplento	\N	Ensino médio Incomplento	10 Km	2021-01-19	3	1	6	2	2021-08-30 00:45:40.817298
598	316	GABRIEL GENTIL	2006-10-02	547288062	13206940079	\N	(54)9647-0297	(54)3291-4470	\N	Ensino médio Completo	\N	Ensino fundamental Completo	30 Km	2021-01-25	1	1	6	3	2021-08-30 00:45:40.817298
599	321	MARIA DE FÁTIMA LIPOSKI	2006-06-28	719830319	10891854901	\N	(54)9217-3236	(54)3291-1549	\N	Ensino Técnico Completo	\N	Ensino superior Completo	15 Km	2021-01-26	3	2	6	3	2021-08-30 00:45:40.817298
600	337	CHEILA DOS REIS	2006-09-25	666776586	61136335243	\N	(54)9100-0208	(54)9996-6954	\N	Ensino superior Completo	\N	Ensino Técnico Completo	5 Km	2021-01-23	4	2	6	3	2021-08-30 00:45:40.817298
601	342	THALES MENDES PADUAN	2006-01-18	255438191	40161172195	\N	32919116	(54)9697-8255	\N	Ensino médio Completo	\N	Ensino médio Completo	5 Km	2021-01-12	1	1	6	2	2021-08-30 00:45:40.817298
602	359	ÉRICA RIBEIRO ASCARI	2006-02-06	578254571	84930727188	\N	(54)9685-4735	(54)9673-9068	\N	Ensino Técnico Incompleto	\N	Ensino fundamental Completo	15 Km	2021-01-20	4	2	6	5	2021-08-30 00:45:40.817298
603	363	DEIVID PEREIRA DA SILVA	2006-01-01	212248606	36135304120	\N	(54)3291-2833	(54)8122-8760	\N	Ensino superior Completo	\N	Ensino Técnico Incompleto	20 Km	2021-02-05	1	1	6	3	2021-08-30 00:45:40.817298
604	369	JOSIELI WANINS DE JESUS	2006-09-02	721007847	87091551639	\N	(54)3291-4501	(54)8129-3098	\N	Ensino médio Incomplento	\N	Ensino médio Incomplento	1 Km	2021-01-26	1	2	6	2	2021-08-30 00:45:40.817298
605	381	GABRIELLY MOTA	2006-10-30	273273623	31926204653	\N	(54)9182-8481	(54)3291-6005	\N	Ensino superior Incompleto	\N	Ensino Técnico Completo	15 Km	2021-02-06	4	2	1	5	2021-08-30 00:45:40.817298
606	383	JOÃO VICTOR MIOTTO	2006-12-01	915244829	93515108802	\N	(54)9158-4700	(54)8123-7056	\N	Ensino Técnico Completo	\N	Ensino fundamental Incomplento	10 Km	2021-01-15	5	1	6	2	2021-08-30 00:45:40.817298
607	410	MONICA PADILHA	2006-10-09	480576541	86681602612	\N	(54)3291-5169	(54)9976-9589	\N	Ensino fundamental Incomplento	\N	Ensino fundamental Incomplento	30 Km	2021-01-27	1	2	6	3	2021-08-30 00:45:40.817298
608	411	DEBORA MICHELIN	2006-06-27	684901715	42718802281	\N	32911177	(54)3291-2273	\N	Ensino superior Incompleto	\N	Ensino Técnico Completo	5 Km	2021-02-08	4	2	1	3	2021-08-30 00:45:40.817298
609	472	ANA PAULA CECHINATO	2006-11-23	316021869	19966564927	\N	(54)9971-0419	32914327	\N	Ensino médio Incomplento	\N	Ensino superior Incompleto	10 Km	2021-01-10	1	2	6	5	2021-08-30 00:45:40.817298
610	479	PAMELA PELISSARI	2006-01-03	921504478	29571154185	\N	(54)9197-8079	(54)3291-3246	\N	Ensino Técnico Incompleto	\N	Ensino fundamental Completo	15 Km	2021-01-24	4	2	6	2	2021-08-30 00:45:40.817298
611	524	GERMANO MICHELON SANTOS	2006-09-28	198254845	19218203922	\N	32912267	9625-3381	\N	Ensino superior Incompleto	\N	Ensino fundamental Incomplento	1 Km	2021-01-15	4	1	6	2	2021-08-30 00:45:40.817298
612	527	SABRINA FILIPINI OLIVEIRA	2006-07-29	923543728	39886550475	\N	(54)3235-1222	32911762	\N	Ensino Técnico Completo	\N	Ensino Técnico Completo	50 Km	2021-01-30	2	2	6	3	2021-08-30 00:45:40.817298
613	554	BRUNA FRANCIELE VIIRA BRESOLIN	2006-07-14	775436549	89432540031	\N	(54)3235-1678	(54)3291-2734	\N	Ensino Técnico Incompleto	\N	Ensino fundamental Completo	1 Km	2021-01-17	4	2	6	5	2021-08-30 00:45:40.817298
614	564	CAROLINE MASCARELLO RIBEIRO	2006-12-11	947787627	98738869714	\N	(54)9901-9284	(54)9683-4453	\N	Ensino fundamental Completo	\N	Ensino Técnico Incompleto	10 Km	2021-01-18	1	2	6	5	2021-08-30 00:45:40.817298
615	593	RUTIANE DE CASTILHOS	2006-01-06	688992526	16459774993	\N	(11)1111-1111	(54)3291-2896	\N	Ensino médio Incomplento	\N	Ensino Técnico Completo	20 Km	2021-01-14	4	2	6	5	2021-08-30 00:45:40.817298
616	612	THAIS GOMES MIRANDA SANCHEZ	2006-02-27	148252552	51437673267	\N	(54)3291-5362	(54)9998-9795	\N	Ensino Técnico Incompleto	\N	Ensino médio Incomplento	30 Km	2021-02-08	1	2	6	5	2021-08-30 00:45:40.817298
617	619	RAFAELA NOVELLO	2006-03-04	464339196	78180391585	\N	(54)3291-6338	(54)3291-2060	\N	Ensino fundamental Incomplento	\N	Ensino médio Completo	15 Km	2021-01-15	4	2	6	3	2021-08-30 00:45:40.817298
618	639	 LUIZ HENRIQUE POHLOD KAPP	2006-09-12	601338180	97106659316	\N	(47)9291-2103	(54)9144-4172	\N	Ensino superior Incompleto	\N	Ensino Técnico Incompleto	15 Km	2021-01-22	3	1	6	4	2021-08-30 00:45:40.817298
619	654	 VERA SLONGO FONGARO	2006-08-26	342642283	64357492133	\N	(54)9702-5242	(54)9908-9383	\N	Ensino fundamental Completo	\N	Ensino Técnico Completo	1 Km	2021-01-14	1	2	6	4	2021-08-30 00:45:40.817298
620	658	 NICOLI RODRIGUES DA SILVA	2006-10-16	540993867	44825000775	\N	(54)9909-7620	(54)9209-9944	\N	Ensino superior Completo	\N	Ensino médio Incomplento	15 Km	2021-01-27	4	2	6	3	2021-08-30 00:45:40.817298
621	678	 MATEUS RIZZON SANDI	2006-07-17	620973804	12691624309	\N	(54)3291-8300	(54)9183-5031	\N	Ensino Técnico Completo	\N	Ensino superior Completo	5 Km	2021-01-16	2	1	6	2	2021-08-30 00:45:40.817298
622	680	 RAFAEL LEONCIO	2006-01-24	579310631	28817014535	\N	(11)1111-1111	(54)9931-8929	\N	Ensino Técnico Completo	\N	Ensino superior Completo	1 Km	2021-01-24	1	1	6	3	2021-08-30 00:45:40.817298
623	707	MAURICIU BOEIRA QUINTANILHA	2006-07-15	321196211	18524815952	\N	(54)3291-1428	(54)9601-0971	\N	Ensino superior Incompleto	\N	Ensino fundamental Completo	20 Km	2021-02-03	5	1	6	2	2021-08-30 00:45:40.817298
624	718	ALLAN BOMBANA	2006-06-22	312006682	86012603748	\N	(54)9924-8932	(54)3291-1046	\N	Ensino médio Incomplento	\N	Ensino superior Completo	5 Km	2021-01-21	4	1	6	5	2021-08-30 00:45:40.817298
625	729	OTÁVIO BOSSARDI MICHELON	2006-10-28	423562953	84629511697	\N	(54)9667-8483	(54)9191-7268	\N	Ensino fundamental Completo	\N	Ensino médio Incomplento	1 Km	2021-01-30	1	1	6	5	2021-08-30 00:45:40.817298
626	743	BRUNO DE CASTILHOS FORTUNATTI	2006-06-04	838056442	13901232825	\N	(11)8792-8557	(54)3291-1096	\N	Ensino Técnico Completo	\N	Ensino Técnico Incompleto	5 Km	2021-01-19	4	1	6	5	2021-08-30 00:45:40.817298
627	748	ARTHUR DOS SANTOS	2006-01-05	600800383	67795095731	\N	(54)3291-2974	(54)9907-0915	\N	Ensino Técnico Completo	\N	Ensino fundamental Completo	15 Km	2021-01-12	4	1	6	3	2021-08-30 00:45:40.817298
628	750	ISABEL BORGES VIEIRA	2006-02-28	680678987	48942973817	\N	\N	(54)3291-1808	\N	Ensino superior Completo	\N	Ensino Técnico Incompleto	10 Km	2021-01-22	2	2	4	3	2021-08-30 00:45:40.817298
629	764	GUSTAVO DE LIMA LOURENÇO	2006-05-29	164936635	66772582538	\N	(54)9160-3781	(54)9607-4279	\N	Ensino Técnico Incompleto	\N	Ensino médio Incomplento	5 Km	2021-01-26	1	1	6	3	2021-08-30 00:45:40.817298
630	792	AMANDA CIOATA SOTORIVA	2006-11-12	242483025	52708072046	\N	(54)9955-2882	(54)9981-9740	\N	Ensino fundamental Incomplento	\N	Ensino médio Completo	1 Km	2021-01-21	3	2	6	2	2021-08-30 00:45:40.817298
631	814	JULIA BENATTO RENOSTO	2006-04-01	909725804	71153506325	\N	(54)9985-3002	(54)3291-2506	\N	Ensino Técnico Completo	\N	Ensino Técnico Completo	1 Km	2021-01-26	1	2	6	5	2021-08-30 00:45:40.817298
632	822	FABIANO VARGAS DA ROSA	2006-05-14	287904701	12646984899	\N	(54)9658-1833	(54)3291-6459	\N	Ensino superior Completo	\N	Ensino médio Incomplento	15 Km	2021-01-27	3	1	6	2	2021-08-30 00:45:40.817298
633	829	MARIA VITÓRIA BALARDIN SPULDARO	2006-03-30	487769305	68038167805	\N	(54)9621-7658	(54)3291-1973	\N	Ensino médio Incomplento	\N	Ensino fundamental Completo	20 Km	2021-01-19	4	2	1	3	2021-08-30 00:45:40.817298
634	847	JULIANA GENTIL	2006-06-03	680084326	38041150525	\N	(54)9672-6806	(54)3291-3431	\N	Ensino superior Completo	\N	Ensino Técnico Incompleto	15 Km	2021-01-21	4	2	6	3	2021-08-30 00:45:40.817298
635	855	RENIELE DA SILVA VANIN	2006-05-24	247501305	96645692302	\N	(54)9195-1578	(54)8412-0561	\N	Ensino fundamental Incomplento	\N	Ensino Técnico Incompleto	15 Km	2021-02-04	4	2	6	5	2021-08-30 00:45:40.817298
636	880	LIDUVINA ZANARDI GUERRA	2006-08-03	810460883	78898583335	\N	(54)3291-3307	(54)9213-7722	\N	Ensino fundamental Incomplento	\N	Ensino superior Completo	5 Km	2021-02-01	2	2	6	3	2021-08-30 00:45:40.817298
637	884	MARI HELENA BERNARDI	2006-03-27	464299898	48328818853	\N	(54)3291-4084	(54)9194-1270	\N	Ensino médio Incomplento	\N	Ensino Técnico Completo	1 Km	2021-01-27	4	2	6	3	2021-08-30 00:45:40.817298
638	896	REMI FRANCISCO PIROLI	2006-05-26	361286124	96917380314	\N	(54)3291-2151	(54)9225-8415	\N	Ensino Técnico Incompleto	\N	Ensino Técnico Completo	15 Km	2021-02-01	3	1	6	2	2021-08-30 00:45:40.817298
639	900	IVANETE TEREZINHA RIZZON	2006-12-28	817365831	59281488198	\N	(54)9908-4079	(54)9189-8057	\N	Ensino fundamental Completo	\N	Ensino superior Completo	10 Km	2021-01-27	1	2	6	4	2021-08-30 00:45:40.817298
640	902	GUILHERME BOLZAN VERONESE	2006-03-23	725660186	61696425373	\N	(54)9910-0912	(54)9637-5726	\N	Ensino Técnico Incompleto	\N	Ensino Técnico Incompleto	10 Km	2021-02-02	4	1	6	3	2021-08-30 00:45:40.817298
641	956	JULISANDRA LORANDI	2006-04-09	411420338	12994245732	\N	32914121	(54)3291-6011	\N	Ensino médio Completo	\N	Ensino superior Completo	30 Km	2021-01-22	3	2	6	5	2021-08-30 00:45:40.817298
642	965	ISABEL DA CRUZ	2006-04-09	649014386	53137163594	\N	(54)9131-8737	(54)9914-4888	\N	Ensino médio Incomplento	\N	Ensino fundamental Incomplento	5 Km	2021-02-05	1	2	6	5	2021-08-30 00:45:40.817298
643	969	RODRIGO RENOSTO	2006-03-19	434491134	58092702371	\N	32914203	(54)3291-5062	\N	Ensino Técnico Completo	\N	Ensino fundamental Incomplento	1 Km	2021-01-28	5	1	6	3	2021-08-30 00:45:40.817298
644	973	ADRIEL CARDOSO DE OLIVEIRA	2006-02-02	589875245	79133072634	\N	32912679	(54)9615-5270	\N	Ensino Técnico Incompleto	\N	Ensino Técnico Incompleto	10 Km	2021-02-03	4	2	6	2	2021-08-30 00:45:40.817298
645	983	EDUARDO ASCARI	2006-03-31	250880741	76691251290	\N	(54)9999-1348	(54)3291-4321	\N	Ensino fundamental Incomplento	\N	Ensino superior Completo	1 Km	2021-01-23	3	1	6	3	2021-08-30 00:45:40.817298
646	5	LUANA TELES PEREIRA	2005-07-24	342928775	79513292201	\N	(54)9996-9196	(54)9184-2962	\N	Ensino fundamental Completo	\N	Ensino superior Incompleto	5 Km	2021-01-13	1	2	6	5	2021-08-30 00:45:40.817298
647	9	DANIELE BENATTO	2005-08-12	904985699	49852284587	\N	3291-7258	(54)9980-8685	\N	Ensino superior Incompleto	\N	Ensino Técnico Incompleto	10 Km	2021-02-03	1	2	6	5	2021-08-30 00:45:40.817298
648	18	ELAINE DE OLIVEIRA MATTOS	2005-07-28	353974552	51271113637	\N	32801114	(54)9606-9226	\N	Ensino fundamental Incomplento	\N	Ensino superior Completo	15 Km	2021-01-26	3	2	1	3	2021-08-30 00:45:40.817298
649	20	MARILI BOGO	2005-05-31	292191392	12740027382	\N	(54)3291-2884	(54)9907-1712	\N	Ensino médio Completo	\N	Ensino fundamental Incomplento	20 Km	2021-01-24	3	2	6	5	2021-08-30 00:45:40.817298
650	27	CARLOS ALBERTO ARMILIATO	2005-04-14	842845224	14551817212	\N	(54)3291-7260	(54)9914-6053	\N	Ensino Técnico Incompleto	\N	Ensino Técnico Completo	5 Km	2021-01-30	1	1	1	2	2021-08-30 00:45:40.817298
651	32	MAICON TRINDADE DUARTE	2005-08-18	851594656	74578220366	\N	3291-4905	(54)9632-5629	\N	Ensino Técnico Completo	\N	Ensino fundamental Completo	15 Km	2021-01-19	4	1	6	5	2021-08-30 00:45:40.817298
652	60	SANDRA MARIA GASPAROTTO BENATO	2005-09-17	579396059	14115141128	\N	(54)3291-2695	91065177	\N	Ensino fundamental Incomplento	\N	Ensino superior Incompleto	20 Km	2021-01-18	5	2	6	2	2021-08-30 00:45:40.817298
653	63	FERNANDO RIBEIRO	2005-02-03	927013056	18490449317	\N	(54)9928-2059	3291-4391	\N	Ensino fundamental Completo	\N	Ensino médio Completo	15 Km	2021-01-11	2	1	6	5	2021-08-30 00:45:40.817298
654	94	NEURA MARI ASCARI DA LUZ	2005-12-08	235888032	30827226684	\N	(54)8156-9530	32912984	\N	Ensino fundamental Completo	\N	Ensino fundamental Incomplento	15 Km	2021-02-01	4	2	6	1	2021-08-30 00:45:40.817298
655	97	MARLENE SIDNEI RICARDO CASAL	2005-06-20	269038164	26999981424	\N	(54)3291-2554	3291-3418	\N	Ensino superior Completo	\N	Ensino médio Incomplento	10 Km	2021-01-30	1	2	6	4	2021-08-30 00:45:40.817298
656	98	ADELAR JUNIOR CANALE	2005-02-28	121556130	21062873094	\N	(54)3291-1786	32913073	\N	Ensino fundamental Completo	\N	Ensino médio Incomplento	10 Km	2021-02-07	1	1	6	5	2021-08-30 00:45:40.817298
657	140	ANDERSON DA SILVA OLIVEIRA	2005-06-20	163992425	83815932114	\N	(54)9111-2416	(54)3291-1103	\N	Ensino médio Incomplento	\N	Ensino fundamental Completo	1 Km	2021-02-05	1	1	6	3	2021-08-30 00:45:40.817298
658	152	SUELEN RODRIGUES DE OLIVEIRA	2005-06-05	194892794	42438798702	\N	(54)9608-4250	(54)3291-4603	\N	Ensino Técnico Incompleto	\N	Ensino médio Completo	15 Km	2021-01-10	2	2	6	2	2021-08-30 00:45:40.817298
659	197	JOÃO PEDRO SCODRO MICHELON	2005-09-13	491378575	83566039658	\N	(54)9112-1100	(54)3291-4961	\N	Ensino Técnico Completo	\N	Ensino superior Incompleto	15 Km	2021-01-23	1	1	6	2	2021-08-30 00:45:40.817298
660	222	MICKEL DE LIMA	2005-05-14	365125145	24090786774	\N	(54)3291-1867	(54)3291-5304	\N	Ensino fundamental Completo	\N	Ensino fundamental Incomplento	5 Km	2021-01-17	2	1	3	1	2021-08-30 00:45:40.817298
661	274	MARLON DAROS	2005-01-28	446440553	74909886182	\N	(54)9909-8040	91788920	\N	Ensino fundamental Completo	\N	Ensino médio Completo	20 Km	2021-01-21	5	1	6	2	2021-08-30 00:45:40.817298
662	307	VAGNER DALAGNO	2005-04-29	143631216	33884505624	\N	(54)9216-0867	(54)9157-5066	\N	Ensino superior Completo	\N	Ensino Técnico Completo	1 Km	2021-01-16	4	1	6	5	2021-08-30 00:45:40.817298
663	325	ROSSELI MÜLLER DA SILVA	2005-10-20	277245325	56969767100	\N	(54)8147-7848	(54)3291-9009	\N	Ensino Técnico Incompleto	\N	Ensino superior Completo	15 Km	2021-01-13	1	2	6	3	2021-08-30 00:45:40.817298
664	339	NICOLE CECATTO FONTANA DINIZ	2005-01-08	973806770	21222601726	\N	(54)9960-5967	(54)9667-8063	\N	Ensino fundamental Completo	\N	Ensino Técnico Incompleto	30 Km	2021-01-19	3	2	6	2	2021-08-30 00:45:40.817298
665	352	CRISTIAN DA CRUZ	2005-04-24	501321687	94423686042	\N	(11)1111-1111	(54)3291-3554	\N	Ensino superior Incompleto	\N	Ensino Técnico Incompleto	10 Km	2021-01-21	5	1	6	5	2021-08-30 00:45:40.817298
666	360	MICAEL GUZZON	2005-04-10	178745180	88250774238	\N	(54)9182-8976	(54)9166-1393	\N	Ensino fundamental Incomplento	\N	Ensino fundamental Incomplento	30 Km	2021-01-28	4	1	6	5	2021-08-30 00:45:40.817298
667	378	LEIVA APARECIDA CASTIHOS DOS REIS	2005-11-02	520034482	30745372841	\N	(54)9140-9252	(54)9944-8972	\N	Ensino fundamental Incomplento	\N	Ensino Técnico Completo	1 Km	2021-01-12	3	2	6	1	2021-08-30 00:45:40.817298
668	398	ANA CRISTINA PEGORARO	2005-07-24	268327604	50244317064	\N	(54)9109-7141	(54)9949-5834	\N	Ensino superior Incompleto	\N	Ensino médio Completo	5 Km	2021-02-05	5	2	6	3	2021-08-30 00:45:40.817298
669	403	YURI POLO	2005-05-25	323865971	46963741879	\N	(54)9934-8889	(54)9642-8090	\N	Ensino Técnico Completo	\N	Ensino fundamental Incomplento	5 Km	2021-02-05	4	1	6	2	2021-08-30 00:45:40.817298
670	412	CARINA FEREEIRA DE OLIVEIRA	2005-11-15	817696523	83822988065	\N	(99)8341-54	(54)9167-7137	\N	Ensino Técnico Completo	\N	Ensino médio Incomplento	1 Km	2021-01-23	1	2	6	3	2021-08-30 00:45:40.817298
671	456	GLAUCIA FRANCISCHINI	2005-09-15	627302025	59400094861	\N	(54)9995-9215	32911310	\N	Ensino médio Completo	\N	Ensino fundamental Completo	15 Km	2021-01-11	1	2	6	2	2021-08-30 00:45:40.817298
672	466	RODRIGO CIOATO PASINATO	2005-08-08	479776656	80487141445	\N	(11)1111-1111	(54)3291-3404	\N	Ensino médio Incomplento	\N	Ensino Técnico Incompleto	5 Km	2021-01-21	1	1	6	5	2021-08-30 00:45:40.817298
673	467	GABRIEL COELHO DOS SANTOS	2005-01-11	861999652	54755694480	\N	(11)1111-1111	(54)9945-1620	\N	Ensino superior Completo	\N	Ensino superior Incompleto	30 Km	2021-02-06	3	2	6	5	2021-08-30 00:45:40.817298
674	482	ELIZABETE DAL LAGO	2005-02-08	438112773	88982526563	\N	(54)9180-9156	(54)9119-0744	\N	Ensino superior Completo	\N	Ensino médio Completo	15 Km	2021-01-11	4	2	6	2	2021-08-30 00:45:40.817298
675	507	FERNABNDO LUIZ REC	2005-07-08	453502611	80971879743	\N	(54)9969-1537	(54)9603-5690	\N	Ensino superior Completo	\N	Ensino médio Incomplento	50 Km	2021-01-19	5	1	6	2	2021-08-30 00:45:40.817298
676	534	JOCELAINE PELIZZARI	2005-12-20	409779219	28022677089	\N	(54)9623-7510	(54)3291-3696	\N	Ensino superior Incompleto	\N	Ensino fundamental Completo	5 Km	2021-02-07	4	2	6	5	2021-08-30 00:45:40.817298
677	562	LAIS CASTAGNA BREZOLIN	2005-01-23	376231652	10047962152	\N	(54)3291-1202	(54)9926-8721	\N	Ensino médio Incomplento	\N	Ensino superior Incompleto	20 Km	2021-01-13	4	2	6	5	2021-08-30 00:45:40.817298
678	568	ELIAS FELICIO	2005-12-03	562652012	16403576101	\N	(54)9909-5082	(54)9968-4857	\N	Ensino superior Incompleto	\N	Ensino médio Completo	5 Km	2021-01-19	2	1	6	5	2021-08-30 00:45:40.817298
679	572	STEFANIE CARVALHO PEREIRA	2005-08-29	787176583	77593498081	\N	(54)3291-2420	(54)9122-5141	\N	Ensino fundamental Completo	\N	Ensino superior Completo	1 Km	2021-01-14	4	2	6	2	2021-08-30 00:45:40.817298
680	574	GERMANO CASTILHOS DOS REIS	2005-12-27	460104479	58951172418	\N	(54)9983-2265	(54)9195-6246	\N	Ensino Técnico Completo	\N	Ensino fundamental Completo	30 Km	2021-01-22	1	1	6	4	2021-08-30 00:45:40.817298
681	596	PALOMA DA ROSA NUNES	2005-03-14	667852548	83237992819	\N	(54)9639-8548	(54)3291-2868	\N	Ensino médio Completo	\N	Ensino médio Completo	15 Km	2021-02-07	1	2	6	3	2021-08-30 00:45:40.817298
682	602	LUANA VIEIRA BOEIRA	2005-04-22	424660035	14056979696	\N	(54)3291-7479	(54)9104-4525	\N	Ensino superior Completo	\N	Ensino fundamental Completo	10 Km	2021-01-21	5	2	6	2	2021-08-30 00:45:40.817298
683	603	AMANDA DE MORAIS FOCHESATO	2005-09-28	470478740	80810385015	\N	(54)9664-5107	(54)9106-5307	\N	Ensino fundamental Incomplento	\N	Ensino médio Incomplento	1 Km	2021-01-24	1	2	6	2	2021-08-30 00:45:40.817298
684	629	 ROSELENE DOS PASSOS DOS SANTOS	2005-08-10	109112106	23627447656	\N	(54)9161-3327	(54)9988-0569	\N	Ensino médio Incomplento	\N	Ensino superior Completo	15 Km	2021-01-24	2	2	6	5	2021-08-30 00:45:40.817298
685	663	 CRISTIANE RIBEIRO DE PAULA	2005-04-18	941438959	19652201552	\N	\N	(54)3235-1167	\N	Ensino fundamental Completo	\N	Ensino médio Incomplento	15 Km	2021-01-27	5	2	6	3	2021-08-30 00:45:40.817298
686	668	 LEONARDO RECH POLETO	2005-03-13	540797896	59503012113	\N	(54)9949-4410	(54)9987-9221	\N	Ensino Técnico Completo	\N	Ensino superior Incompleto	20 Km	2021-01-22	4	1	6	4	2021-08-30 00:45:40.817298
687	716	VANESSA SALVADOR CASTAGNA	2005-01-06	326141828	61846247998	\N	(54)3291-2974	(54)9945-2629	\N	Ensino médio Incomplento	\N	Ensino fundamental Incomplento	30 Km	2021-01-15	1	2	6	2	2021-08-30 00:45:40.817298
688	765	GABRIEL CASSOL	2005-11-22	581206231	97574386897	\N	(11)1111-1111	(54)9641-3822	\N	Ensino fundamental Incomplento	\N	Ensino médio Incomplento	15 Km	2021-02-02	4	1	6	2	2021-08-30 00:45:40.817298
689	802	LUANA MAGRIN	2005-05-03	363532684	34150392960	\N	(54)9202-7544	(54)9621-8371	\N	Ensino médio Incomplento	\N	Ensino fundamental Completo	1 Km	2021-01-31	5	2	6	2	2021-08-30 00:45:40.817298
690	806	MARCOS VINICIUS RASADOR	2005-08-29	467769525	35041005001	\N	(54)9972-6872	(54)9193-5093	\N	Ensino superior Incompleto	\N	Ensino médio Incomplento	20 Km	2021-01-27	1	1	6	3	2021-08-30 00:45:40.817298
691	823	ERIKA ZANARDI PARIZOTTO	2005-04-24	875967626	83401304256	\N	(54)9965-4045	(54)3291-2604	\N	Ensino Técnico Completo	\N	Ensino superior Completo	20 Km	2021-02-06	1	2	6	3	2021-08-30 00:45:40.817298
692	828	ANA LUCIA DOS SANTOS	2005-05-20	791043882	93218044755	\N	(54)9157-6488	(54)3291-7409	\N	Ensino superior Completo	\N	Ensino fundamental Completo	10 Km	2021-01-30	1	2	1	3	2021-08-30 00:45:40.817298
693	850	CATIA POSSO	2005-06-21	971310686	67364766998	\N	(11)1111-1111	(54)9992-5551	\N	Ensino Técnico Completo	\N	Ensino superior Completo	20 Km	2021-01-11	4	2	6	2	2021-08-30 00:45:40.817298
694	868	MARIA DA SILVA SANTOS	2005-03-04	369349781	54524940256	\N	(54)9958-5735	(54)3291-1258	\N	Ensino Técnico Incompleto	\N	Ensino médio Incomplento	10 Km	2021-01-24	4	2	6	5	2021-08-30 00:45:40.817298
696	893	PRISCILA VARGAS PARIZOTTO	2005-02-08	868408402	61236754446	\N	(54)9193-9693	(54)8134-8881	\N	Ensino fundamental Incomplento	\N	Ensino superior Incompleto	10 Km	2021-02-03	1	2	6	5	2021-08-30 00:45:40.817298
697	930	BRUNA DAL'LAGO	2005-11-04	733684312	37712597146	\N	(54)9949-4018	(54)3267-8259	\N	Ensino superior Completo	\N	Ensino Técnico Incompleto	10 Km	2021-01-17	1	2	6	3	2021-08-30 00:45:40.817298
698	936	CAROLINE BOEIRA DA SILVA	2005-12-08	898410072	84124265478	\N	(54)9122-6535	(54)9134-5868	\N	Ensino médio Incomplento	\N	Ensino Técnico Completo	30 Km	2021-01-14	1	2	6	2	2021-08-30 00:45:40.817298
699	942	SUZETE SOLDERA CECHINATO	2005-02-02	717844370	40065994407	\N	(54)9676-3434	(54)9103-6425	\N	Ensino fundamental Completo	\N	Ensino médio Completo	5 Km	2021-02-05	3	2	4	5	2021-08-30 00:45:40.817298
700	984	PAULINE GOMES DE BITENCOURT	2005-05-07	249374816	62888760444	\N	3291,1033	(54)9158-6369	\N	Ensino médio Incomplento	\N	Ensino Técnico Completo	10 Km	2021-01-30	1	2	6	2	2021-08-30 00:45:40.817298
701	3	LAIS DE AZEVEDO	2003-01-16	606335377	41289660422	\N	(54)3280-1178	(54)3291-3386	\N	Ensino superior Completo	\N	Ensino superior Completo	1 Km	2021-01-11	1	2	6	5	2021-08-30 00:45:40.817298
702	4	ESTÉFANI BOFFE DA COSTA	2004-10-19	639935821	25785291118	\N	(54)3291-1286	(54)9113-3037	\N	Ensino Técnico Completo	\N	Ensino superior Incompleto	15 Km	2021-01-20	4	2	6	5	2021-08-30 00:45:40.817298
703	8	GESSICA RASADOR	2002-03-01	723650622	84191055865	\N	(54)9694-8205	\N	\N	Ensino Técnico Completo	\N	Ensino médio Incomplento	30 Km	2021-01-12	1	2	6	3	2021-08-30 00:45:40.817298
704	11	ALINE FABBRO	2004-09-08	356448020	85784240977	\N	91821366	(54)3267-8052	\N	Ensino superior Completo	\N	Ensino médio Incomplento	5 Km	2021-01-31	5	2	6	3	2021-08-30 00:45:40.817298
705	13	MARINES APARECIDA CHINELATO	2003-01-10	581264387	49335653810	\N	(54)3291-1056	\N	\N	Ensino médio Completo	\N	Ensino fundamental Completo	1 Km	2021-02-07	4	2	6	3	2021-08-30 00:45:40.817298
706	21	TEREZINHA MACHADO DA SILVEIRA	2003-03-08	536941715	97229290866	\N	(54)3291-4462	(54)9688-1394	\N	Ensino médio Incomplento	\N	Ensino médio Incomplento	1 Km	2021-01-27	2	2	6	3	2021-08-30 00:45:40.817298
707	22	BERNARDO TOLARDO	2002-11-29	711636694	63140247121	\N	(54)3291-3572	(54)3235-5133	\N	Ensino Técnico Incompleto	\N	Ensino fundamental Incomplento	5 Km	2021-01-17	2	1	6	5	2021-08-30 00:45:40.817298
708	23	SARAH PEREIRA	2000-10-27	129056665	54943366026	\N	(54)9647-9642	(54)3267-8001	\N	Ensino fundamental Completo	\N	Ensino Técnico Completo	5 Km	2021-01-30	5	2	6	5	2021-08-30 00:45:40.817298
709	25	MARCO ANTONIO G. CIOATO	2000-09-12	287802809	84568420322	\N	(54)9188-2631	(54)9995-4043	\N	Ensino fundamental Completo	\N	Ensino médio Incomplento	5 Km	2021-01-11	1	1	6	3	2021-08-30 00:45:40.817298
710	33	MARLENE GORETTI CASSÃO DALSOTTO	2003-09-25	662440567	41923435056	\N	3291-3380	(54)9706-6113	\N	Ensino superior Incompleto	\N	Ensino superior Completo	15 Km	2021-01-27	5	2	6	5	2021-08-30 00:45:40.817298
711	35	MARINES SCARMIN SPIGOLON	2004-04-29	202471726	94427422255	\N	99299628	(54)3291-5340	\N	Ensino médio Completo	\N	Ensino Técnico Incompleto	5 Km	2021-02-08	3	2	6	2	2021-08-30 00:45:40.817298
712	36	LENIR EVA FONGARO	2002-09-04	961734399	72110296266	\N	(54)9126-1172	(54)9187-2328	\N	Ensino médio Completo	\N	Ensino superior Completo	1 Km	2021-02-01	5	1	1	2	2021-08-30 00:45:40.817298
713	37	ANDRÉ BRESOLIN	2003-06-11	229333010	80947153464	\N	(54)3291-1406	(55)9911-8386	\N	Ensino fundamental Completo	\N	Ensino fundamental Incomplento	10 Km	2021-01-21	5	1	6	5	2021-08-30 00:45:40.817298
714	39	LEONARDO GOBI	2002-04-09	959209566	54471590969	\N	(54)3291-4264	96087998	\N	Ensino Técnico Completo	\N	Ensino Técnico Completo	5 Km	2021-02-04	2	1	6	5	2021-08-30 00:45:40.817298
715	44	FABIANO REZER	2002-10-10	522771299	64097909430	\N	(54)9152-5666	3291-5115	\N	Ensino Técnico Incompleto	\N	Ensino Técnico Completo	30 Km	2021-01-11	1	1	6	3	2021-08-30 00:45:40.817298
716	45	ELIANE MASCARELLO BALARDIN	2001-01-11	983354446	46333000288	\N	(54)3291-9162	91103885	\N	Ensino Técnico Incompleto	\N	Ensino fundamental Incomplento	15 Km	2021-01-30	5	2	6	3	2021-08-30 00:45:40.817298
717	51	LUCAS CAMPOS DA SILVA	2004-03-15	473017944	10250803153	\N	3291-4124	32913990	\N	Ensino fundamental Completo	\N	Ensino superior Incompleto	15 Km	2021-02-04	4	1	6	5	2021-08-30 00:45:40.817298
718	52	MARCOS FELIPE ZAMPIROLO	2001-12-07	489682018	78890528444	\N	(54)3291-1643	96042521	\N	Ensino superior Incompleto	\N	Ensino Técnico Incompleto	15 Km	2021-01-21	4	1	6	2	2021-08-30 00:45:40.817298
719	53	GABRIEL CASAROTTO	2000-12-26	234757356	78939663422	\N	(54)3291-9049	(54)9964-0807	\N	Ensino Técnico Completo	\N	Ensino fundamental Incomplento	5 Km	2021-01-24	1	1	6	3	2021-08-30 00:45:40.817298
720	57	ENZO BALLARDIN ARCARO	2002-06-24	680493853	77685748363	\N	(54)3291-2359	3291-7253	\N	Ensino fundamental Completo	\N	Ensino médio Completo	15 Km	2021-01-13	3	1	6	5	2021-08-30 00:45:40.817298
721	61	SALETE FORTUNATTI TORRESAN	2000-11-30	708561557	64986066985	\N	(54)3291-3842	(54)3291-1011	\N	Ensino médio Incomplento	\N	Ensino fundamental Completo	5 Km	2021-02-04	4	2	6	5	2021-08-30 00:45:40.817298
722	64	CLEIDE MARTA FRANCESCHINI	2004-03-07	306174661	67272111047	\N	(54)3291-1654	32678109	\N	Ensino médio Incomplento	\N	Ensino fundamental Completo	15 Km	2021-02-08	5	2	6	2	2021-08-30 00:45:40.817298
723	78	WILSON ALVES PEREIRA	2000-05-01	805819503	73147496120	\N	(54)9941-5564	32914402	\N	Ensino médio Completo	\N	Ensino fundamental Incomplento	1 Km	2021-01-26	3	1	6	2	2021-08-30 00:45:40.817298
724	85	FELIPE CAPELETTI MICHELLON	2004-07-28	944017411	78822290779	\N	(54)9124-1057	(54)9159-4399	\N	Ensino Técnico Incompleto	\N	Ensino fundamental Incomplento	15 Km	2021-01-21	1	1	6	5	2021-08-30 00:45:40.817298
725	87	EDUARDO DA ROSA FONGARO	2001-06-16	295352157	95156921473	\N	(54)9910-8055	3291-2731	\N	Ensino fundamental Incomplento	\N	Ensino fundamental Incomplento	1 Km	2021-01-30	1	1	6	4	2021-08-30 00:45:40.817298
726	89	ROSANE P. GALLIO BAZZI	2003-09-12	375036328	35546507941	\N	(54)3291-2227	32914402	\N	Ensino fundamental Incomplento	\N	Ensino fundamental Completo	50 Km	2021-01-21	1	2	6	5	2021-08-30 00:45:40.817298
727	92	ARILDE MARIA CIOATO MASCARELLO	2001-08-04	562631193	13086249305	\N	(54)9148-8737	91826816	\N	Ensino Técnico Completo	\N	Ensino médio Completo	1 Km	2021-01-17	4	2	6	3	2021-08-30 00:45:40.817298
728	93	JOSE ANTONIO LOPES	2002-12-24	489021386	14123442489	\N	(54)3291-1120	32912991	\N	Ensino fundamental Completo	\N	Ensino médio Completo	50 Km	2021-01-29	3	1	6	5	2021-08-30 00:45:40.817298
729	95	VALDOIR VILMAR PELLIZZONI	2002-10-14	813310897	31472635861	\N	(54)9641-1225	91628397	\N	Ensino Técnico Completo	\N	Ensino fundamental Completo	1 Km	2021-01-29	1	1	6	5	2021-08-30 00:45:40.817298
730	104	BRUNA BONELLA	2001-09-27	177197799	12783866823	\N	(54)3291-8200	(54)3291-3208	\N	Ensino médio Completo	\N	Ensino Técnico Incompleto	10 Km	2021-02-04	5	2	6	5	2021-08-30 00:45:40.817298
731	108	ROBINSON CLEI RIBEIRO	2003-05-14	985328330	42546573659	\N	(54)3291-9848	(54)9991-7097	\N	Ensino médio Completo	\N	Ensino fundamental Incomplento	1 Km	2021-01-30	3	1	6	3	2021-08-30 00:45:40.817298
732	113	ANDERSON MARQUES BOEIRA SANTOS	2000-12-23	868321220	42823656114	\N	(54)3291-1113	32912180	\N	Ensino fundamental Incomplento	\N	Ensino superior Completo	1 Km	2021-01-22	4	1	6	2	2021-08-30 00:45:40.817298
733	114	ANDREZA RIZZON	2002-06-04	849325015	55074067917	\N	(54)3291-4096	32913194	\N	Ensino médio Completo	\N	Ensino médio Completo	30 Km	2021-01-18	1	2	6	2	2021-08-30 00:45:40.817298
734	115	ROSANE SIMIONI	2004-04-06	574985300	79523872520	\N	(54)3291-9802	(54)9156-3700	\N	Ensino superior Completo	\N	Ensino fundamental Incomplento	1 Km	2021-01-15	1	2	6	5	2021-08-30 00:45:40.817298
735	118	ROSVALDO MARIA BONI	2000-12-31	825367777	66596889291	\N	(54)9146-4854	(54)3291-3886	\N	Ensino superior Incompleto	\N	Ensino superior Incompleto	1 Km	2021-01-16	5	1	6	2	2021-08-30 00:45:40.817298
736	119	ROSELEI  MODESTO CARARO BONI	2000-05-05	299148987	65703663246	\N	(54)9605-2397	(54)9200-3892	\N	Ensino fundamental Completo	\N	Ensino médio Completo	10 Km	2021-01-21	5	2	6	3	2021-08-30 00:45:40.817298
737	120	SEBASTIÃO OSNI MACHADO	2001-07-25	979500173	24150807561	\N	(54)9988-3469	(54)3291-5096	\N	Ensino médio Completo	\N	Ensino fundamental Incomplento	5 Km	2021-01-16	1	1	6	1	2021-08-30 00:45:40.817298
738	125	ILZA SUZANA CORSO	2002-07-14	796571314	24942280705	\N	(54)3291-3402	32911427	\N	Ensino superior Incompleto	\N	Ensino médio Completo	5 Km	2021-01-31	4	2	6	5	2021-08-30 00:45:40.817298
739	129	DEOVACIR CHINELATO	2004-11-28	497020533	82820897238	\N	(54)9909-5012	(54)3291-3563	\N	Ensino médio Incomplento	\N	Ensino médio Completo	5 Km	2021-01-28	5	1	6	3	2021-08-30 00:45:40.817298
740	133	RODRIGO SUSIN PELLIZZARI	2003-05-31	836986009	86543671301	\N	(54)3291-5245	(54)3291-1627	\N	Ensino superior Incompleto	\N	Ensino médio Completo	1 Km	2021-01-22	1	1	6	3	2021-08-30 00:45:40.817298
741	136	MARIA EDUARDA GULART	2003-05-12	842721228	20198324730	\N	(54)9920-8653	3291-5321	\N	Ensino médio Incomplento	\N	Ensino superior Completo	5 Km	2021-02-01	2	2	4	2	2021-08-30 00:45:40.817298
742	138	AMANDA ALMEIDA RAMOS	2004-03-15	821425377	73888808738	\N	(54)9131-7241	(54)9634-3915	\N	Ensino fundamental Incomplento	\N	Ensino médio Completo	20 Km	2021-02-05	4	2	6	3	2021-08-30 00:45:40.817298
743	145	MARIA CLARA SLONGO	2004-03-02	326391283	66291680737	\N	(54)9236-3617	(54)3291-2638	\N	Ensino médio Completo	\N	Ensino médio Completo	30 Km	2021-01-29	4	2	6	3	2021-08-30 00:45:40.817298
744	155	VITORIA LEMOS TREIN	2003-04-05	154863521	42087066484	\N	(54)9923-0905	(54)9125-1832	\N	Ensino médio Completo	\N	Ensino superior Incompleto	1 Km	2021-02-05	1	2	6	3	2021-08-30 00:45:40.817298
745	158	MARCOS VINÍCIUS DE OLIVEIRA	2001-11-19	983654539	46514008979	\N	(54)9134-3295	(54)9929-6494	\N	Ensino Técnico Completo	\N	Ensino fundamental Incomplento	5 Km	2021-01-31	2	1	3	3	2021-08-30 00:45:40.817298
746	160	LEONARDO BIANCHI LAZZARETTI	2002-07-03	638330239	13077886108	\N	(54)9998-4921	(54)9661-6315	\N	Ensino Técnico Completo	\N	Ensino superior Incompleto	15 Km	2021-01-20	1	1	6	3	2021-08-30 00:45:40.817298
747	162	NAURA PRATES PERES	2000-12-03	316825472	57178888538	\N	(54)9927-0238	(54)3291-1063	\N	Ensino superior Completo	\N	Ensino Técnico Incompleto	20 Km	2021-01-12	4	2	6	5	2021-08-30 00:45:40.817298
748	167	MAURICIO PARIZZOTTO	2001-09-22	742771068	89320061279	\N	(54)9158-7847	(54)3291-2575	\N	Ensino médio Completo	\N	Ensino Técnico Incompleto	10 Km	2021-01-21	4	1	6	3	2021-08-30 00:45:40.817298
749	169	FRANCIELE ROSELI DA SILVA	2004-08-02	341091689	37530411634	\N	(54)9966-5301	32351603	\N	Ensino médio Completo	\N	Ensino superior Completo	20 Km	2021-02-07	1	2	6	3	2021-08-30 00:45:40.817298
750	170	WILLIAN LEANDRO COUTINHO	2002-05-08	513246268	36265141542	\N	(54)3291-4764	(54)9114-7626	\N	Ensino médio Incomplento	\N	Ensino fundamental Incomplento	15 Km	2021-01-14	1	1	6	3	2021-08-30 00:45:40.817298
751	173	LURDES SCAIN FABRO	2000-02-15	305546815	75187475098	\N	(54)9173-2696	32919071	\N	Ensino Técnico Completo	\N	Ensino médio Completo	5 Km	2021-01-29	1	2	6	4	2021-08-30 00:45:40.817298
752	176	GECI DE FATIMA ZAITZ DA SILVA	2000-12-13	604416284	46411497432	\N	(54)9619-7187	91131103	\N	Ensino fundamental Incomplento	\N	Ensino médio Completo	15 Km	2021-01-10	1	2	6	2	2021-08-30 00:45:40.817298
753	184	ANGELA LOPES BONELLA	2001-05-19	170012725	19345671534	\N	(54)9672-2421	(54)9144-3398	\N	Ensino fundamental Incomplento	\N	Ensino superior Completo	1 Km	2021-01-15	3	2	6	3	2021-08-30 00:45:40.817298
754	188	MARIA EMILIA SOLDATELLI BORGHETTI	2001-02-17	416392493	16816291324	\N	(54)9672-2421	32912729	\N	Ensino superior Incompleto	\N	Ensino superior Completo	15 Km	2021-01-18	4	2	6	2	2021-08-30 00:45:40.817298
755	189	NALANDA DE MARAFIGO	2000-09-09	254817789	83166516607	\N	(54)9143-1175	3291-3023	\N	Ensino Técnico Incompleto	\N	Ensino fundamental Incomplento	5 Km	2021-01-23	4	2	6	5	2021-08-30 00:45:40.817298
756	191	LEONARDO FONGARO PEZZI	2000-05-28	218294777	43538960805	\N	(54)9984-9222	91605865	\N	Ensino Técnico Completo	\N	Ensino fundamental Incomplento	5 Km	2021-01-13	3	1	6	3	2021-08-30 00:45:40.817298
757	192	EMANUEL RICARDO FERNANDES	2002-10-18	459270198	29713165911	\N	(54)9112-8021	32916003	\N	Ensino Técnico Completo	\N	Ensino Técnico Incompleto	15 Km	2021-01-30	4	1	4	3	2021-08-30 00:45:40.817298
758	194	ROGER LUIZ DE AZEVEDO	2001-05-09	880194910	40803234295	\N	(54)9912-3405	32913766	\N	Ensino superior Completo	\N	Ensino superior Completo	1 Km	2021-01-17	2	1	4	5	2021-08-30 00:45:40.817298
759	198	MARIA CRISTINA SCODRO MICHELON	2002-02-11	622548976	34488343640	\N	(54)9711-0222	(54)3291-2527	\N	Ensino médio Incomplento	\N	Ensino médio Completo	1 Km	2021-01-27	4	2	6	5	2021-08-30 00:45:40.817298
760	202	GUSTAVO ASCARI STEDILE	2004-02-17	723015365	26774344798	\N	(54)9646-2969	(54)3291-4425	\N	Ensino médio Incomplento	\N	Ensino fundamental Completo	20 Km	2021-01-11	1	1	6	1	2021-08-30 00:45:40.817298
761	203	PEDRO ASCARI PEREIRA	2004-09-24	191966776	81947351067	\N	(54)9618-2718	(54)9166-5307	\N	Ensino Técnico Completo	\N	Ensino superior Incompleto	15 Km	2021-02-04	4	1	6	5	2021-08-30 00:45:40.817298
762	204	FERNANDA CAMATTI	2000-07-13	411597203	45118226730	\N	(54)9178-4490	(54)9673-1692	\N	Ensino Técnico Incompleto	\N	Ensino Técnico Incompleto	1 Km	2021-02-01	4	2	6	2	2021-08-30 00:45:40.817298
763	206	OTÁVIO DEBOVI RECH	2002-07-20	499564312	74987168314	\N	(54)9944-8589	(54)9611-6238	\N	Ensino fundamental Completo	\N	Ensino superior Incompleto	15 Km	2021-01-17	4	1	6	3	2021-08-30 00:45:40.817298
764	209	ALEXANDRE MENEGUZZO	2001-01-23	612616110	41902725293	\N	(54)3291-7534	3291-1762	\N	Ensino superior Completo	\N	Ensino fundamental Completo	5 Km	2021-01-18	4	1	6	3	2021-08-30 00:45:40.817298
765	211	 WILLIAM MENEGAZ PEIXOTO	2003-04-25	360358593	78392677812	\N	(54)9124-4390	(54)3291-9004	\N	Ensino Técnico Completo	\N	Ensino médio Completo	15 Km	2021-01-24	5	1	4	4	2021-08-30 00:45:40.817298
766	218	INES A. MACEDO	2001-12-03	976712537	40975248241	\N	(54)9145-7409	32912952	\N	Ensino médio Incomplento	\N	Ensino médio Completo	30 Km	2021-02-08	1	2	6	2	2021-08-30 00:45:40.817298
767	219	BRUNA DE OLIVEIRA	2000-07-08	277641442	31010263854	\N	(54)9619-7187	32913628	\N	Ensino fundamental Incomplento	\N	Ensino Técnico Incompleto	1 Km	2021-02-07	4	2	6	3	2021-08-30 00:45:40.817298
768	223	GABRIEL DEBOVI LISBOA	2004-05-13	156707261	88821884501	\N	(54)3291-1089	(54)3291-3696	\N	Ensino Técnico Incompleto	\N	Ensino fundamental Completo	1 Km	2021-02-08	3	1	6	3	2021-08-30 00:45:40.83278
769	228	GUILHERME DE CASTILHOS MORAES	2004-04-10	754836424	31199441821	\N	(54)9908-2143	(54)9207-4379	\N	Ensino Técnico Completo	\N	Ensino médio Incomplento	1 Km	2021-02-08	1	2	6	3	2021-08-30 00:45:40.83278
770	229	MARINA PESSINI	2002-03-19	372347261	19966666314	\N	(11)1111-1111	(54)9632-9888	\N	Ensino médio Incomplento	\N	Ensino superior Incompleto	15 Km	2021-01-17	5	2	6	3	2021-08-30 00:45:40.83278
771	231	LUCAS VANELLI TORRES	2000-10-06	771178513	95838638773	\N	(54)9120-2867	(54)3280-1121	\N	Ensino médio Incomplento	\N	Ensino fundamental Incomplento	30 Km	2021-01-10	1	1	6	3	2021-08-30 00:45:40.83278
772	237	NEILA TÉLES RAMOS	2001-07-31	182785670	70695690225	\N	(54)9184-9162	(54)3291-2951	\N	Ensino superior Incompleto	\N	Ensino superior Completo	1 Km	2021-01-29	4	2	6	5	2021-08-30 00:45:40.83278
773	238	MAURÍCIO VIEIRA VARGAS	2001-01-12	649660987	19808342808	\N	(54)9924-7774	(54)3291-1480	\N	Ensino superior Incompleto	\N	Ensino médio Incomplento	10 Km	2021-01-29	3	1	6	3	2021-08-30 00:45:40.83278
774	239	RAFAELA RODRIGUES DE ANDRADE	2002-12-08	373201266	49071864853	\N	(54)3291-4573	(54)3291-6334	\N	Ensino superior Completo	\N	Ensino superior Completo	30 Km	2021-01-16	2	2	6	1	2021-08-30 00:45:40.83278
775	242	MATHEUS MASCARELLO	2000-03-29	910269345	41484818369	\N	(54)9198-9824	(54)9940-5532	\N	Ensino superior Completo	\N	Ensino superior Incompleto	10 Km	2021-01-11	1	1	6	2	2021-08-30 00:45:40.83278
776	247	FABIO HENRIQUE ESPELOCIM	2003-02-02	640133265	59658432570	\N	(48)9664-2736	(54)3291-4108	\N	Ensino Técnico Completo	\N	Ensino fundamental Incomplento	15 Km	2021-01-25	2	1	6	5	2021-08-30 00:45:40.83278
777	248	CATHARINA MAGRINI FERREIRA	2004-01-03	271998249	50993182344	\N	(54)9215-2120	(54)9986-9124	\N	Ensino superior Completo	\N	Ensino fundamental Incomplento	15 Km	2021-01-19	3	2	6	5	2021-08-30 00:45:40.83278
778	249	CASSIANO SANDI DE CASTILHOS	2003-01-26	354640179	95740387181	\N	(54)9980-3834	(54)9152-5666	\N	Ensino Técnico Completo	\N	Ensino médio Completo	1 Km	2021-01-10	4	1	1	3	2021-08-30 00:45:40.83278
779	258	MICHELLI SINSEN TURMINA	2003-06-17	604915624	62072171314	\N	(54)9112-9256	(54)8144-2892	\N	Ensino fundamental Completo	\N	Ensino Técnico Incompleto	5 Km	2021-01-23	5	1	6	2	2021-08-30 00:45:40.83278
780	259	MOISÉS GOZZI	2003-10-07	651406310	32226239079	\N	(54)9643-0153	(54)9608-2878	\N	Ensino superior Incompleto	\N	Ensino médio Incomplento	30 Km	2021-01-13	1	1	4	2	2021-08-30 00:45:40.83278
781	261	PEDRO HENRIQUE RONCEN VIER	2016-06-25	328710457	45247289364	\N	(54)9109-5382	(00)0000-0000	\N	Ensino médio Incomplento	\N	Ensino fundamental Incomplento	20 Km	2021-01-12	1	1	4	3	2021-08-30 00:45:40.83278
782	262	WILLIAM RIBEIRO DE SOUZA	2016-11-11	753293205	26953319270	\N	(54)9660-5993	(54)9184-2832	\N	Ensino médio Incomplento	\N	Ensino superior Completo	1 Km	2021-01-15	4	1	6	2	2021-08-30 00:45:40.83278
783	270	MAURICIO ALBERTO CASAGRANDA BOLZAN	2016-07-06	393718388	23866430650	\N	(54)3291-2376	91383922	\N	Ensino Técnico Incompleto	\N	Ensino Técnico Completo	15 Km	2021-02-04	5	1	6	3	2021-08-30 00:45:40.83278
784	272	VANDERLEI DE CASTILHOS FILHO	2016-05-27	396882912	59063403666	\N	(54)3291-1310	3291-1862	\N	Ensino médio Completo	\N	Ensino Técnico Incompleto	20 Km	2021-01-29	4	1	6	2	2021-08-30 00:45:40.83278
785	283	ELISA FATIMA GUERRA	2016-02-08	313789617	72099019177	\N	(54)9698-5318	32911763	\N	Ensino superior Incompleto	\N	Ensino Técnico Incompleto	5 Km	2021-01-13	1	2	6	5	2021-08-30 00:45:40.83278
786	291	ALINE LAIS DONBROWSKI	2016-12-19	496429013	76255382548	\N	(54)3291-3822	(54)9633-3723	\N	Ensino superior Incompleto	\N	Ensino médio Incomplento	15 Km	2021-02-03	4	2	6	5	2021-08-30 00:45:40.83278
787	293	JHIOVANA FONSECA MATAURO	2016-09-06	257800841	56043214030	\N	(54)3291-4102	(54)3504-1247	\N	Ensino superior Incompleto	\N	Ensino Técnico Incompleto	5 Km	2021-01-26	4	2	6	5	2021-08-30 00:45:40.83278
788	296	BRUNA VANIN VIEIRA	2016-09-04	493647519	29652642045	\N	(54)3291-4223	(54)3291-4357	\N	Ensino médio Incomplento	\N	Ensino superior Completo	5 Km	2021-02-04	5	2	6	5	2021-08-30 00:45:40.83278
789	297	LAIS EDUARDA BARBOSA PICETTI	2016-08-07	819869174	66668676998	\N	(54)8144-2892	(54)3291-9011	\N	Ensino Técnico Completo	\N	Ensino Técnico Completo	5 Km	2021-01-20	4	2	4	5	2021-08-30 00:45:40.83278
790	299	ANA LARA MIOTTO JUNQUEIRA	2016-07-14	915768273	14795381266	\N	(54)3291-2852	(54)3280-1228	\N	Ensino Técnico Completo	\N	Ensino Técnico Completo	50 Km	2021-02-06	1	2	6	3	2021-08-30 00:45:40.83278
791	300	FERNANDO LUIZ RECH	2016-03-16	534812304	64373378941	\N	(54)3291-4598	(54)3291-1081	\N	Ensino superior Incompleto	\N	Ensino médio Completo	15 Km	2021-01-27	4	1	6	5	2021-08-30 00:45:40.83278
792	301	RAFAEL RIZZON	2016-12-08	411031636	17589400820	\N	3291-2664	(54)9614-4765	\N	Ensino fundamental Incomplento	\N	Ensino Técnico Completo	15 Km	2021-01-17	3	1	6	2	2021-08-30 00:45:40.83278
793	302	VITORIA CAETANO FERRARI BIBERG	2016-10-08	932003042	46333465188	\N	99322231	(54)9617-3698	\N	Ensino Técnico Completo	\N	Ensino superior Incompleto	1 Km	2021-01-19	4	2	6	3	2021-08-30 00:45:40.83278
794	304	ALEXANDRE DAVI DE JESUS DE OLIVEIRA	2016-07-31	262938113	47296105751	\N	(54)9646-7796	(54)9175-5073	\N	Ensino superior Incompleto	\N	Ensino Técnico Incompleto	20 Km	2021-01-15	1	1	6	5	2021-08-30 00:45:40.83278
795	308	CHAIANE SULIANI EVES	2016-03-25	614121175	97859971626	\N	(54)9944-8589	(54)3291-1821	\N	Ensino superior Completo	\N	Ensino fundamental Incomplento	5 Km	2021-01-18	4	2	6	5	2021-08-30 00:45:40.83278
796	309	STEFANI DE CASTILHOS	2016-02-07	773728115	57995271644	\N	3291-3919	(54)3291-6500	\N	Ensino Técnico Completo	\N	Ensino fundamental Completo	10 Km	2021-02-01	4	2	1	3	2021-08-30 00:45:40.83278
797	318	GISELE MARTINS DA COSTA	2015-09-12	138870311	32196800014	\N	(54)3291-3821	(54)3291-2559	\N	Ensino fundamental Incomplento	\N	Ensino Técnico Incompleto	1 Km	2021-01-11	3	2	6	5	2021-08-30 00:45:40.83278
798	319	ISADORA BROCHETTO	2015-12-08	821520968	39269719087	\N	(54)8448-6282	(54)3291-6505	\N	Ensino superior Incompleto	\N	Ensino superior Completo	20 Km	2021-02-03	4	2	6	5	2021-08-30 00:45:40.83278
799	326	RODRIGO TOMIELO	2015-12-05	250608236	27252362119	\N	(54)9187-4882	(54)3291-5302	\N	Ensino Técnico Incompleto	\N	Ensino fundamental Incomplento	1 Km	2021-01-10	4	1	6	1	2021-08-30 00:45:40.83278
800	327	JOICI RIZZO	2015-11-08	384463948	82397914902	\N	(54)3291-6399	(54)3291-2246	\N	Ensino superior Incompleto	\N	Ensino Técnico Incompleto	15 Km	2021-01-21	4	2	6	3	2021-08-30 00:45:40.83278
801	330	FELIPE DAL PRA	2015-10-31	715578635	42670694950	\N	(54)9980-1450	(54)9130-4871	\N	Ensino Técnico Completo	\N	Ensino fundamental Incomplento	30 Km	2021-01-15	5	1	6	5	2021-08-30 00:45:40.83278
802	334	DANRLEI PREBIANCA LEITE	2015-06-10	650576678	17811670369	\N	(54)9657-8636	(54)3291-3821	\N	Ensino superior Incompleto	\N	Ensino fundamental Incomplento	5 Km	2021-02-08	2	1	6	5	2021-08-30 00:45:40.83278
803	336	JONI MATEUS FOCHESATO	2015-02-21	525406554	75640603052	\N	\N	(54)9115-7283	\N	Ensino superior Incompleto	\N	Ensino fundamental Completo	20 Km	2021-01-21	1	1	6	2	2021-08-30 00:45:40.83278
804	341	LEONARDO SOBOLESWKI FLORES	2015-11-06	973427781	65663209113	\N	(54)9197-9015	(  )    -	\N	Ensino superior Completo	\N	Ensino fundamental Completo	1 Km	2021-01-31	2	1	6	4	2021-08-30 00:45:40.83278
805	347	MARIA EDUARDA DE JESUS	2015-04-14	202219218	84053131201	\N	(54)3280-1235	(54)9984-4473	\N	Ensino Técnico Completo	\N	Ensino médio Incomplento	15 Km	2021-02-08	4	2	1	5	2021-08-30 00:45:40.83278
806	349	RAQUEL SOGARI	2015-09-16	886861630	92823391436	\N	(54)9967-5026	(54)9946-4957	\N	Ensino fundamental Incomplento	\N	Ensino médio Completo	30 Km	2021-01-24	4	2	6	3	2021-08-30 00:45:40.83278
807	357	VANESSA COUSSEAU	2015-09-15	510474654	69173158494	\N	(54)9600-0808	(54)9144-2543	\N	Ensino fundamental Completo	\N	Ensino fundamental Incomplento	15 Km	2021-01-25	2	2	6	5	2021-08-30 00:45:40.83278
808	364	ALICE TERESA DA SILVA	2015-06-08	547675630	10807519275	\N	(54)3291-2833	\N	\N	Ensino superior Incompleto	\N	Ensino superior Incompleto	15 Km	2021-01-14	1	2	6	2	2021-08-30 00:45:40.83278
809	366	MIRELA CECILIA SOLDERA	2015-10-09	457375317	86001024931	\N	99225519	(54)3291-6334	\N	Ensino fundamental Completo	\N	Ensino Técnico Incompleto	1 Km	2021-01-10	3	2	6	2	2021-08-30 00:45:40.83278
810	367	RICARDO BURATTI	2015-04-13	489195710	57956399099	\N	(54)9939-3427	(54)9209-5725	\N	Ensino Técnico Incompleto	\N	Ensino fundamental Completo	10 Km	2021-02-01	1	1	6	4	2021-08-30 00:45:40.83278
811	370	ROSANA DE FÁTIMA PIRES	2015-11-20	718567026	22503994279	\N	(54)9102-7368	(54)3291-2248	\N	Ensino fundamental Completo	\N	Ensino médio Incomplento	1 Km	2021-02-07	1	2	6	2	2021-08-30 00:45:40.83278
812	371	VIVIANE DE SOUZA MOTA DE ALMEIDA PAZ	2015-03-04	312747304	55157430943	\N	(54)9148-9083	(54)9120-8314	\N	Ensino Técnico Incompleto	\N	Ensino fundamental Completo	15 Km	2021-02-03	1	2	6	3	2021-08-30 00:45:40.83278
813	374	JUSIANE CASAGRANDA	2014-09-30	929253734	79682807806	\N	(54)9642-9391	(54)9971-3239	\N	Ensino Técnico Completo	\N	Ensino fundamental Incomplento	20 Km	2021-01-25	1	2	5	4	2021-08-30 00:45:40.83278
814	375	EVELYN TREVISAN	2014-06-06	176304481	61515987537	\N	(54)9977-8364	(54)3291-6104	\N	Ensino fundamental Completo	\N	Ensino médio Completo	10 Km	2021-01-15	1	2	6	5	2021-08-30 00:45:40.83278
815	376	THIAGO EDSON DE MELLO POZZO	2014-10-07	701521336	27752239906	\N	(54)9135-4818	(54)3291-6104	\N	Ensino médio Incomplento	\N	Ensino Técnico Completo	30 Km	2021-01-22	4	1	6	5	2021-08-30 00:45:40.83278
816	391	KAUAN VARELA ZANELA	2014-04-29	332739460	11854657858	\N	(54)9999-5783	(54)9941-9604	\N	Ensino médio Incomplento	\N	Ensino fundamental Completo	15 Km	2021-02-06	1	1	6	5	2021-08-30 00:45:40.83278
817	393	TIAGO ZULIAN DALLAGNOL	2014-01-16	419711178	47623149645	\N	(54)9953-3134	(54)3267-8061	\N	Ensino Técnico Completo	\N	Ensino médio Completo	5 Km	2021-01-31	4	1	4	5	2021-08-30 00:45:40.83278
818	394	LUCAS DA SILVA SANTOS	2014-03-18	105480046	81498847250	\N	(54)9996-1381	(54)9119-6270	\N	Ensino Técnico Completo	\N	Ensino Técnico Incompleto	30 Km	2021-01-12	5	1	6	3	2021-08-30 00:45:40.83278
819	399	ANTONIO AUGUSTO DE MACEDO	2014-04-28	554287705	72525500398	\N	(54)9695-3874	(54)9157-0079	\N	Ensino Técnico Incompleto	\N	Ensino fundamental Completo	15 Km	2021-01-22	3	1	6	2	2021-08-30 00:45:40.83278
820	400	LUCIA DE OLIVEIRA PAULA	2014-12-16	707411881	92286455689	\N	(54)3291-6411	(54)8116-8716	\N	Ensino Técnico Incompleto	\N	Ensino fundamental Completo	1 Km	2021-01-17	1	2	5	5	2021-08-30 00:45:40.83278
821	402	AUGUSTO RIZZON BUGANÇA	2014-01-22	860056235	90784407183	\N	(54)9682-1138	(54)3291-2420	\N	Ensino superior Completo	\N	Ensino fundamental Incomplento	5 Km	2021-02-08	2	1	6	2	2021-08-30 00:45:40.83278
822	406	LUIZA LORENTZ	2014-07-26	762275311	19970110260	\N	(54)3280-1005	(54)3291-1331	\N	Ensino superior Incompleto	\N	Ensino Técnico Incompleto	20 Km	2021-01-17	4	2	6	3	2021-08-30 00:45:40.83278
823	418	REICARD PELIZZONI	2014-06-06	224290314	58826564550	\N	(54)9607-8774	(54)9954-3168	\N	Ensino superior Incompleto	\N	Ensino superior Completo	10 Km	2021-01-25	4	1	6	2	2021-08-30 00:45:40.83278
824	422	KATIELE BORGES DE CAMARGO	2014-10-01	871024891	44078342241	\N	(54)3291-3554	32911415	\N	Ensino fundamental Completo	\N	Ensino superior Incompleto	1 Km	2021-01-20	1	2	6	3	2021-08-30 00:45:40.83278
825	424	ADRIELI DA SILVA RODRIGUES	2014-07-25	805567326	11847171750	\N	(54)3235-5099	(54)3291-2087	\N	Ensino superior Completo	\N	Ensino fundamental Incomplento	1 Km	2021-02-05	1	2	4	4	2021-08-30 00:45:40.83278
826	428	MARIA TEREZINHA DRAGO CIOATO	2014-02-25	182137303	99541182412	\N	(54)9960-7595	(54)3291-1638	\N	Ensino superior Incompleto	\N	Ensino fundamental Incomplento	20 Km	2021-01-23	1	2	6	5	2021-08-30 00:45:40.83278
827	430	TAÍNE FABRO MARTININGUI	2014-09-17	877652083	23997472629	\N	(54)9645-0824	(54)3291-1364	\N	Ensino superior Incompleto	\N	Ensino superior Completo	5 Km	2021-01-16	1	2	6	3	2021-08-30 00:45:40.83278
828	431	FRANCO HENRIQUE GOZZI MARTINI	2014-02-03	615611390	84062259320	\N	(54)9132-4493	(54)9138-4633	\N	Ensino médio Incomplento	\N	Ensino Técnico Incompleto	1 Km	2021-01-19	5	1	6	5	2021-08-30 00:45:40.83278
829	433	BRUNO VIEIRA DA SILVA	2013-04-22	956392773	76860005255	\N	(54)9924-0026	(54)3291-3772	\N	Ensino Técnico Incompleto	\N	Ensino superior Completo	5 Km	2021-02-02	4	1	6	2	2021-08-30 00:45:40.83278
830	438	LUCIANA DE LIMA CARRARO	2013-06-12	684098585	13382197736	\N	(54)9647-2502	(54)9111-9117	\N	Ensino Técnico Incompleto	\N	Ensino superior Completo	30 Km	2021-01-28	1	2	6	5	2021-08-30 00:45:40.83278
831	439	VITÓRIA FANTIN	2013-02-08	899900620	63531828949	\N	(54)9668-8158	(54)9170-4670	\N	Ensino superior Completo	\N	Ensino superior Incompleto	30 Km	2021-02-08	5	2	6	5	2021-08-30 00:45:40.83278
832	442	ANDERSON RIZZO	2013-11-01	904022282	23031784076	\N	(54)9676-6597	(54)9949-6496	\N	Ensino superior Completo	\N	Ensino Técnico Incompleto	20 Km	2021-01-29	1	1	6	2	2021-08-30 00:45:40.83278
833	443	LAURA ESTÉFANI R. DOS SANTOS	2013-12-30	612223957	80999785998	\N	(54)3291-2927	3280-1119	\N	Ensino Técnico Incompleto	\N	Ensino fundamental Incomplento	5 Km	2021-02-01	4	2	6	2	2021-08-30 00:45:40.83278
834	445	ISADORA MAGRIN	2013-10-21	456796550	71854042336	\N	(54)9955-5722	32914627	\N	Ensino médio Completo	\N	Ensino médio Completo	1 Km	2021-01-15	5	2	6	2	2021-08-30 00:45:40.83278
835	451	VITORIA GOMES LINS	2013-04-11	573911841	66319161806	\N	(54)9214-3666	3291-6318	\N	Ensino Técnico Incompleto	\N	Ensino superior Incompleto	30 Km	2021-02-07	2	2	6	5	2021-08-30 00:45:40.83278
836	452	GUSTAVO DE L. LOURENÇO	2013-04-24	354042513	74831337894	\N	(54)9602-5463	(54)9922-3101	\N	Ensino médio Incomplento	\N	Ensino fundamental Completo	10 Km	2021-01-10	5	1	6	4	2021-08-30 00:45:40.83278
837	453	JOÃO PEDRO BOLZAN CAPELLETI	2013-09-30	873932458	46160218748	\N	(54)9101-7040	(54)9177-2667	\N	Ensino Técnico Completo	\N	Ensino superior Incompleto	1 Km	2021-02-06	3	2	6	3	2021-08-30 00:45:40.83278
838	457	PAMELA DOS SANTOS RIBEIRO	2013-05-26	318010165	90474657054	\N	(54)9600-0133	(54)3291-2596	\N	Ensino superior Completo	\N	Ensino superior Completo	5 Km	2021-01-13	1	2	6	3	2021-08-30 00:45:40.83278
839	458	CAROLINE ZAMPIERI	2013-09-05	554508069	97040693105	\N	(54)3291-6142	32678231	\N	Ensino médio Incomplento	\N	Ensino superior Completo	1 Km	2021-01-14	1	2	6	3	2021-08-30 00:45:40.83278
840	459	RENATA ROMEIRO DOS SANTOS	2013-02-16	662957138	70975541577	\N	(54)3291-1092	3291-1479	\N	Ensino Técnico Incompleto	\N	Ensino Técnico Incompleto	1 Km	2021-01-25	1	2	6	2	2021-08-30 00:45:40.83278
841	468	PATRICIA MACIEL BROCHETTO	2013-04-04	787707429	73505560868	\N	(11)1111-1111	32914316	\N	Ensino médio Incomplento	\N	Ensino superior Incompleto	15 Km	2021-01-31	1	2	6	2	2021-08-30 00:45:40.83278
842	473	ANDREIA BOFF	2013-07-24	968959470	17348934655	\N	(54)9650-9898	32913514	\N	Ensino médio Completo	\N	Ensino fundamental Completo	5 Km	2021-01-24	4	2	6	2	2021-08-30 00:45:40.83278
843	478	JOÃO EDUARDO CECHINATO	2013-04-03	496331902	58249225092	\N	(54)9150-4245	(54)3291-7550	\N	Ensino superior Incompleto	\N	Ensino Técnico Incompleto	10 Km	2021-01-14	1	2	3	5	2021-08-30 00:45:40.83278
844	485	JANAINA LOPES PERES	2013-01-13	624227069	68767450053	\N	91256911	(54)3291-6361	\N	Ensino médio Incomplento	\N	Ensino Técnico Incompleto	1 Km	2021-02-02	5	2	6	3	2021-08-30 00:45:40.83278
845	489	FLAVIANO FABBRIS	2012-11-27	358810394	82371016745	\N	(54)3291-2266	(54)3291-7519	\N	Ensino superior Incompleto	\N	Ensino Técnico Incompleto	10 Km	2021-01-19	1	2	6	5	2021-08-30 00:45:40.83278
846	490	GISELA PAIM LIPOSKI	2012-09-16	201613074	64880031285	\N	(54)9180-8809	(54)9611-1147	\N	Ensino médio Incomplento	\N	Ensino fundamental Completo	5 Km	2021-01-24	4	1	1	3	2021-08-30 00:45:40.83278
847	492	NATANIEL CHAVEZ PEREIRA	2012-11-12	613718146	12691829953	\N	(54)9923-3833	(54)9941-2734	\N	Ensino Técnico Completo	\N	Ensino Técnico Completo	10 Km	2021-01-28	1	2	6	1	2021-08-30 00:45:40.83278
848	501	ELISA PEGORARO SOTORIVA	2012-01-09	320295089	73977393503	\N	(54)9914-1520	(54)9671-3253	\N	Ensino médio Incomplento	\N	Ensino superior Completo	15 Km	2021-01-31	5	2	6	2	2021-08-30 00:45:40.83278
849	505	LAIS GENTIL	2012-11-02	695506150	53683671127	\N	(54)3291-7422	(54)9631-6087	\N	Ensino médio Incomplento	\N	Ensino fundamental Incomplento	20 Km	2021-01-20	1	2	6	5	2021-08-30 00:45:40.83278
850	506	LEONARDO ARTUR BALARDIN SANDRI	2012-09-22	310105564	32177510728	\N	32916020	(54)9921-9264	\N	Ensino Técnico Completo	\N	Ensino médio Incomplento	15 Km	2021-01-27	4	1	6	4	2021-08-30 00:45:40.83278
851	509	LORENZO STICH BIASOTTO	2012-12-16	486118433	62890518655	\N	(54)9181-5533	(54)3291-1718	\N	Ensino fundamental Incomplento	\N	Ensino Técnico Incompleto	15 Km	2021-01-12	3	1	6	3	2021-08-30 00:45:40.83278
852	513	PATRÍCIA MARTININGHI	2012-12-26	854139925	92832778804	\N	(54)3291-1962	(54)8407-9950	\N	Ensino Técnico Incompleto	\N	Ensino médio Incomplento	10 Km	2021-01-11	1	2	6	3	2021-08-30 00:45:40.83278
853	514	GISELE CORREIA DE BRITO	2012-08-27	488996148	61761958869	\N	(54)9186-9873	(54)3291-7493	\N	Ensino Técnico Completo	\N	Ensino superior Completo	5 Km	2021-01-26	3	2	1	3	2021-08-30 00:45:40.83278
854	515	ALINE FREDREZ	2012-10-14	836893273	92474797787	\N	(54)3291-6233	(54)9918-8990	\N	Ensino Técnico Completo	\N	Ensino superior Incompleto	10 Km	2021-01-17	5	2	6	5	2021-08-30 00:45:40.83278
855	516	ISADORA SCAIN	2012-01-20	570052603	78191359676	\N	(54)3291-2060	(54)9206-1075	\N	Ensino médio Completo	\N	Ensino médio Completo	15 Km	2021-02-01	1	2	6	2	2021-08-30 00:45:40.83278
856	517	THAÍS SANDRI BROCHETTO	2012-08-29	783967051	52038402004	\N	(54)8124-4659	(54)3291-2802	\N	Ensino fundamental Completo	\N	Ensino Técnico Completo	15 Km	2021-02-02	1	2	6	2	2021-08-30 00:45:40.83278
857	522	GUILHERME WILLIAM BITENCOURT MACIEL	2012-11-27	228247344	47581266573	\N	(54)9971-6798	(54)9674-3257	\N	Ensino fundamental Incomplento	\N	Ensino médio Incomplento	5 Km	2021-01-16	1	1	6	5	2021-08-30 00:45:40.83278
858	533	MAICON CAMAZZOLA DOS SANTOS	2012-05-22	642625757	82408345511	\N	(54)9912-8017	(54)3291-3954	\N	Ensino médio Incomplento	\N	Ensino fundamental Incomplento	5 Km	2021-01-31	3	1	6	2	2021-08-30 00:45:40.83278
859	537	SAMARA BRESOLIN	2012-03-18	511045221	14369942281	\N	(54)9207-4853	(54)3291-3234	\N	Ensino superior Incompleto	\N	Ensino Técnico Completo	10 Km	2021-02-02	1	2	6	5	2021-08-30 00:45:40.83278
860	543	LEOMAR CARARO	2012-07-14	474318315	14061788555	\N	(54)3291-6334	(54)9178-9852	\N	Ensino Técnico Completo	\N	Ensino médio Incomplento	15 Km	2021-02-05	4	1	6	5	2021-08-30 00:45:40.83278
861	550	LUCAS DE ARAÚJO CASTILHOS	2011-11-15	978021501	50490554621	\N	(54)9613-4042	(54)3291-2248	\N	Ensino fundamental Completo	\N	Ensino superior Incompleto	15 Km	2021-01-16	1	1	6	5	2021-08-30 00:45:40.83278
862	552	NATHALIA VITORIA SANTOS SILVA	2011-08-02	160956928	68327877274	\N	(54)9186-7600	(54)3291-2848	\N	Ensino superior Completo	\N	Ensino superior Incompleto	5 Km	2021-01-22	3	2	6	4	2021-08-30 00:45:40.83278
863	553	EMILLY LIPOSKI LOPES DOS SANTOS	2011-01-10	112882070	15528672179	\N	(54)8145-8401	(54)3504-1358	\N	Ensino superior Incompleto	\N	Ensino médio Completo	10 Km	2021-01-23	1	2	6	3	2021-08-30 00:45:40.83278
864	561	LUANA DA SILVA SANTOS	2011-06-29	774770417	17623442363	\N	(54)9164-2921	(54)3291-3291	\N	Ensino superior Incompleto	\N	Ensino superior Incompleto	5 Km	2021-01-30	5	2	6	2	2021-08-30 00:45:40.83278
865	565	EDUARDA DA SILVA PERDONA	2011-11-18	302485129	85662011700	\N	(54)3291-2820	(54)3291-7539	\N	Ensino fundamental Incomplento	\N	Ensino Técnico Incompleto	15 Km	2021-01-31	1	2	6	5	2021-08-30 00:45:40.83278
866	566	LUCAS DA SILVA	2011-07-31	431245861	68536243121	\N	(54)9180-0930	(54)3267-8160	\N	Ensino fundamental Completo	\N	Ensino médio Incomplento	5 Km	2021-01-26	2	1	1	3	2021-08-30 00:45:40.83278
867	567	DIEGO HENRIQUE RIBEIRO	2011-06-01	470384166	15888282967	\N	(54)9154-8746	(54)9652-5801	\N	Ensino médio Incomplento	\N	Ensino Técnico Completo	15 Km	2021-01-15	1	1	6	3	2021-08-30 00:45:40.83278
868	570	PATRYCK SCARIOT LIRA	2011-06-24	595341437	77086679482	\N	(54)9107-1042	(54)3291-6026	\N	Ensino superior Incompleto	\N	Ensino superior Incompleto	10 Km	2021-02-05	1	1	6	3	2021-08-30 00:45:40.83278
869	576	DANIELE APARECIDA DELFES DOS SANTOS	2011-09-11	945380903	31641530215	\N	(54)9661-0384	(54)9212-1864	\N	Ensino médio Completo	\N	Ensino fundamental Incomplento	20 Km	2021-01-28	1	2	6	3	2021-08-30 00:45:40.83278
870	577	YASMIN DOS REIS PARIZOTE	2011-06-08	299417581	44254848958	\N	(54)9187-0508	(54)9697-7921	\N	Ensino médio Incomplento	\N	Ensino médio Incomplento	20 Km	2021-01-27	1	2	6	3	2021-08-30 00:45:40.83278
871	578	GABRIELA CARARO BONI	2011-06-03	562218209	40764784377	\N	(54)9646-1871	(54)8164-2013	\N	Ensino Técnico Incompleto	\N	Ensino médio Completo	50 Km	2021-02-08	1	2	4	3	2021-08-30 00:45:40.83278
872	581	GLAUCIA DE CAMPOS RIZZON	2011-10-15	717617621	35423397483	\N	(54)9148-1191	(54)9953-5277	\N	Ensino superior Completo	\N	Ensino fundamental Completo	10 Km	2021-02-08	1	2	6	3	2021-08-30 00:45:40.83278
873	583	VAGNER PEREIRA DOS SANTOS	2011-12-27	410391544	32272470983	\N	(54)9929-1107	(54)9949-6094	\N	Ensino superior Incompleto	\N	Ensino Técnico Completo	1 Km	2021-02-07	5	1	1	3	2021-08-30 00:45:40.83278
874	584	GABRIELE DAL'LAGO	2011-09-13	990674514	47142971613	\N	(54)9705-4445	(54)3291-3515	\N	Ensino superior Incompleto	\N	Ensino médio Incomplento	20 Km	2021-01-21	1	2	6	4	2021-08-30 00:45:40.83278
875	585	ANGELICA MENDES	2011-06-25	944718866	91377903743	\N	(54)3291-1572	(54)3291-2337	\N	Ensino médio Incomplento	\N	Ensino médio Completo	30 Km	2021-02-02	3	2	6	5	2021-08-30 00:45:40.83278
876	589	ALISSON FERNANDO BOEIRA	2010-03-26	146843483	29647524839	\N	(54)9202-1947	(54)9931-3134	\N	Ensino Técnico Completo	\N	Ensino médio Completo	10 Km	2021-01-17	1	1	6	5	2021-08-30 00:45:40.83278
877	590	MARIA ISABEL DEBOVI	2010-11-15	262650634	35291460580	\N	(54)9206-9897	(54)9137-7848	\N	Ensino Técnico Incompleto	\N	Ensino médio Completo	15 Km	2021-01-15	2	2	6	5	2021-08-30 00:45:40.83278
878	591	RUDINEI RODRIGUES DE CANDIDO	2010-07-10	701874168	20674361780	\N	(54)9971-9989	(54)3291-3295	\N	Ensino fundamental Incomplento	\N	Ensino superior Completo	15 Km	2021-02-05	4	1	6	5	2021-08-30 00:45:40.83278
879	592	BRUNO LICRECIO DA SILVA	2010-09-23	752398157	40719941027	\N	(54)3291-4067	(54)8151-7350	\N	Ensino fundamental Completo	\N	Ensino Técnico Completo	5 Km	2021-01-29	3	1	6	3	2021-08-30 00:45:40.83278
880	595	SANDRA APARECIDA DE JESUS	2010-08-09	885571317	66559159873	\N	(54)9175-2669	(54)9683-8179	\N	Ensino superior Incompleto	\N	Ensino médio Incomplento	5 Km	2021-02-04	1	2	6	3	2021-08-30 00:45:40.83278
881	597	RHAIRA CASTILHOS	2010-07-20	915080676	67756318698	\N	(54)9954-3259	(54)9152-2263	\N	Ensino superior Incompleto	\N	Ensino Técnico Completo	10 Km	2021-02-02	1	2	6	5	2021-08-30 00:45:40.83278
882	598	NATÁLIA DA SILVA NEVES	2010-07-13	849862242	33042255716	\N	(54)9919-1150	(54)3291-4021	\N	Ensino Técnico Incompleto	\N	Ensino superior Incompleto	1 Km	2021-01-26	1	2	6	5	2021-08-30 00:45:40.83278
883	599	VERA SLONGO FONGARO	2010-05-06	711344678	97510083272	\N	(54)9105-3252	(54)3291-4021	\N	Ensino médio Incomplento	\N	Ensino superior Completo	15 Km	2021-01-30	1	2	4	5	2021-08-30 00:45:40.83278
884	608	VANESSA PEGORARO CAMELO	2010-10-16	655454452	71375509536	\N	(54)3291-2820	(54)9927-4518	\N	Ensino Técnico Incompleto	\N	Ensino fundamental Incomplento	5 Km	2021-02-08	5	2	6	2	2021-08-30 00:45:40.83278
885	609	CAROLINA TOZZETTO POLONI	2010-05-15	386082901	69423330897	\N	(54)9615-7851	(54)9209-9944	\N	Ensino superior Incompleto	\N	Ensino superior Incompleto	5 Km	2021-01-21	4	2	6	3	2021-08-30 00:45:40.83278
886	610	CAMILA DE MOURA DOS REIS	2010-10-24	523367212	60689563720	\N	(54)9944-3371	(54)9664-0885	\N	Ensino médio Completo	\N	Ensino Técnico Incompleto	5 Km	2021-01-15	4	2	6	5	2021-08-30 00:45:40.83278
887	611	GUILHERME JOSIAS DENQUE	2010-01-09	693963626	21039837954	\N	3291-2787	(54)9144-2543	\N	Ensino superior Incompleto	\N	Ensino superior Incompleto	5 Km	2021-01-19	4	1	6	2	2021-08-30 00:45:40.83278
888	613	ZILMA DA COSTA LOPES	2010-11-25	397129979	48028601120	\N	(54)9623-7475	(54)9674-6849	\N	Ensino Técnico Completo	\N	Ensino Técnico Incompleto	5 Km	2021-02-06	4	2	6	3	2021-08-30 00:45:40.83278
889	616	RAFAEL SOLDATELLI DA ROSA	2010-09-26	940838977	55442806029	\N	(54)3291-2491	(54)3291-1777	\N	Ensino fundamental Completo	\N	Ensino médio Completo	5 Km	2021-01-24	1	1	1	2	2021-08-30 00:45:40.83278
890	617	FABIANA MARCHESI	2010-07-21	899720914	11263455019	\N	(54)3291-2398	(54)9993-6118	\N	Ensino superior Completo	\N	Ensino médio Incomplento	15 Km	2021-01-19	4	2	6	5	2021-08-30 00:45:40.83278
891	620	 TAISE RODRIGUES	2010-04-24	196603733	28980398773	\N	(54)9989-9168	(54)3291-4634	\N	Ensino superior Incompleto	\N	Ensino superior Completo	20 Km	2021-01-29	5	2	6	3	2021-08-30 00:45:40.83278
892	622	 CRISTIANE FERNANDES FONTANA	2009-06-06	105995372	85889683284	\N	(54)9953-2548	(54)3291-4079	\N	Ensino médio Completo	\N	Ensino fundamental Completo	5 Km	2021-02-02	3	2	6	2	2021-08-30 00:45:40.83278
893	624	 SILVANA MARCIA FANTIN	2009-07-21	438799808	87777093708	\N	(54)9192-5775	(54)3291-3434	\N	Ensino médio Incomplento	\N	Ensino fundamental Completo	15 Km	2021-01-11	1	2	6	2	2021-08-30 00:45:40.83278
894	631	 TATIANE ROMEIRO DOS SANTOS	2009-03-16	711143781	24906147308	\N	(54)9644-2285	(54)9906-9218	\N	Ensino Técnico Incompleto	\N	Ensino Técnico Incompleto	5 Km	2021-01-28	4	2	6	3	2021-08-30 00:45:40.83278
895	632	 MATEUS MOLON SANDI	2009-09-22	556672795	84851730933	\N	(54)9957-0034	(54)3291-2537	\N	Ensino fundamental Incomplento	\N	Ensino superior Incompleto	20 Km	2021-01-31	4	1	6	5	2021-08-30 00:45:40.83278
896	638	 MARINES APARECIDA CHINELATO	2009-07-10	619898061	35898845710	\N	(54)3816-1810	32919107	\N	Ensino superior Completo	\N	Ensino Técnico Completo	5 Km	2021-02-06	5	2	1	2	2021-08-30 00:45:40.83278
897	640	 GIOVANI BRUCE DA SILVA	2009-09-16	590213997	69794209399	\N	(54)9614-7370	(54)3291-7487	\N	Ensino Técnico Incompleto	\N	Ensino médio Incomplento	20 Km	2021-01-21	4	1	6	5	2021-08-30 00:45:40.83278
898	647	 OTTAVIO AUGUSTO FRANSCESCHINI	2009-07-26	600445388	13523904050	\N	(54)3291-2683	(54)3291-1725	\N	Ensino médio Completo	\N	Ensino fundamental Incomplento	1 Km	2021-01-14	4	1	6	3	2021-08-30 00:45:40.83278
899	648	 BRUNA VANIN VIEIRA	2009-06-05	706543262	13595044425	\N	(54)3291-3306	(54)9115-7223	\N	Ensino médio Completo	\N	Ensino Técnico Completo	15 Km	2021-01-14	1	2	6	2	2021-08-30 00:45:40.83278
900	652	 FRANCIELI F. CASAGRANDA	2009-04-14	364456807	97863343135	\N	(54)9242-1155	(54)3291-3263	\N	Ensino Técnico Incompleto	\N	Ensino médio Incomplento	15 Km	2021-01-19	4	2	6	5	2021-08-30 00:45:40.83278
901	653	 VERA SLONGO FONGARO	2009-05-19	568970184	95942630176	\N	(54)9196-1976	(54)3291-2769	\N	Ensino Técnico Completo	\N	Ensino médio Completo	30 Km	2021-01-18	5	2	6	5	2021-08-30 00:45:40.83278
902	655	 JEAN FRANCISCO PEROZZO MARCARELLO	2009-12-22	479922967	98526101454	\N	(54)9184-0492	(54)3291-3459	\N	Ensino fundamental Completo	\N	Ensino Técnico Completo	15 Km	2021-01-28	1	1	1	2	2021-08-30 00:45:40.83278
903	667	 EDIANE REGINA DE SOUZA	2009-03-07	378265341	79259302085	\N	(54)9949-6094	(54)3291-7071	\N	Ensino Técnico Completo	\N	Ensino fundamental Incomplento	5 Km	2021-01-20	2	2	3	5	2021-08-30 00:45:40.83278
904	672	 MORGANA CARDOSO ALVES	2009-04-25	896192522	38355304921	\N	(54)9673-9703	(54)9602-5601	\N	Ensino superior Incompleto	\N	Ensino Técnico Incompleto	15 Km	2021-01-20	4	2	4	5	2021-08-30 00:45:40.83278
905	677	 GIOVANI CARDOSO	2009-10-14	304872033	81478978744	\N	(11)1111-1111	(54)9990-6956	\N	Ensino superior Completo	\N	Ensino Técnico Incompleto	5 Km	2021-01-31	4	1	4	3	2021-08-30 00:45:40.83278
906	679	 MARCOS JOÃO RIZZON	2009-02-09	541178201	45759694302	\N	(54)3291-3292	(54)9659-0789	\N	Ensino médio Completo	\N	Ensino superior Completo	15 Km	2021-01-16	1	1	6	3	2021-08-30 00:45:40.83278
907	682	 NUBIA TELES PEDROSO	2009-05-11	824736696	88287178724	\N	(54)9601-1873	(54)9672-0530	\N	Ensino médio Incomplento	\N	Ensino médio Completo	20 Km	2021-01-15	4	2	6	5	2021-08-30 00:45:40.83278
908	684	 CAROLINA RODRIGUES BIASUZ	2009-07-05	275114374	90454810479	\N	(54)9931-8929	\N	\N	Ensino Técnico Incompleto	\N	Ensino Técnico Completo	10 Km	2021-01-26	4	2	1	2	2021-08-30 00:45:40.83278
909	690	 JOÃO PEDRO DA FONSECA MOTA	2008-09-21	844937953	44107151465	\N	(54)8103-3183	(54)9666-6188	\N	Ensino Técnico Completo	\N	Ensino fundamental Completo	10 Km	2021-01-17	1	1	6	2	2021-08-30 00:45:40.83278
910	691	 GREICE MACIEL DA ROSA	2008-01-15	729030872	69719121318	\N	(54)9616-5655	(54)9694-5598	\N	Ensino Técnico Completo	\N	Ensino fundamental Incomplento	20 Km	2021-01-28	5	2	6	5	2021-08-30 00:45:40.83278
911	697	 DIOGO GOULARTE POSSA	2008-05-17	292816384	75242524659	\N	(54)9912-6124	(54)3235-1653	\N	Ensino fundamental Incomplento	\N	Ensino superior Completo	5 Km	2021-01-24	2	1	6	2	2021-08-30 00:45:40.83278
912	699	 ROSANE MARIA BONI	2008-05-16	411556324	47538031561	\N	(54)9153-9190	(54)9108-6786	\N	Ensino fundamental Completo	\N	Ensino superior Completo	20 Km	2021-01-27	1	1	6	3	2021-08-30 00:45:40.83278
913	700	 STEFANIE CARVALHO PEREIRA	2008-05-09	392535955	92793337962	\N	(54)9153-9190	(54)3280-1125	\N	Ensino Técnico Completo	\N	Ensino fundamental Incomplento	10 Km	2021-01-29	1	2	6	2	2021-08-30 00:45:40.83278
914	713	ANTENOR ADAO PAIM	2008-01-31	668571177	24860190691	\N	(54)9620-0621	(54)9667-8483	\N	Ensino superior Incompleto	\N	Ensino médio Completo	20 Km	2021-01-20	1	1	6	4	2021-08-30 00:45:40.83278
915	714	EMANUEL MASCARELLO	2008-04-22	584826285	14287926049	\N	(54)3291-7478	(54)9209-2838	\N	Ensino superior Completo	\N	Ensino Técnico Incompleto	20 Km	2021-02-05	4	1	6	5	2021-08-30 00:45:40.83278
916	715	EDUARDO COMIOTTO	2008-01-12	617748398	48652802758	\N	(54)9944-8972	(54)3280-1040	\N	Ensino médio Incomplento	\N	Ensino fundamental Completo	30 Km	2021-02-04	3	1	3	1	2021-08-30 00:45:40.83278
917	719	OTÁVIO NUNES	2008-04-03	383237309	45308655519	\N	(54)9629-1372	(54)9698-8688	\N	Ensino superior Incompleto	\N	Ensino fundamental Incomplento	1 Km	2021-01-14	1	1	6	2	2021-08-30 00:45:40.83278
918	720	ARTHUR HENRIQUE SIQUEIRA DUARTE	2008-02-22	202379870	80229197623	\N	(54)3267-8032	\N	\N	Ensino superior Incompleto	\N	Ensino superior Incompleto	1 Km	2021-02-03	4	1	6	5	2021-08-30 00:45:40.83278
919	722	EMILI DAL'LAGO	2008-02-22	170959195	31124242210	\N	(54)9171-9172	(54)9704-1158	\N	Ensino superior Incompleto	\N	Ensino superior Incompleto	1 Km	2021-01-27	3	2	6	2	2021-08-30 00:45:40.83278
920	730	KELLY CARRARO	2008-02-01	172362473	75253269444	\N	(54)9138-0088	(54)9921-0298	\N	Ensino superior Incompleto	\N	Ensino superior Completo	10 Km	2021-01-26	1	2	6	3	2021-08-30 00:45:40.83278
921	733	ADRIANA SARTORI	2008-07-24	463139962	35827185601	\N	(54)9251-8920	(54)9130-6005	\N	Ensino superior Incompleto	\N	Ensino Técnico Incompleto	1 Km	2021-02-04	1	2	6	5	2021-08-30 00:45:40.83278
922	736	GUSTAVO PENCA	2008-10-01	801835136	78859503535	\N	(54)9125-2782	(  )    -	\N	Ensino médio Completo	\N	Ensino médio Completo	30 Km	2021-01-11	1	1	6	1	2021-08-30 00:45:40.83278
923	737	MARIA EDUARDA FABBRIS	2008-09-16	875090804	61385662486	\N	(54)9658-1833	(54)9176-3971	\N	Ensino Técnico Completo	\N	Ensino Técnico Incompleto	15 Km	2021-01-10	3	2	1	5	2021-08-30 00:45:40.83278
924	740	ARTHUR ASTOLFI RODRIGUES	2008-07-25	763971554	42717895612	\N	(54)3291-2030	(54)9671-8029	\N	Ensino Técnico Completo	\N	Ensino fundamental Incomplento	30 Km	2021-01-17	1	1	6	5	2021-08-30 00:45:40.83278
925	747	MISAEL BORGES ZUANAZZI	2007-02-12	863672262	44960212196	\N	(54)3291-2661	(54)9641-3822	\N	Ensino Técnico Incompleto	\N	Ensino médio Completo	15 Km	2021-01-16	3	1	6	2	2021-08-30 00:45:40.83278
926	751	CAROLINA PIMEMENTEL SILVA	2007-01-16	270238451	91589455821	\N	(54)3291-7195	(54)9197-1955	\N	Ensino médio Incomplento	\N	Ensino fundamental Completo	20 Km	2021-01-30	5	2	6	5	2021-08-30 00:45:40.83278
927	752	CARLOS EDUARDO MICHELLIN	2007-04-03	229559399	30009527298	\N	(54)9602-5505	(54)3291-3721	\N	Ensino superior Completo	\N	Ensino médio Incomplento	1 Km	2021-01-14	5	1	6	3	2021-08-30 00:45:40.83278
928	757	LUIZ FERNANDO PEROZZO MASCARELLO	2007-07-30	889932686	25287536195	\N	(54)9989-9168	(54)9193-2300	\N	Ensino fundamental Completo	\N	Ensino fundamental Incomplento	1 Km	2021-01-23	1	1	6	3	2021-08-30 00:45:40.83278
929	758	VAGNER DALL'AGNO	2007-05-29	440922638	70867738351	\N	(54)8127-2304	(54)9671-8029	\N	Ensino fundamental Completo	\N	Ensino Técnico Completo	10 Km	2021-01-16	1	1	6	5	2021-08-30 00:45:40.83278
930	760	ANA SÁRA PARIZZOTTO DA SILVA	2007-10-18	322675933	41457660110	\N	(54)9195-0947	(54)9182-9947	\N	Ensino Técnico Completo	\N	Ensino Técnico Completo	30 Km	2021-01-14	1	1	6	4	2021-08-30 00:45:40.83278
931	762	GABRIEL ANTÔNIO DOS REIS SILVA	2007-04-30	802142967	54768660392	\N	(54)9669-8782	(54)9133-5631	\N	Ensino médio Incomplento	\N	Ensino fundamental Incomplento	20 Km	2021-01-11	1	1	3	5	2021-08-30 00:45:40.83278
932	763	EDUARDA CASTILHOS DE ALMEIDA	2007-08-11	586290584	53504139280	\N	(54)9658-1833	(54)9111-2416	\N	Ensino superior Incompleto	\N	Ensino fundamental Incomplento	30 Km	2021-01-28	4	2	4	3	2021-08-30 00:45:40.83278
933	779	ALEXANDRE RIZZON MENEGUZZO	2007-05-09	450637948	82931756621	\N	(58)8128-9684	(54)3291-1421	\N	Ensino fundamental Incomplento	\N	Ensino médio Incomplento	10 Km	2021-01-16	1	1	6	3	2021-08-30 00:45:40.83278
934	785	ANDREI GIOTTI	2007-01-28	964392971	53723187863	\N	(54)9959-2094	(54)9638-0031	\N	Ensino Técnico Incompleto	\N	Ensino superior Incompleto	10 Km	2021-01-18	1	1	4	2	2021-08-30 00:45:40.83278
935	789	VICENTE BORGHETTI SBABO	2007-06-05	371644862	33686352349	\N	(54)3291-4303	(54)9959-5123	\N	Ensino Técnico Completo	\N	Ensino fundamental Incomplento	30 Km	2021-01-26	4	1	6	5	2021-08-30 00:45:40.83278
936	793	LUANA CAROLINE BACK	2007-11-24	248789056	88819248719	\N	(54)9602-4110	(54)3291-3688	\N	Ensino Técnico Incompleto	\N	Ensino Técnico Completo	20 Km	2021-02-07	1	2	6	5	2021-08-30 00:45:40.83278
937	795	CAROLINE ONZI GOMES	2007-11-02	566566419	53569983516	\N	(54)9603-2677	(54)9922-1272	\N	Ensino superior Completo	\N	Ensino superior Incompleto	1 Km	2021-01-20	2	2	6	3	2021-08-30 00:45:40.83278
938	796	ARIANE BRUNELLO	2007-10-05	913201250	37269815497	\N	(54)9134-4156	(54)9997-9784	\N	Ensino fundamental Completo	\N	Ensino fundamental Completo	10 Km	2021-01-18	1	1	6	3	2021-08-30 00:45:40.83278
939	798	GISELA PASIN	2007-12-03	329385500	23351563649	\N	(54)8151-1209	(54)9705-5579	\N	Ensino fundamental Completo	\N	Ensino médio Incomplento	15 Km	2021-01-17	4	2	4	3	2021-08-30 00:45:40.83278
940	799	EDER DE OLIVEIRA SOARES	2007-10-30	307950233	49946294180	\N	(54)9911-0259	(54)9633-6702	\N	Ensino fundamental Incomplento	\N	Ensino superior Completo	15 Km	2021-01-14	4	1	1	2	2021-08-30 00:45:40.83278
941	807	BARBARA DA FONSECA	2006-01-09	723721672	40870850705	\N	(54)9902-9293	(54)9197-7596	\N	Ensino Técnico Completo	\N	Ensino Técnico Incompleto	15 Km	2021-01-16	2	2	2	5	2021-08-30 00:45:40.83278
942	809	ROGÉRIO JÚNIOR RIZZON	2006-11-08	262230785	70488873087	\N	(54)9157-8338	(54)3291-5166	\N	Ensino médio Incomplento	\N	Ensino superior Incompleto	5 Km	2021-01-16	4	1	6	3	2021-08-30 00:45:40.83278
943	810	TIÉRI TELLES PEDROSO	2006-09-29	169303676	76873473707	\N	(54)9903-0613	(54)9947-7456	\N	Ensino Técnico Completo	\N	Ensino Técnico Completo	10 Km	2021-01-12	1	2	6	3	2021-08-30 00:45:40.83278
944	812	GRACIELE SCOPEL	2006-09-18	505696402	29218083782	\N	(54)9244-5604	(54)9928-0407	\N	Ensino Técnico Completo	\N	Ensino fundamental Incomplento	15 Km	2021-01-24	1	2	6	5	2021-08-30 00:45:40.83278
945	821	AUGUSTO PESSINI	2006-01-20	732566869	40374789523	\N	(54)3291-1913	(54)3291-3374	\N	Ensino médio Completo	\N	Ensino médio Incomplento	20 Km	2021-01-24	3	1	6	5	2021-08-30 00:45:40.83278
946	825	CHRISTIAN POSSO DA SILVA	2006-10-16	916676188	43219385441	\N	(54)9992-8969	(54)3291-5190	\N	Ensino médio Incomplento	\N	Ensino fundamental Incomplento	10 Km	2021-01-26	5	2	6	4	2021-08-30 00:45:40.83278
947	832	ADALBERTO ANDRÉ DOS SANTOS JUNIOR	2006-03-11	536553883	93388240715	\N	32913437	(54)9611-2906	\N	Ensino superior Completo	\N	Ensino Técnico Incompleto	1 Km	2021-02-06	3	2	6	3	2021-08-30 00:45:40.83278
948	837	CAROLINA SIMIONI BORGES	2006-08-08	691831639	78222693510	\N	(54)9980-8528	(54)3267-8011	\N	Ensino médio Completo	\N	Ensino fundamental Completo	20 Km	2021-01-14	4	2	6	2	2021-08-30 00:45:40.83278
949	839	EZEQUIEL DA SILVA SOARES MINICH	2006-11-23	819877473	82505519086	\N	(11)1111-1111	(54)3291-2688	\N	Ensino Técnico Completo	\N	Ensino Técnico Incompleto	5 Km	2021-01-15	1	2	6	3	2021-08-30 00:45:40.83278
950	845	MEL FERREIRA	2006-06-08	291557386	12631108017	\N	(54)9010-5357	(54)9600-0808	\N	Ensino superior Incompleto	\N	Ensino Técnico Completo	10 Km	2021-01-21	2	2	6	3	2021-08-30 00:45:40.83278
951	848	TAYANE PERES GONÇAVES	2006-06-11	410377410	64750668367	\N	(54)9928-6331	(54)3291-7561	\N	Ensino superior Incompleto	\N	Ensino Técnico Incompleto	1 Km	2021-02-01	4	2	6	5	2021-08-30 00:45:40.83278
952	851	RENATA CORSO PANASSOL	2006-05-22	612885781	67663829355	\N	(54)9126-5959	(54)3291-3731	\N	Ensino superior Incompleto	\N	Ensino Técnico Incompleto	1 Km	2021-02-03	4	2	6	2	2021-08-30 00:45:40.83278
953	857	KATIELE ZARDO	2006-03-19	889972203	36949945826	\N	(54)3291-4084	(54)9101-1644	\N	Ensino médio Completo	\N	Ensino Técnico Completo	15 Km	2021-01-22	4	2	6	2	2021-08-30 00:45:40.83278
954	860	BRENDA BIONDO	2006-10-14	254779153	12689821307	\N	(54)9634-8623	(54)3291-3362	\N	Ensino médio Completo	\N	Ensino fundamental Incomplento	10 Km	2021-01-20	4	2	6	5	2021-08-30 00:45:40.83278
955	865	ELENA PELLIZZARI GUERRA	2006-05-26	323570961	41624368530	\N	(54)3291-4257	(54)9998-2189	\N	Ensino médio Incomplento	\N	Ensino fundamental Completo	50 Km	2021-02-03	1	2	1	2	2021-08-30 00:45:40.83278
956	869	NOELCI MARIA ZUANAZZI SCODRO	2006-02-22	865670937	66612337994	\N	(54)9961-9194	(54)9132-4763	\N	Ensino Técnico Completo	\N	Ensino superior Incompleto	15 Km	2021-01-30	3	2	6	5	2021-08-30 00:45:40.83278
957	874	MARIA LUCIA DOS SANTOS CORRÊA	2005-12-21	618952767	75636785934	\N	(54)9187-7745	(54)3291-4865	\N	Ensino fundamental Incomplento	\N	Ensino médio Incomplento	15 Km	2021-02-03	3	2	6	3	2021-08-30 00:45:40.83278
958	879	VITALINA ALVES POSSO	2005-11-07	911355086	89100654289	\N	(54)9196-1753	(54)9967-2063	\N	Ensino Técnico Incompleto	\N	Ensino fundamental Completo	1 Km	2021-01-23	1	2	6	4	2021-08-30 00:45:40.83278
959	883	HENRIQUE RECH GRISON	2005-11-08	295100890	36022509315	\N	(54)3291-2819	(54)9241-7978	\N	Ensino Técnico Completo	\N	Ensino Técnico Completo	20 Km	2021-02-02	1	1	1	5	2021-08-30 00:45:40.83278
960	885	SUELI RODRIGUES DE SOUZA SILVA	2005-03-06	517714686	58566867286	\N	(54)9197-2339	(54)9603-3600	\N	Ensino médio Incomplento	\N	Ensino superior Completo	1 Km	2021-01-21	4	2	6	3	2021-08-30 00:45:40.83278
961	886	MURILO DOS REIS GUERRA	2005-07-24	941044010	48506006506	\N	(54)3280-1258	(54)3291-1227	\N	Ensino médio Incomplento	\N	Ensino fundamental Incomplento	1 Km	2021-01-13	3	1	6	3	2021-08-30 00:45:40.83278
962	889	LAURA ZANARDI SCAIN	2005-12-29	689137244	93891181995	\N	(54)3291-6537	(54)3291-3246	\N	Ensino Técnico Completo	\N	Ensino fundamental Incomplento	50 Km	2021-01-11	5	2	6	3	2021-08-30 00:45:40.83278
963	894	CAROLINE HENDGES DURANTE	2005-08-03	574669051	82657552375	\N	(54)3291-3423	(54)9686-0306	\N	Ensino superior Incompleto	\N	Ensino Técnico Completo	5 Km	2021-01-13	4	2	6	1	2021-08-30 00:45:40.83278
964	897	ANA ZANELLA CHEMELLO	2005-12-20	988960994	27089587698	\N	(54)9619-8125	(54)9901-0834	\N	Ensino superior Incompleto	\N	Ensino médio Completo	5 Km	2021-01-18	5	2	6	3	2021-08-30 00:45:40.83278
965	907	CARLOS GABRIEL CARDOSO HENRIQUE	2005-05-01	378569262	37664240904	\N	(54)9658-9963	(54)3291-2548	\N	Ensino Técnico Incompleto	\N	Ensino Técnico Incompleto	15 Km	2021-01-26	5	1	6	3	2021-08-30 00:45:40.83278
966	909	RAFAEL BRANCHINI	2005-07-30	926791676	69296000940	\N	(54)3291-5159	(54)9612-8138	\N	Ensino Técnico Completo	\N	Ensino médio Incomplento	50 Km	2021-02-03	1	1	6	2	2021-08-30 00:45:40.83278
967	910	LEONARDO SCODRO	2005-09-28	858253003	13395950108	\N	(54)3291-5159	(54)9983-8372	\N	Ensino fundamental Completo	\N	Ensino Técnico Completo	20 Km	2021-01-16	1	1	6	3	2021-08-30 00:45:40.83278
968	912	LUCIANO DOLIZETE ZANCHETTA	2005-07-25	277536647	20581879511	\N	\N	(54)9168-4004	\N	Ensino Técnico Incompleto	\N	Ensino superior Incompleto	15 Km	2021-01-12	1	1	6	3	2021-08-30 00:45:40.83278
969	913	ARIEL CZICHOCKI	2005-02-07	736854225	94727503333	\N	(54)3291-8200	(51)9903-2854	\N	Ensino médio Completo	\N	Ensino fundamental Incomplento	5 Km	2021-01-20	3	1	6	3	2021-08-30 00:45:40.83278
970	916	MARIA DE LURDES MORESCO	2005-08-29	431827283	90795503493	\N	(54)9144-1280	(54)3291-5075	\N	Ensino Técnico Incompleto	\N	Ensino superior Incompleto	15 Km	2021-02-06	4	2	3	4	2021-08-30 00:45:40.83278
971	917	AMANDA SANDI	2005-01-16	148551909	23681077431	\N	(54)9161-4960	(54)3291-3417	\N	Ensino fundamental Completo	\N	Ensino médio Incomplento	5 Km	2021-01-13	5	2	6	4	2021-08-30 00:45:40.83278
972	918	ANA PAULA CECHINATO SOTORIVA	2005-06-11	768187000	14981651016	\N	(54)3291-3347	(54)3291-1081	\N	Ensino Técnico Completo	\N	Ensino fundamental Incomplento	1 Km	2021-01-25	2	2	6	3	2021-08-30 00:45:40.83278
973	920	FERNANDA UEZ CASARA	2005-09-09	414532420	39048320484	\N	(54)9147-8907	(54)3291-7555	\N	Ensino fundamental Completo	\N	Ensino Técnico Incompleto	5 Km	2021-01-19	3	2	6	2	2021-08-30 00:45:40.83278
974	925	ANA JULIA TOMIELLO	2005-02-12	435421286	76099818588	\N	(54)9618-7508	(54)3291-3382	\N	Ensino Técnico Completo	\N	Ensino superior Incompleto	10 Km	2021-01-14	1	2	6	4	2021-08-30 00:45:40.83278
975	932	JOSIANE ASCARI TELES	2005-01-29	809485609	55160459679	\N	(54)9236-3617	(54)3291-3552	\N	Ensino superior Completo	\N	Ensino fundamental Incomplento	1 Km	2021-02-03	4	2	6	5	2021-08-30 00:45:40.83278
976	933	SARAH COELHO RIZZON	2004-03-21	825374279	38467655504	\N	(54)3291-6255	(54)9636-2620	\N	Ensino Técnico Completo	\N	Ensino superior Incompleto	30 Km	2021-01-24	4	2	3	5	2021-08-30 00:45:40.83278
977	934	JOÃO VITOR SOARES PEREIRA	2004-03-07	714909565	56557400615	\N	(54)9115-3737	(54)9436-3044	\N	Ensino fundamental Completo	\N	Ensino fundamental Incomplento	15 Km	2021-01-12	1	1	6	5	2021-08-30 00:45:40.83278
978	939	MARINA GABRIELA DUTRA DOS REIS	2004-02-16	153027930	62271664305	\N	(54)9668-4014	(54)9602-4110	\N	Ensino superior Incompleto	\N	Ensino médio Completo	5 Km	2021-02-03	1	2	6	2	2021-08-30 00:45:40.83278
979	944	GIOVANA POLETO	2004-04-14	382634411	75639829533	\N	(54)9167-3111	(54)9173-2696	\N	Ensino Técnico Completo	\N	Ensino superior Incompleto	10 Km	2021-01-12	1	2	6	2	2021-08-30 00:45:40.83278
980	946	LUCAS FOCHESATO SANDRI	2004-12-23	991969362	75560310811	\N	(54)3280-1103	(54)9709-2838	\N	Ensino Técnico Completo	\N	Ensino médio Incomplento	30 Km	2021-01-12	4	1	6	3	2021-08-30 00:45:40.83278
981	947	GUILHERME PEREIRA	2004-03-30	862308632	96254135119	\N	(54)3291-4528	(54)3291-4208	\N	Ensino Técnico Incompleto	\N	Ensino fundamental Incomplento	15 Km	2021-01-11	1	1	6	4	2021-08-30 00:45:40.83278
982	952	GIOVANI FRANCESCHINI	2004-07-03	798235844	92763018476	\N	32914890	(54)3291-3242	\N	Ensino superior Incompleto	\N	Ensino fundamental Incomplento	15 Km	2021-01-21	1	1	6	2	2021-08-30 00:45:40.83278
983	957	MARLON SCAIN	2004-04-29	890827058	69026801390	\N	99266027	(54)9166-3113	\N	Ensino Técnico Incompleto	\N	Ensino fundamental Completo	1 Km	2021-01-25	1	1	6	3	2021-08-30 00:45:40.83278
984	960	FABIANO RIZZON	2004-01-26	703213914	74670867666	\N	32912760	(54)9208-5162	\N	Ensino Técnico Completo	\N	Ensino Técnico Completo	5 Km	2021-01-30	4	1	6	2	2021-08-30 00:45:40.83278
985	962	CRISTINE DE ANDRADE MONTANARI	2004-03-20	199741256	11375176499	\N	32912267	(54)9175-0209	\N	Ensino Técnico Completo	\N	Ensino superior Completo	1 Km	2021-02-08	1	2	6	5	2021-08-30 00:45:40.83278
986	966	CLAITON JOSÉ ALVES	2004-11-18	781900975	23517002426	\N	32801236	(54)9969-2941	\N	Ensino superior Completo	\N	Ensino superior Completo	20 Km	2021-01-13	4	1	6	2	2021-08-30 00:45:40.83278
987	968	CAROLINE CARDOSO	2004-12-13	630568616	85311597123	\N	(54)3291-6124	(54)9999-4318	\N	Ensino médio Incomplento	\N	Ensino médio Completo	1 Km	2021-01-22	1	2	4	5	2021-08-30 00:45:40.83278
988	971	GESIEL CARDOSO DE OLIVEIRA	2004-04-15	624191625	96344906277	\N	(54)9168-9426	(54)9603-6005	\N	Ensino médio Incomplento	\N	Ensino Técnico Completo	15 Km	2021-01-17	4	1	6	3	2021-08-30 00:45:40.83278
989	975	MARQUES PEREIRA	2004-03-16	675630401	24059734760	\N	32913478	(54)3291-9172	\N	Ensino médio Completo	\N	Ensino médio Incomplento	5 Km	2021-01-28	1	1	6	3	2021-08-30 00:45:40.83278
990	976	FRANCINE BUCKELL	2004-07-15	674128946	91381716242	\N	91762322	(54)9662-2121	\N	Ensino fundamental Incomplento	\N	Ensino superior Incompleto	1 Km	2021-01-27	4	2	6	5	2021-08-30 00:45:40.83278
991	977	JÉSSICA DOS PASSOS	2004-06-07	652712574	57458764691	\N	(54)3291-1763	(54)9208-6212	\N	Ensino Técnico Incompleto	\N	Ensino fundamental Completo	50 Km	2021-02-07	4	2	6	3	2021-08-30 00:45:40.83278
992	980	ANDERSON RONEI BRITO CASTILHOS	2004-09-13	459952450	69514283517	\N	(54)9979-3744	(54)9900-2185	\N	Ensino Técnico Completo	\N	Ensino médio Incomplento	30 Km	2021-01-27	1	1	6	5	2021-08-30 00:45:40.83278
993	982	LAIANE FONGARO	2004-03-14	945317414	52953037651	\N	32913051	(54)9929-1790	\N	Ensino médio Completo	\N	Ensino Técnico Incompleto	10 Km	2021-02-08	2	2	1	3	2021-08-30 00:45:40.83278
994	989	MAIKON CAMILO PAGNA	2004-06-28	942380251	58035315057	\N	(54)9129-6196	(54)9680-8004	\N	Ensino fundamental Incomplento	\N	Ensino superior Completo	5 Km	2021-01-29	3	1	6	5	2021-08-30 00:45:40.83278
995	990	ALANA DOS PASSOS	2004-06-05	489138622	43508787357	\N	(54)3291-2330	(54)9112-2719	\N	Ensino superior Completo	\N	Ensino Técnico Incompleto	30 Km	2021-01-20	1	2	6	5	2021-08-30 00:45:40.83278
996	992	UALESSON DALL AGNO	2004-02-02	780083821	35370997597	\N	(54)3291-4781	(54)3291-1896	\N	Ensino médio Incomplento	\N	Ensino Técnico Incompleto	1 Km	2021-02-07	1	1	6	5	2021-08-30 00:45:40.83278
997	997	RENATO MONTANARI POSSA	2004-05-19	579237979	31907153083	\N	(54)9128-2425	(54)9107-8454	\N	Ensino médio Completo	\N	Ensino Técnico Incompleto	5 Km	2021-02-02	1	1	6	3	2021-08-30 00:45:40.83278
\.


--
-- TOC entry 2925 (class 0 OID 32900)
-- Dependencies: 204
-- Data for Name: tb_cor_raca; Type: TABLE DATA; Schema: relacional; Owner: postgres
--

COPY relacional.tb_cor_raca (id_cor, cor_raca) FROM stdin;
1	Brancos
2	Indígenas
3	Pretos
4	Pardos
5	Amarelos
\.


--
-- TOC entry 2940 (class 0 OID 49267)
-- Dependencies: 219
-- Data for Name: tb_cubo_matriculas; Type: TABLE DATA; Schema: relacional; Owner: postgres
--

COPY relacional.tb_cubo_matriculas (id_aluno, matricula, nome, dat_nascimento, sexo, rg, cpf, endereco, telefone, celular, nome_pai, escolaridade_pai, nome_mae, escolaridade_mae, cor_raca, deficiencia, transporte, distancia, veio_outra_escola, situacao_anterior, status_matricula, dat_matricula, turma, dat_carga) FROM stdin;
1	6	CINTIA RAFAELA FOCHESATTO	2016-03-23	Feminino	377341081	11628182667	\N	(54)3291-5202	(54)3291-3845	\N	Ensino médio Completo	\N	Ensino fundamental Completo	Pardos	Nenhuma	Carro	30 Km	Sim	Aprovado	Concluida	2021-01-26	101	2021-08-30 00:45:40.763983
2	12	FABIEL JULIAN SALVADOR	2015-06-03	Masculino	164841202	45177645026	\N	(54)3291-4378	(54)9200-3528	\N	Ensino fundamental Incomplento	\N	Ensino superior Incompleto	Brancos	Nenhuma	Ônibus	1 Km	Não	Aprovado	Concluida	2021-01-11	101	2021-08-30 00:45:40.763983
3	65	MARINES ZAMPIERI BALLARDIN	2015-09-18	Feminino	630124179	90855074599	\N	(54)9187-4885	(54)9604-2515	\N	Ensino médio Completo	\N	Ensino médio Incomplento	Brancos	Nenhuma	Carro	1 Km	Não	Aprovado	Concluida	2021-01-22	101	2021-08-30 00:45:40.763983
4	72	CAROLINE FOGAÇA	2015-05-29	Feminino	123183542	92534285049	\N	(54)3291-2578	3291-3530	\N	Ensino Técnico Incompleto	\N	Ensino superior Completo	Amarelos	Nenhuma	Carro	10 Km	Sim	Pendente	Concluida	2021-01-30	101	2021-08-30 00:45:40.763983
5	73	BIANCA CAMASSOLA	2015-01-02	Feminino	431467135	78135379162	\N	(54)3291-2902	32911959	\N	Ensino fundamental Completo	\N	Ensino fundamental Incomplento	Brancos	Nenhuma	Carro	5 Km	Não	Aprovado	Concluida	2021-01-19	101	2021-08-30 00:45:40.763983
6	96	NELCI LUCHI CASAL	2015-03-27	Feminino	170982363	28000408644	\N	(54)3291-2472	3291-4788	\N	Ensino superior Completo	\N	Ensino Técnico Incompleto	Indígenas	Nenhuma	Ônibus	10 Km	Não	Aprovado	Concluida	2021-01-22	101	2021-08-30 00:45:40.763983
7	99	MAURICIO SPIGOLON	2015-02-04	Masculino	540571866	57960758220	\N	(54)3291-7479	3291-2971	\N	Ensino médio Incomplento	\N	Ensino Técnico Completo	Pardos	Nenhuma	Ônibus	30 Km	Não	Aprovado	Concluida	2021-01-26	101	2021-08-30 00:45:40.763983
8	112	MARLI NEUMANN	2015-10-01	Feminino	854970339	15934191271	\N	(54)3291-3839	(54)9925-9948	\N	Ensino Técnico Incompleto	\N	Ensino Técnico Completo	Pardos	Deficiência auditiva	Ônibus	10 Km	Não	Aprovado	Pendente	2021-01-26	101	2021-08-30 00:45:40.763983
9	123	CRISTIANE NUNES DA CRUZ	2015-12-21	Feminino	988418789	57989943622	\N	(54)3291-3521	32911209	\N	Ensino Técnico Incompleto	\N	Ensino superior Completo	Pardos	Nenhuma	A pé	15 Km	Não	Aprovado	Concluida	2021-02-05	101	2021-08-30 00:45:40.763983
10	168	BRENDA GENTIL	2015-10-08	Feminino	265624644	77657134801	\N	(54)9627-4374	(54)9670-8008	\N	Ensino fundamental Completo	\N	Ensino Técnico Completo	Brancos	Deficiência visual	Bicicleta	20 Km	Não	Pendente	Concluida	2021-01-15	101	2021-08-30 00:45:40.763983
11	185	PATRICIA PAGNO	2015-09-07	Feminino	575514047	47186348217	\N	(54)3291-2612	(54)3291-7410	\N	Ensino Técnico Incompleto	\N	Ensino superior Incompleto	Amarelos	Deficiência motora	Carro	30 Km	Não	Reprovou	Pendente	2021-01-12	101	2021-08-30 00:45:40.763983
12	193	ANTONIO PAULO BALLARDIN	2015-11-12	Masculino	439089095	16121017190	\N	(54)9954-3783	91245608	\N	Ensino médio Completo	\N	Ensino fundamental Incomplento	Pardos	Nenhuma	Ônibus	15 Km	Não	Reprovou	Concluida	2021-02-05	101	2021-08-30 00:45:40.763983
13	196	GUILHERME DE LIMA FERNANDES	2015-09-15	Masculino	887389958	35972390509	\N	(54)9157-3394	32913449	\N	Ensino Técnico Incompleto	\N	Ensino fundamental Completo	Brancos	Nenhuma	A pé	1 Km	Não	Aprovado	Concluida	2021-02-02	101	2021-08-30 00:45:40.763983
14	201	EDUARDA SCHWARZ MACHADO	2015-04-07	Feminino	111998077	36089132052	\N	(54)9928-0226	(54)9665-2204	\N	Ensino Técnico Completo	\N	Ensino médio Completo	Brancos	Deficiência visual	Ônibus	15 Km	Não	Aprovado	Concluida	2021-01-19	101	2021-08-30 00:45:40.763983
15	212	MELISSA CASTILHOS DA SILVA	2015-08-08	Feminino	346243249	32999177687	\N	(54)3291-1548	(54)8172-9551	\N	Ensino médio Incomplento	\N	Ensino Técnico Completo	Indígenas	Nenhuma	Ônibus	15 Km	Não	Aprovado	Pendente	2021-01-17	101	2021-08-30 00:45:40.763983
16	220	JULIA POLO SUZIN	2015-07-17	Feminino	690451748	28669392956	\N	(54)9621-6932	(54)9922-2387	\N	Ensino Técnico Incompleto	\N	Ensino médio Completo	Indígenas	Nenhuma	A pé	5 Km	Não	Pendente	Concluida	2021-01-21	101	2021-08-30 00:45:40.763983
17	241	MARIA EDUARDA DE CASTILHOS	2015-11-02	Feminino	556584083	69509920765	\N	(54)8447-5345	(54)3291-6334	\N	Ensino Técnico Completo	\N	Ensino Técnico Incompleto	Indígenas	Deficiência mental	Ônibus	5 Km	Não	Aprovado	Concluida	2021-02-01	101	2021-08-30 00:45:40.763983
18	245	GABRIEL GIRARDELLO	2015-08-15	Masculino	979010461	13775779521	\N	(54)9929-9065	(54)9197-9444	\N	Ensino superior Incompleto	\N	Ensino médio Incomplento	Indígenas	Deficiência motora	Carro	5 Km	Não	Aprovado	Concluida	2021-02-06	101	2021-08-30 00:45:40.763983
19	269	ALINE ZAN SANTOS	2015-07-10	Feminino	784889587	84238402693	\N	(54)9962-9588	32914348	\N	Ensino médio Incomplento	\N	Ensino fundamental Completo	Pardos	Nenhuma	A pé	5 Km	Não	Pendente	Concluida	2021-01-24	101	2021-08-30 00:45:40.763983
20	280	CARLA VERGINIA ZUCCHETTI PIRES	2015-03-06	Feminino	453344788	65641628719	\N	(54)9924-4921	32914837	\N	Ensino superior Incompleto	\N	Ensino fundamental Completo	Pardos	Nenhuma	A pé	15 Km	Não	Aprovado	Concluida	2021-01-25	101	2021-08-30 00:45:40.763983
21	310	JESSICA MELARA	2015-05-06	Feminino	427657209	45725950199	\N	(54)9136-8052	(54)3291-2318	\N	Ensino fundamental Completo	\N	Ensino médio Completo	Amarelos	Nenhuma	Moto	1 Km	Não	Aprovado	Concluida	2021-02-01	101	2021-08-30 00:45:40.763983
22	314	CARLOS EDUARDO DA SILVA DE MORAES	2015-12-19	Masculino	358720003	76994185562	\N	(54)3291-2434	(54)9144-7578	\N	Ensino fundamental Incomplento	\N	Ensino fundamental Incomplento	Indígenas	Nenhuma	Carro	20 Km	Não	Aprovado	Pendente	2021-01-17	102	2021-08-30 00:45:40.763983
23	332	CAROLINA CORSO PANASSOL	2015-12-12	Feminino	355267772	19968736245	\N	(54)9903-4584	(54)3235-1138	\N	Ensino superior Completo	\N	Ensino superior Incompleto	Pardos	Nenhuma	Moto	15 Km	Não	Pendente	Pendente	2021-01-29	102	2021-08-30 00:45:40.763983
24	343	MATEUS MICHELON	2015-09-26	Masculino	302235642	15072865796	\N	32801114	(54)3291-1099	\N	Ensino médio Incomplento	\N	Ensino Técnico Incompleto	Brancos	Nenhuma	A pé	30 Km	Não	Reprovou	Concluida	2021-01-14	102	2021-08-30 00:45:40.763983
25	350	GISELE FRANCISCHINI	2015-08-24	Feminino	497035844	34464838111	\N	(54)9695-3080	(54)3291-9187	\N	Ensino médio Completo	\N	Ensino superior Completo	Amarelos	Nenhuma	Moto	20 Km	Não	Aprovado	Concluida	2021-01-13	102	2021-08-30 00:45:40.763983
26	353	JOSIANE VELHO MACEDO	2015-06-25	Feminino	530709797	30327722587	\N	(54)9600-4017	(54)3235-5108	\N	Ensino Técnico Completo	\N	Ensino fundamental Completo	Pardos	Nenhuma	Carro	5 Km	Não	Aprovado	Concluida	2021-01-31	102	2021-08-30 00:45:40.763983
27	379	ANDREIA DA SILVEIRA POTT	2015-06-02	Feminino	699414148	30167088455	\N	(54)9901-9284	(54)3291-3368	\N	Ensino fundamental Incomplento	\N	Ensino fundamental Completo	Pardos	Nenhuma	Moto	10 Km	Sim	Aprovado	Concluida	2021-02-01	102	2021-08-30 00:45:40.763983
28	384	GILMAR VEBER DA SILVA	2015-11-18	Masculino	955493632	41743808208	\N	(54)9241-8029	(54)3291-9100	\N	Ensino Técnico Completo	\N	Ensino médio Completo	Brancos	Nenhuma	Ônibus	10 Km	Não	Aprovado	Pendente	2021-01-23	102	2021-08-30 00:45:40.763983
29	389	BIBIANA POMPEU	2015-02-16	Feminino	832569316	40765307725	\N	(54)9904-3867	(54)9708-1383	\N	Ensino Técnico Completo	\N	Ensino Técnico Completo	Pardos	Deficiência auditiva	Moto	10 Km	Não	Reprovou	Pendente	2021-01-14	102	2021-08-30 00:45:40.763983
30	404	EDIANE REGINA DE SOUZA	2015-02-17	Feminino	732561913	82250609203	\N	(54)9121-1755	(54)9959-9558	\N	Ensino médio Incomplento	\N	Ensino Técnico Incompleto	Indígenas	Nenhuma	Moto	1 Km	Não	Aprovado	Concluida	2021-01-27	102	2021-08-30 00:45:40.763983
31	408	GABRIELA MARINA DOS SANTOS	2015-04-18	Feminino	696714023	52294010874	\N	(54)3291-4403	(54)9191-7820	\N	Ensino fundamental Completo	\N	Ensino Técnico Completo	Amarelos	Nenhuma	A pé	1 Km	Não	Aprovado	Concluida	2021-01-18	102	2021-08-30 00:45:40.763983
32	420	MILENE DA COSTA MONTANARI GAZIERO	2015-01-17	Feminino	761616505	11949423188	\N	(54)9120-1185	(51)9282-7044	\N	Ensino Técnico Incompleto	\N	Ensino Técnico Incompleto	Amarelos	Nenhuma	Bicicleta	30 Km	Não	Aprovado	Concluida	2021-02-04	102	2021-08-30 00:45:40.763983
33	499	GABRIELI DE SOUSA	2015-12-22	Masculino	137714037	26079353279	\N	\N	(54)3291-2046	\N	Ensino superior Incompleto	\N	Ensino fundamental Incomplento	Brancos	Nenhuma	A pé	15 Km	Não	Pendente	Concluida	2021-01-15	102	2021-08-30 00:45:40.763983
34	500	FABRICIO ERIK BALLARDIN	2015-11-29	Feminino	119897922	37590158418	\N	\N	(54)3291-3642	\N	Ensino superior Incompleto	\N	Ensino médio Completo	Pardos	Nenhuma	Ônibus	1 Km	Não	Aprovado	Concluida	2021-02-06	102	2021-08-30 00:45:40.763983
35	530	LETÍCIA SORANZO	2015-04-05	Feminino	610051059	84023896615	\N	(54)3291-4201	32913005	\N	Ensino fundamental Incomplento	\N	Ensino superior Completo	Brancos	Nenhuma	Ônibus	50 Km	Não	Aprovado	Concluida	2021-01-14	102	2021-08-30 00:45:40.763983
36	531	MICHAEL PEDRO BOFF	2015-09-02	Masculino	866486108	30781470015	\N	(54)9122-9290	32915337	\N	Ensino médio Completo	\N	Ensino fundamental Completo	Pardos	Deficiência visual	Carro	15 Km	Não	Aprovado	Concluida	2021-01-14	102	2021-08-30 00:45:40.763983
37	532	GELCEMARA CASANOVA	2015-11-27	Feminino	754886918	78663815870	\N	(54)3291-3640	(54)3291-4124	\N	Ensino fundamental Incomplento	\N	Ensino superior Completo	Pardos	Nenhuma	Carro	5 Km	Não	Aprovado	Concluida	2021-01-22	102	2021-08-30 00:45:40.763983
38	544	GERCI BARBOZA	2015-03-19	Masculino	799346281	92883852435	\N	(54)3291-1437	(54)9923-6992	\N	Ensino superior Completo	\N	Ensino médio Incomplento	Pretos	Nenhuma	Ônibus	5 Km	Não	Reprovou	Concluida	2021-02-02	102	2021-08-30 00:45:40.763983
39	556	ROSIMERI ASCARI	2015-11-09	Feminino	164763720	63738715715	\N	(54)9139-5992	(54)3291-5138	\N	Ensino médio Completo	\N	Ensino fundamental Incomplento	Indígenas	Deficiência mental	Ônibus	5 Km	Não	Pendente	Concluida	2021-01-24	102	2021-08-30 00:45:40.763983
40	628	 GABRIEL CASSOL	2015-05-31	Masculino	738145553	12554392191	\N	(54)3291-7487	(54)8116-2060	\N	Ensino fundamental Completo	\N	Ensino médio Incomplento	Amarelos	Nenhuma	Ônibus	20 Km	Não	Pendente	Concluida	2021-01-21	102	2021-08-30 00:45:40.763983
41	644	 THALES ZATTA MEDEIROS	2015-08-06	Masculino	945652101	47115350514	\N	(54)3291-6355	(54)9926-8613	\N	Ensino médio Completo	\N	Ensino Técnico Completo	Pardos	Nenhuma	Ônibus	5 Km	Não	Aprovado	Concluida	2021-01-11	102	2021-08-30 00:45:40.763983
42	660	 EDUARDA LEMOS LEITE	2015-01-26	Feminino	862667161	10537582782	\N	(54)3291-4942	(54)9109-8235	\N	Ensino Técnico Completo	\N	Ensino fundamental Completo	Pardos	Nenhuma	A pé	1 Km	Não	Aprovado	Concluida	2021-01-20	102	2021-08-30 00:45:40.763983
43	670	 NATHÁLIA TOMIELLO	2015-11-04	Feminino	906901698	41723381962	\N	(54)9619-9161	(54)9958-5314	\N	Ensino Técnico Incompleto	\N	Ensino superior Incompleto	Brancos	Nenhuma	A pé	15 Km	Não	Aprovado	Concluida	2021-01-25	102	2021-08-30 00:45:40.763983
44	694	 HELEN DA COSTA FRANÇA	2015-02-12	Feminino	948492466	35602078816	\N	(54)9134-4156	(54)8435-7135	\N	Ensino superior Completo	\N	Ensino Técnico Completo	Amarelos	Nenhuma	Carro	20 Km	Não	Aprovado	Concluida	2021-01-14	103	2021-08-30 00:45:40.763983
45	695	 TALIA ROSA FORTUNATTI	2015-02-08	Feminino	975830997	89071210860	\N	(54)9635-5019	3291-4573	\N	Ensino superior Completo	\N	Ensino superior Completo	Brancos	Nenhuma	Ônibus	1 Km	Não	Aprovado	Concluida	2021-01-21	103	2021-08-30 00:45:40.763983
46	711	ELISA GUERRA	2015-01-14	Feminino	250978092	74257143916	\N	(54)3921-7220	(54)3291-5307	\N	Ensino fundamental Incomplento	\N	Ensino superior Incompleto	Amarelos	Nenhuma	A pé	1 Km	Não	Reprovou	Concluida	2021-01-18	103	2021-08-30 00:45:40.763983
47	726	JACIELI SUZIN	2015-02-09	Feminino	311636023	87394266524	\N	(54)9620-3908	(54)3291-5304	\N	Ensino superior Incompleto	\N	Ensino fundamental Completo	Brancos	Nenhuma	Ônibus	1 Km	Não	Reprovou	Concluida	2021-02-05	103	2021-08-30 00:45:40.763983
48	753	DANIELE CASAROTTO PREBIANCA	2015-06-11	Feminino	159383844	25710716517	\N	(54)3291-7073	(54)3291-1962	\N	Ensino superior Completo	\N	Ensino fundamental Completo	Brancos	Nenhuma	A pé	15 Km	Não	Aprovado	Concluida	2021-02-08	103	2021-08-30 00:45:40.763983
49	769	ANA JULIA POSSA	2015-12-12	Feminino	824471304	11541353040	\N	(54)9109-8973	(54)9197-1955	\N	Ensino médio Incomplento	\N	Ensino fundamental Incomplento	Amarelos	Nenhuma	Ônibus	15 Km	Não	Aprovado	Pendente	2021-01-18	103	2021-08-30 00:45:40.763983
50	797	DEMIS ALAN SANDI MOREIRA	2015-08-21	Feminino	991338952	11752150797	\N	(54)9949-0598	(54)9671-5838	\N	Ensino médio Completo	\N	Ensino médio Incomplento	Pardos	Deficiência visual	Moto	30 Km	Não	Pendente	Pendente	2021-02-08	103	2021-08-30 00:45:40.763983
51	819	VICENTE DA LUZ	2015-11-05	Masculino	220821997	91349859711	\N	(54)9926-8054	(54)9189-6683	\N	Ensino superior Incompleto	\N	Ensino Técnico Incompleto	Pardos	Nenhuma	Ônibus	10 Km	Sim	Aprovado	Concluida	2021-01-31	103	2021-08-30 00:45:40.763983
52	820	MARINÊS BOMBANA RIZZON	2015-06-16	Feminino	311253391	79930942856	\N	(54)9919-8672	(54)8435-2581	\N	Ensino superior Completo	\N	Ensino superior Completo	Amarelos	Deficiência auditiva	Ônibus	30 Km	Não	Aprovado	Concluida	2021-01-20	103	2021-08-30 00:45:40.763983
53	841	ANDREI VIEIRA	2015-12-24	Masculino	404633871	48906082014	\N	(54)9157-5235	(54)9673-9077	\N	Ensino médio Incomplento	\N	Ensino médio Incomplento	Pardos	Nenhuma	A pé	5 Km	Não	Aprovado	Concluida	2021-01-25	103	2021-08-30 00:45:40.763983
54	844	LAURO SOBOLESWKI FLORES	2015-06-30	Masculino	662484002	59996347462	\N	(54)9912-4692	(54)9932-2231	\N	Ensino fundamental Completo	\N	Ensino Técnico Incompleto	Pardos	Nenhuma	Carro	5 Km	Não	Aprovado	Pendente	2021-01-23	103	2021-08-30 00:45:40.763983
55	863	DENOI MARIA LEONARDELLI CAVALLI	2015-01-04	Feminino	892661432	43378777922	\N	(54)9971-1252	(54)9180-0938	\N	Ensino Técnico Completo	\N	Ensino fundamental Completo	Amarelos	Nenhuma	Carro	50 Km	Não	Aprovado	Concluida	2021-01-26	103	2021-08-30 00:45:40.763983
56	898	AIRTON LUIZ CANALE FILHO	2015-01-30	Masculino	554643681	10635335277	\N	(54)3291-3106	(54)9183-9486	\N	Ensino fundamental Incomplento	\N	Ensino Técnico Incompleto	Pretos	Nenhuma	A pé	1 Km	Não	Reprovou	Pendente	2021-01-17	103	2021-08-30 00:45:40.763983
57	927	LUAN PINTO BRITO	2015-09-23	Feminino	118245193	61086054944	\N	(54)9957-5008	(54)9123-9838	\N	Ensino superior Completo	\N	Ensino Técnico Completo	Indígenas	Nenhuma	A pé	20 Km	Sim	Aprovado	Concluida	2021-01-14	103	2021-08-30 00:45:40.763983
58	943	CAMILA DA SILVA BRESOLIN POSSA	2015-08-15	Feminino	699248558	30441238912	\N	(54)9627-6013	(54)9190-0812	\N	Ensino superior Incompleto	\N	Ensino superior Completo	Pretos	Nenhuma	A pé	5 Km	Não	Aprovado	Concluida	2021-02-01	103	2021-08-30 00:45:40.763983
59	963	PATRÍCIA CITTON	2015-08-31	Feminino	570574858	21089126886	\N	91318737	(54)9700-8428	\N	Ensino médio Incomplento	\N	Ensino Técnico Incompleto	Brancos	Nenhuma	Ônibus	5 Km	Não	Aprovado	Concluida	2021-02-02	103	2021-08-30 00:45:40.763983
60	964	RITA DE CASSIA BOGO	2015-06-15	Feminino	868699656	45896439716	\N	99529552	(54)9980-2117	\N	Ensino fundamental Incomplento	\N	Ensino médio Incomplento	Amarelos	Deficiência motora	Ônibus	30 Km	Sim	Aprovado	Concluida	2021-01-29	103	2021-08-30 00:45:40.763983
61	967	GUILHERME CICHIN SPIGOLON	2015-04-20	Masculino	241117065	83340317014	\N	(54)9949-5074	(54)9650-2698	\N	Ensino médio Completo	\N	Ensino Técnico Completo	Brancos	Deficiência visual	A pé	20 Km	Não	Aprovado	Concluida	2021-01-31	103	2021-08-30 00:45:40.763983
62	978	MARIA TERESA CECHINATO	2015-06-26	Feminino	313461052	88625859023	\N	(54)3235-5114	(54)3280-1136	\N	Ensino Técnico Completo	\N	Ensino Técnico Completo	Pardos	Deficiência auditiva	A pé	20 Km	Não	Pendente	Concluida	2021-01-23	103	2021-08-30 00:45:40.763983
63	981	GENAINA PRISCILA PAGNO	2015-07-24	Feminino	628965023	20245144909	\N	(54)3291-3564	(54)8435-7134	\N	Ensino fundamental Incomplento	\N	Ensino superior Incompleto	Pardos	Nenhuma	Carro	15 Km	Não	Pendente	Concluida	2021-01-14	103	2021-08-30 00:45:40.763983
64	987	LIAMARA GARBIN RODRIGUES	2015-09-23	Feminino	227403556	55310981162	\N	(  )9946-9354	(54)9210-7586	\N	Ensino fundamental Incomplento	\N	Ensino Técnico Completo	Brancos	Deficiência visual	Ônibus	1 Km	Não	Aprovado	Concluida	2021-02-04	103	2021-08-30 00:45:40.763983
65	75	NATÁLIA CAMASSOLA	2014-07-26	Feminino	403399474	12515157361	\N	\N	3281022	\N	Ensino médio Completo	\N	Ensino Técnico Completo	Pretos	Deficiência visual	A pé	1 Km	Não	Aprovado	Pendente	2021-01-19	201	2021-08-30 00:45:40.763983
66	105	SUELI TERESINHA VALDEZ	2014-02-19	Feminino	778432256	66117047517	\N	(54)3291-8200	(54)3291-4045	\N	Ensino superior Incompleto	\N	Ensino Técnico Completo	Brancos	Nenhuma	Carro	1 Km	Não	Pendente	Concluida	2021-02-03	201	2021-08-30 00:45:40.763983
67	128	FRANCIELI RODRIGUES DOS SANTOS	2014-10-01	Feminino	998570980	96337592770	\N	(54)3291-2129	32678229	\N	Ensino superior Incompleto	\N	Ensino Técnico Incompleto	Brancos	Nenhuma	Carro	15 Km	Não	Aprovado	Pendente	2021-01-14	201	2021-08-30 00:45:40.763983
68	164	MARIA EDUARDA BRESOLIN CRESTANA	2014-03-31	Feminino	730859298	83783588594	\N	(54)3291-7501	32914430	\N	Ensino médio Completo	\N	Ensino fundamental Completo	Pardos	Nenhuma	Bicicleta	1 Km	Não	Pendente	Concluida	2021-01-24	201	2021-08-30 00:45:40.763983
69	171	NILCE SUSANA MENGON	2014-01-31	Feminino	971311523	31643817116	\N	(54)3291-2930	32911875	\N	Ensino fundamental Incomplento	\N	Ensino médio Incomplento	Amarelos	Deficiência visual	Ônibus	5 Km	Sim	Aprovado	Pendente	2021-02-06	201	2021-08-30 00:45:40.763983
70	174	LUIZ BUGANÇA	2014-04-19	Masculino	963272766	18395966747	\N	(54)9210-4833	91128043	\N	Ensino superior Incompleto	\N	Ensino superior Incompleto	Brancos	Nenhuma	Ônibus	5 Km	Não	Aprovado	Concluida	2021-01-30	201	2021-08-30 00:45:40.763983
71	186	MARIA JOEMA MACEDO DOS SANTOS	2014-11-22	Feminino	310056310	39740903468	\N	(54)9990-0226	3504-2447	\N	Ensino médio Incomplento	\N	Ensino superior Completo	Indígenas	Nenhuma	A pé	15 Km	Não	Aprovado	Concluida	2021-01-24	201	2021-08-30 00:45:40.763983
72	224	OTÁVIO RECH	2014-09-05	Masculino	118319438	88019175919	\N	(54)9966-2010	(54)3291-4110	\N	Ensino superior Incompleto	\N	Ensino fundamental Completo	Pardos	Nenhuma	A pé	1 Km	Não	Aprovado	Concluida	2021-01-17	201	2021-08-30 00:45:40.763983
73	246	MARCELO ALBERTO BOPSIN	2014-10-05	Masculino	591414165	66039729150	\N	(54)9641-9927	(54)9631-8342	\N	Ensino Técnico Incompleto	\N	Ensino médio Incomplento	Pretos	Nenhuma	Ônibus	10 Km	Não	Aprovado	Concluida	2021-01-31	201	2021-08-30 00:45:40.763983
74	286	PATRICK RIBEIRO LOPES	2014-04-23	Masculino	973621186	77363770246	\N	32911954	32915357	\N	Ensino superior Incompleto	\N	Ensino médio Completo	Brancos	Nenhuma	Carro	10 Km	Sim	Aprovado	Concluida	2021-01-26	201	2021-08-30 00:45:40.763983
75	290	KAMILLY DANBOWSKI	2014-11-10	Feminino	325669480	75471105934	\N	(54)9667-7878	(54)3291-3304	\N	Ensino Técnico Incompleto	\N	Ensino Técnico Incompleto	Pardos	Deficiência motora	Moto	5 Km	Sim	Aprovado	Pendente	2021-01-21	201	2021-08-30 00:45:40.763983
76	305	CLARICE ASCARI	2014-07-05	Feminino	218836564	69320190650	\N	(54)9666-7511	(54)3291-3498	\N	Ensino superior Incompleto	\N	Ensino Técnico Completo	Pretos	Nenhuma	Moto	5 Km	Não	Aprovado	Concluida	2021-01-21	201	2021-08-30 00:45:40.763983
77	315	DANIEL DA SILVA CARVALHO	2014-08-15	Masculino	862387740	60862890706	\N	(54)9928-7836	(54)3291-4783	\N	Ensino superior Incompleto	\N	Ensino superior Completo	Brancos	Nenhuma	Ônibus	1 Km	Sim	Pendente	Concluida	2021-01-30	201	2021-08-30 00:45:40.763983
78	388	GABRIELE B. GIOTTI	2014-02-17	Feminino	640897782	17307131846	\N	(54)9906-1470	(54)3291-3845	\N	Ensino superior Incompleto	\N	Ensino fundamental Incomplento	Pardos	Nenhuma	A pé	20 Km	Não	Aprovado	Concluida	2021-01-10	201	2021-08-30 00:45:40.763983
79	409	KRICIAN FURTADO BRANCO FOGAÇA	2014-11-22	Masculino	409094686	39660970866	\N	(54)9924-9291	(54)9144-3398	\N	Ensino Técnico Completo	\N	Ensino Técnico Incompleto	Brancos	Nenhuma	Ônibus	50 Km	Não	Aprovado	Concluida	2021-01-24	201	2021-08-30 00:45:40.763983
80	413	ERIK WILIAN RODRIGUES DO PRADO	2014-05-25	Masculino	292085141	21546479984	\N	(54)9973-7644	(54)3291-2761	\N	Ensino Técnico Incompleto	\N	Ensino Técnico Incompleto	Pardos	Nenhuma	Bicicleta	1 Km	Não	Aprovado	Concluida	2021-01-29	201	2021-08-30 00:45:40.763983
81	416	RODRIGO RIZZON	2014-01-23	Masculino	358138702	38477996813	\N	(54)9657-2373	(54)3291-1406	\N	Ensino médio Incomplento	\N	Ensino médio Incomplento	Brancos	Nenhuma	A pé	20 Km	Não	Aprovado	Concluida	2021-01-30	201	2021-08-30 00:45:40.763983
82	417	JHORDAN ADEMIR DOS SANTOS	2014-07-23	Masculino	322877949	79022984437	\N	(54)3235-5044	(54)3291-4064	\N	Ensino superior Completo	\N	Ensino Técnico Completo	Indígenas	Nenhuma	A pé	5 Km	Não	Pendente	Concluida	2021-01-30	201	2021-08-30 00:45:40.763983
83	423	EVERTON PACHECO ALVES	2014-10-28	Masculino	789815846	16254359920	\N	(54)3235-1069	(54)3291-3277	\N	Ensino superior Completo	\N	Ensino fundamental Incomplento	Pardos	Nenhuma	Ônibus	15 Km	Não	Pendente	Concluida	2021-01-28	201	2021-08-30 00:45:40.763983
84	436	JENNIFER MACHADO DOS SANTOS	2014-07-12	Feminino	675003263	73805039575	\N	(54)9162-4411	(54)9927-3641	\N	Ensino fundamental Incomplento	\N	Ensino superior Completo	Brancos	Nenhuma	Carro	15 Km	Não	Aprovado	Concluida	2021-02-03	201	2021-08-30 00:45:40.763983
85	461	ALISSON DE CANDIDO BARBOSA	2014-01-15	Masculino	520606694	85610751352	\N	(54)9164-6665	32911020	\N	Ensino fundamental Completo	\N	Ensino superior Incompleto	Amarelos	Nenhuma	Ônibus	5 Km	Não	Reprovou	Concluida	2021-01-16	201	2021-08-30 00:45:40.763983
86	486	BRUNA CIOATO SANDI	2014-10-16	Feminino	169005293	59022438799	\N	(54)3291-3503	(54)3291-6361	\N	Ensino superior Completo	\N	Ensino Técnico Completo	Brancos	Nenhuma	A pé	1 Km	Não	Aprovado	Concluida	2021-01-19	201	2021-08-30 00:45:40.763983
87	502	EDUARDO SILVA	2014-09-21	Masculino	758142665	73041726923	\N	\N	(54)3291-7493	\N	Ensino médio Completo	\N	Ensino superior Incompleto	Brancos	Nenhuma	A pé	1 Km	Não	Aprovado	Pendente	2021-02-07	201	2021-08-30 00:45:40.763983
88	510	LEONARDO LAZZARETI	2014-11-29	Masculino	893079196	20870759286	\N	(54)3291-3738	(54)9642-2791	\N	Ensino Técnico Completo	\N	Ensino Técnico Completo	Pretos	Nenhuma	Ônibus	15 Km	Não	Reprovou	Pendente	2021-02-03	201	2021-08-30 00:45:40.763983
89	569	JOÃO FELIPE LUZ	2014-06-12	Masculino	159352796	27523248531	\N	(54)9943-2497	(54)9927-7057	\N	Ensino fundamental Incomplento	\N	Ensino fundamental Completo	Pardos	Nenhuma	Ônibus	30 Km	Sim	Aprovado	Concluida	2021-01-17	202	2021-08-30 00:45:40.763983
90	588	ALEXANDRE SORANZO	2014-09-25	Masculino	814818442	63112742576	\N	(54)3291-1692	(54)9986-3554	\N	Ensino médio Incomplento	\N	Ensino fundamental Incomplento	Brancos	Deficiência motora	Ônibus	5 Km	Não	Pendente	Concluida	2021-02-07	202	2021-08-30 00:45:40.763983
91	594	SUZANA DE FÁTIMA BORGES LAURIANO	2014-04-27	Feminino	905350823	41006734260	\N	(54)9919-8322	(54)3291-3348	\N	Ensino médio Incomplento	\N	Ensino fundamental Incomplento	Indígenas	Nenhuma	Ônibus	20 Km	Não	Aprovado	Pendente	2021-02-02	202	2021-08-30 00:45:40.763983
92	618	RODRIGO SOLDATELLI DA ROSA	2014-03-28	Masculino	672648480	78941340243	\N	(54)9109-1841	(54)9618-2718	\N	Ensino Técnico Completo	\N	Ensino médio Completo	Pretos	Nenhuma	Ônibus	20 Km	Não	Aprovado	Concluida	2021-01-23	202	2021-08-30 00:45:40.763983
93	649	 DAIANE MASCARELLO	2014-10-19	Feminino	355844421	17731200313	\N	(54)9110-1825	(54)3291-4308	\N	Ensino médio Completo	\N	Ensino Técnico Incompleto	Brancos	Nenhuma	Carro	5 Km	Não	Aprovado	Pendente	2021-02-01	202	2021-08-30 00:45:40.763983
94	675	 FELIPE ZANELLA	2014-01-22	Masculino	385458819	17485375510	\N	(11)1111-1111	(54)3291-6520	\N	Ensino superior Completo	\N	Ensino Técnico Incompleto	Brancos	Nenhuma	Bicicleta	5 Km	Não	Aprovado	Pendente	2021-01-24	202	2021-08-30 00:45:40.763983
95	681	 TAYANE PERES GONÇALVES	2014-09-28	Feminino	862795659	52926645462	\N	(54)9961-3621	(54)9941-5547	\N	Ensino superior Completo	\N	Ensino fundamental Completo	Pardos	Nenhuma	Carro	5 Km	Não	Aprovado	Concluida	2021-01-29	202	2021-08-30 00:45:40.763983
96	698	 DANIEL BARBOSA LIMA	2014-08-31	Masculino	436222367	38881334747	\N	(54)9912-6124	(54)3291-2215	\N	Ensino superior Incompleto	\N	Ensino fundamental Incomplento	Brancos	Nenhuma	Moto	30 Km	Não	Aprovado	Concluida	2021-01-13	202	2021-08-30 00:45:40.763983
97	704	CAMILA SELENE QUISSINI	2014-04-25	Feminino	783164698	77590203999	\N	(54)9253-2184	(54)3291-4111	\N	Ensino superior Completo	\N	Ensino superior Completo	Brancos	Nenhuma	A pé	15 Km	Não	Pendente	Pendente	2021-02-04	202	2021-08-30 00:45:40.763983
98	705	CAIO IAN MAR LEMOS	2014-03-29	Masculino	408811979	77939852443	\N	(54)3235-1167	(54)9979-2704	\N	Ensino Técnico Incompleto	\N	Ensino médio Incomplento	Pretos	Nenhuma	Carro	20 Km	Não	Aprovado	Concluida	2021-01-11	202	2021-08-30 00:45:40.763983
99	724	ELOIZA CICHIN CARARO	2014-02-10	Feminino	857003197	98279752422	\N	(54)9706-5117	(54)8116-6922	\N	Ensino Técnico Incompleto	\N	Ensino superior Completo	Brancos	Nenhuma	A pé	15 Km	Não	Aprovado	Pendente	2021-01-21	202	2021-08-30 00:45:40.763983
100	755	AUGUSTO RIZZON	2014-01-31	Masculino	288323514	96846779269	\N	(54)8119-3624	(54)9176-3971	\N	Ensino superior Incompleto	\N	Ensino superior Incompleto	Brancos	Nenhuma	Ônibus	10 Km	Não	Aprovado	Concluida	2021-02-03	202	2021-08-30 00:45:40.763983
101	768	MILENA VEDANA	2014-10-13	Feminino	497015083	10499603525	\N	(54)9110-6394	(54)3291-1808	\N	Ensino médio Incomplento	\N	Ensino Técnico Completo	Pardos	Deficiência visual	Ônibus	1 Km	Não	Aprovado	Pendente	2021-01-19	202	2021-08-30 00:45:40.763983
102	781	WILLIAN DE LIMA	2014-03-26	Masculino	210170347	27506448247	\N	(54)3291-4411	(54)3291-1840	\N	Ensino Técnico Completo	\N	Ensino superior Completo	Pardos	Nenhuma	Ônibus	30 Km	Sim	Aprovado	Concluida	2021-01-11	202	2021-08-30 00:45:40.763983
103	784	BRUNO ZANETTE	2014-10-14	Masculino	943315709	85215917313	\N	(54)9157-7598	(54)3291-2887	\N	Ensino superior Incompleto	\N	Ensino superior Incompleto	Brancos	Nenhuma	Bicicleta	10 Km	Não	Aprovado	Concluida	2021-01-21	202	2021-08-30 00:45:40.763983
104	786	MATHEUS SIOTA DE LIMA	2014-08-07	Masculino	492091152	83369385707	\N	(51)8033-4543	(54)9685-0114	\N	Ensino superior Completo	\N	Ensino fundamental Incomplento	Pardos	Nenhuma	A pé	15 Km	Não	Aprovado	Pendente	2021-01-18	202	2021-08-30 00:45:40.763983
105	801	JONATHAN DE LOOK	2014-01-21	Masculino	877337862	78280492350	\N	(54)3291-5075	(54)9162-3576	\N	Ensino fundamental Completo	\N	Ensino médio Incomplento	Amarelos	Nenhuma	Moto	5 Km	Não	Aprovado	Concluida	2021-02-04	202	2021-08-30 00:45:40.763983
106	803	EMANUEL GOMES	2014-12-16	Masculino	982411382	85317500207	\N	(54)9244-0316	(54)9189-6683	\N	Ensino Técnico Incompleto	\N	Ensino fundamental Completo	Brancos	Nenhuma	Ônibus	1 Km	Não	Aprovado	Concluida	2021-01-12	202	2021-08-30 00:45:40.763983
107	831	IARA STUDIZINSKI	2014-11-29	Feminino	589245932	56035943855	\N	(54)9656-3054	(54)9165-1573	\N	Ensino fundamental Incomplento	\N	Ensino Técnico Completo	Amarelos	Nenhuma	Moto	1 Km	Não	Aprovado	Pendente	2021-02-06	202	2021-08-30 00:45:40.763983
108	876	MAIQUI SOLDERA	2014-07-18	Masculino	698493215	87273677987	\N	(54)9953-3581	(54)3291-4466	\N	Ensino Técnico Completo	\N	Ensino médio Incomplento	Pardos	Nenhuma	Carro	10 Km	Não	Aprovado	Concluida	2021-01-11	202	2021-08-30 00:45:40.763983
109	882	RUI RIZZON	2014-04-08	Masculino	876736531	79918511147	\N	(54)9623-7374	(54)9942-2699	\N	Ensino fundamental Incomplento	\N	Ensino Técnico Incompleto	Amarelos	Nenhuma	Ônibus	5 Km	Não	Pendente	Pendente	2021-02-06	202	2021-08-30 00:45:40.763983
110	892	RUBIANE GUERRA	2014-05-23	Feminino	687576178	28867699886	\N	(54)9917-0716	(54)9130-8423	\N	Ensino fundamental Incomplento	\N	Ensino Técnico Completo	Brancos	Nenhuma	Ônibus	10 Km	Sim	Aprovado	Concluida	2021-01-28	202	2021-08-30 00:45:40.763983
111	901	JOÃO MARCOS CECATO	2014-04-04	Masculino	653341396	60551312321	\N	(54)3291-3437	(54)9623-2883	\N	Ensino Técnico Completo	\N	Ensino superior Incompleto	Brancos	Deficiência auditiva	Carro	30 Km	Não	Aprovado	Concluida	2021-01-26	202	2021-08-30 00:45:40.763983
112	903	LAURA CASTILHOS DOS REIS	2014-07-11	Feminino	479460417	25466625175	\N	(54)9943-9158	(54)9982-5508	\N	Ensino fundamental Incomplento	\N	Ensino Técnico Incompleto	Pretos	Nenhuma	A pé	10 Km	Não	Pendente	Pendente	2021-02-01	202	2021-08-30 00:45:40.763983
113	937	TAINARA DA SILVA CARDOSO	2014-12-24	Feminino	433739925	71585214511	\N	(54)9658-0856	(53)9954-1108	\N	Ensino fundamental Incomplento	\N	Ensino Técnico Incompleto	Indígenas	Nenhuma	Moto	5 Km	Não	Aprovado	Concluida	2021-02-07	202	2021-08-30 00:45:40.763983
114	941	MARIA CRISTINA MARCANZONI	2014-06-01	Feminino	691180897	68934816916	\N	(54)9181-2124	(54)3291-2156	\N	Ensino médio Completo	\N	Ensino Técnico Completo	Brancos	Deficiência motora	Carro	30 Km	Não	Aprovado	Pendente	2021-01-13	202	2021-08-30 00:45:40.763983
115	985	AMANDA SCODRO	2014-03-02	Feminino	598656146	78364540257	\N	32912596	(54)9910-4829	\N	Ensino fundamental Completo	\N	Ensino superior Incompleto	Pardos	Deficiência visual	Moto	15 Km	Não	Reprovou	Concluida	2021-01-13	202	2021-08-30 00:45:40.763983
116	28	CRISTIAN CAMATTI MENEGON	2013-06-08	Masculino	469054691	88071449436	\N	(54)8154-6723	(54)9996-4577	\N	Ensino fundamental Incomplento	\N	Ensino fundamental Incomplento	Brancos	Nenhuma	Carro	15 Km	Não	Aprovado	Concluida	2021-01-29	301	2021-08-30 00:45:40.763983
117	58	GUILHERME FIGUEIRÓ HALLAL	2013-04-13	Masculino	696361017	12949541173	\N	(54)3291-2557	(54)9144-8826	\N	Ensino Técnico Completo	\N	Ensino fundamental Incomplento	Pardos	Nenhuma	Ônibus	5 Km	Não	Aprovado	Concluida	2021-02-01	301	2021-08-30 00:45:40.763983
118	76	JÉSSICA FOCHESATO	2013-03-07	Feminino	862313949	55348667160	\N	(54)9648-0061	32911762	\N	Ensino médio Incomplento	\N	Ensino médio Completo	Amarelos	Nenhuma	Carro	10 Km	Não	Pendente	Concluida	2021-01-23	301	2021-08-30 00:45:40.763983
119	91	DEISE CARLA BOSSARDI	2013-09-24	Feminino	938757069	90897524215	\N	(54)3291-8100	(54)9179-7950	\N	Ensino Técnico Incompleto	\N	Ensino superior Completo	Indígenas	Nenhuma	Ônibus	5 Km	Não	Aprovado	Concluida	2021-01-13	301	2021-08-30 00:45:40.763983
120	102	RICARDO DALZOTTO	2013-03-12	Masculino	861610863	74912584514	\N	(54)3291-9848	32914199	\N	Ensino médio Incomplento	\N	Ensino superior Completo	Brancos	Nenhuma	Carro	15 Km	Não	Aprovado	Concluida	2021-01-26	301	2021-08-30 00:45:40.763983
121	106	BERNARDETE PEROZZO RIZZON	2013-01-20	Feminino	171862056	87388320308	\N	(54)9143-4902	(54)3291-3107	\N	Ensino médio Completo	\N	Ensino fundamental Completo	Brancos	Nenhuma	Ônibus	1 Km	Não	Pendente	Concluida	2021-01-25	301	2021-08-30 00:45:40.763983
122	139	ARTHUR DE ALMEIDA RAMOS	2013-02-01	Masculino	415851881	84202187724	\N	(54)9146-2360	(54)9149-7396	\N	Ensino superior Incompleto	\N	Ensino fundamental Completo	Brancos	Nenhuma	A pé	10 Km	Não	Aprovado	Concluida	2021-01-30	301	2021-08-30 00:45:40.763983
123	150	AMANDA DA SILVA	2013-12-06	Feminino	327305373	36419248218	\N	(54)9668-6283	(54)3291-4257	\N	Ensino Técnico Completo	\N	Ensino médio Completo	Brancos	Nenhuma	Ônibus	10 Km	Não	Aprovado	Concluida	2021-02-01	301	2021-08-30 00:45:40.763983
124	159	MILENA BASSANESI	2013-10-06	Feminino	746196684	60769355982	\N	(54)9119-2863	(54)9128-0051	\N	Ensino médio Completo	\N	Ensino fundamental Completo	Pardos	Nenhuma	Carro	30 Km	Sim	Reprovou	Concluida	2021-01-27	301	2021-08-30 00:45:40.763983
125	178	ERIC DALLAGNO	2013-12-05	Feminino	376893610	13314736967	\N	(54)9677-0281	(54)3291-2214	\N	Ensino fundamental Completo	\N	Ensino Técnico Completo	Brancos	Nenhuma	Carro	5 Km	Sim	Aprovado	Pendente	2021-02-01	301	2021-08-30 00:45:40.763983
126	200	LUCAS PEDROTI	2013-07-02	Masculino	952916222	40975645102	\N	(54)9113-0022	(54)3235-1657	\N	Ensino fundamental Completo	\N	Ensino Técnico Completo	Amarelos	Nenhuma	Ônibus	30 Km	Não	Aprovado	Concluida	2021-02-05	301	2021-08-30 00:45:40.763983
127	214	GABRIEL ANGELO CHINELATO TAUFER	2013-05-01	Masculino	262923469	86717495940	\N	(54)9993-1624	(54)9652-9088	\N	Ensino médio Incomplento	\N	Ensino fundamental Incomplento	Brancos	Deficiência mental	Ônibus	1 Km	Sim	Pendente	Concluida	2021-01-13	301	2021-08-30 00:45:40.763983
128	215	OTÁVIO AUGUSTO DAROS	2013-06-28	Masculino	788413507	84515795040	\N	(54)9184-2962	32801150	\N	Ensino Técnico Incompleto	\N	Ensino médio Incomplento	Pardos	Deficiência visual	A pé	10 Km	Não	Pendente	Concluida	2021-01-31	301	2021-08-30 00:45:40.763983
129	230	ÁLVARO GATELLI DE SOUZA	2013-08-29	Masculino	637256327	18435054927	\N	(54)9196-7654	\N	\N	Ensino fundamental Completo	\N	Ensino fundamental Incomplento	Brancos	Nenhuma	Carro	5 Km	Não	Reprovou	Concluida	2021-01-28	301	2021-08-30 00:45:40.763983
130	255	MAICON JONATAN SOARES SILVEIRA SOUZA	2013-12-11	Masculino	559498126	93326842989	\N	(54)9628-1388	(54)9987-6134	\N	Ensino superior Completo	\N	Ensino Técnico Incompleto	Indígenas	Deficiência auditiva	A pé	1 Km	Não	Aprovado	Concluida	2021-02-02	301	2021-08-30 00:45:40.763983
131	266	 PAMELLA FERREIRA DE OLIVEIRA CARAMORI	2013-03-25	Feminino	550787377	74831795208	\N	(54)9935-6498	(00)0000-0000	\N	Ensino superior Incompleto	\N	Ensino Técnico Incompleto	Indígenas	Nenhuma	Ônibus	1 Km	Não	Aprovado	Concluida	2021-01-11	301	2021-08-30 00:45:40.763983
132	267	MATEUS ROMANI	2013-12-09	Masculino	203544582	65955591215	\N	\N	(54)3291-4837	\N	Ensino fundamental Incomplento	\N	Ensino médio Incomplento	Pretos	Nenhuma	A pé	15 Km	Não	Reprovou	Pendente	2021-02-06	301	2021-08-30 00:45:40.763983
133	287	JÚLIA CAVAGNOLLI DE CASTILHOS	2013-07-14	Feminino	818369524	70050685410	\N	(54)3291-1767	91017750	\N	Ensino fundamental Completo	\N	Ensino superior Completo	Pardos	Nenhuma	Moto	10 Km	Não	Pendente	Concluida	2021-01-10	301	2021-08-30 00:45:40.763983
134	288	RAFAEL FONGARO	2013-09-17	Masculino	399625091	78180666447	\N	(54)9614-7370	(54)3291-4235	\N	Ensino fundamental Completo	\N	Ensino médio Completo	Amarelos	Nenhuma	Ônibus	5 Km	Sim	Reprovou	Concluida	2021-01-31	301	2021-08-30 00:45:40.763983
135	292	TANIELE DE ATAIDE DE VIDI	2013-01-22	Feminino	747842392	74133761841	\N	(54)9971-5271	(54)3504-1247	\N	Ensino fundamental Incomplento	\N	Ensino médio Completo	Pardos	Nenhuma	A pé	10 Km	Não	Aprovado	Concluida	2021-02-04	301	2021-08-30 00:45:40.763983
136	311	FERNANDO VIEIRA GOLARTE	2013-07-29	Masculino	719218707	15103029043	\N	32912261	(54)3291-4799	\N	Ensino médio Completo	\N	Ensino médio Incomplento	Pardos	Nenhuma	Carro	5 Km	Não	Pendente	Concluida	2021-02-01	301	2021-08-30 00:45:40.763983
137	312	LUCAS MENEGUSSI	2013-04-23	Masculino	561719844	13666249702	\N	(54)9137-5784	(54)8115-3154	\N	Ensino médio Completo	\N	Ensino fundamental Incomplento	Indígenas	Nenhuma	A pé	30 Km	Não	Reprovou	Concluida	2021-01-10	301	2021-08-30 00:45:40.763983
138	313	CAROLINE DE CARVALHO BORGES	2013-09-28	Feminino	369861972	41635844093	\N	(54)9111-2221	(54)3291-5190	\N	Ensino médio Completo	\N	Ensino superior Incompleto	Amarelos	Nenhuma	Ônibus	1 Km	Não	Aprovado	Concluida	2021-01-31	302	2021-08-30 00:45:40.763983
139	317	ANDREI LIDUVINO MASCARELLO	2013-03-17	Masculino	378282060	38340100459	\N	(54)9101-7750	(54)9965-4045	\N	Ensino médio Incomplento	\N	Ensino médio Completo	Brancos	Nenhuma	Ônibus	10 Km	Não	Pendente	Concluida	2021-01-15	302	2021-08-30 00:45:40.763983
140	320	DANUSA DA ROCHA RENOSTO	2013-09-23	Feminino	419499115	28549372437	\N	(54)3291-4998	(54)3291-3909	\N	Ensino fundamental Completo	\N	Ensino superior Completo	Pardos	Nenhuma	Ônibus	30 Km	Não	Pendente	Concluida	2021-02-05	302	2021-08-30 00:45:40.763983
141	335	MAURÍCIO ANDREOLI	2013-05-22	Masculino	834242138	27316702106	\N	(54)9907-0915	(54)9626-8449	\N	Ensino fundamental Incomplento	\N	Ensino fundamental Completo	Brancos	Nenhuma	Ônibus	1 Km	Não	Pendente	Concluida	2021-01-14	302	2021-08-30 00:45:40.763983
142	365	JULIANA GOMES	2013-05-18	Feminino	202446774	96219438023	\N	(54)9971-5520	(54)9923-3565	\N	Ensino fundamental Completo	\N	Ensino médio Incomplento	Brancos	Nenhuma	Carro	5 Km	Não	Aprovado	Concluida	2021-01-27	302	2021-08-30 00:45:40.763983
143	392	ISADORA MAGRIN MARCON	2013-08-15	Feminino	704497083	97952828605	\N	(54)9142-6062	(54)8447-5345	\N	Ensino superior Incompleto	\N	Ensino Técnico Incompleto	Pardos	Nenhuma	A pé	15 Km	Não	Aprovado	Pendente	2021-01-14	302	2021-08-30 00:45:40.763983
144	426	MARIA EDUARDA DE SOUZA	2013-11-23	Feminino	104907414	90742358421	\N	(54)9163-9869	32912259	\N	Ensino médio Incomplento	\N	Ensino médio Incomplento	Pretos	Nenhuma	Ônibus	1 Km	Não	Aprovado	Pendente	2021-01-16	302	2021-08-30 00:45:40.763983
145	441	BARBARA PEDROSO DE FREITAS	2013-01-08	Feminino	905031443	42919883002	\N	(54)9144-9202	\N	\N	Ensino superior Completo	\N	Ensino superior Completo	Pardos	Deficiência auditiva	Ônibus	50 Km	Não	Reprovou	Concluida	2021-01-29	302	2021-08-30 00:45:40.763983
146	454	EDNO ZANELLA	2013-02-18	Masculino	305548821	44543962590	\N	(54)9168-6758	32914388	\N	Ensino fundamental Completo	\N	Ensino superior Completo	Pardos	Nenhuma	Ônibus	5 Km	Não	Aprovado	Concluida	2021-01-23	302	2021-08-30 00:45:40.763983
147	455	GABRIEL SANDRI CHEMELLO	2013-04-28	Masculino	425563914	47340493255	\N	(54)9966-0608	3291-5010	\N	Ensino Técnico Completo	\N	Ensino médio Completo	Pardos	Nenhuma	Carro	10 Km	Sim	Aprovado	Pendente	2021-01-22	302	2021-08-30 00:45:40.763983
148	476	GENAINA PAGNO	2013-06-03	Feminino	270121700	63631935029	\N	(54)9148-6802	(54)3291-4161	\N	Ensino superior Incompleto	\N	Ensino fundamental Completo	Pretos	Nenhuma	A pé	10 Km	Não	Aprovado	Pendente	2021-01-14	302	2021-08-30 00:45:40.763983
149	498	PATRICK GONÇALVES PEREIRA	2013-03-03	Feminino	446643489	74788222033	\N	\N	(54)9137-8647	\N	Ensino fundamental Incomplento	\N	Ensino Técnico Incompleto	Brancos	Nenhuma	A pé	20 Km	Não	Aprovado	Pendente	2021-01-23	302	2021-08-30 00:45:40.763983
150	526	RAFAELA GRISON	2013-11-16	Feminino	755919313	22444185052	\N	(54)9181-7054	3291-2596	\N	Ensino fundamental Incomplento	\N	Ensino Técnico Completo	Pardos	Nenhuma	A pé	10 Km	Não	Pendente	Concluida	2021-01-18	302	2021-08-30 00:45:40.763983
151	560	RICARDO JUNIOR PEDROTI	2013-03-07	Masculino	514519759	67275569750	\N	(54)9608-2320	(54)3291-2787	\N	Ensino fundamental Completo	\N	Ensino fundamental Incomplento	Brancos	Nenhuma	Ônibus	5 Km	Não	Aprovado	Concluida	2021-01-26	302	2021-08-30 00:45:40.763983
152	563	AREOLI MARGARIDA LIPOSKI RIZZON	2013-05-17	Masculino	752032694	24526590629	\N	(54)3291-1638	(54)3291-1839	\N	Ensino médio Incomplento	\N	Ensino Técnico Incompleto	Pardos	Nenhuma	Ônibus	5 Km	Não	Aprovado	Concluida	2021-01-11	302	2021-08-30 00:45:40.763983
153	573	LUCAS MOISÉS THOME DA ROSA	2013-06-05	Masculino	641938737	41553915073	\N	(54)9139-5025	(54)3291-4871	\N	Ensino fundamental Completo	\N	Ensino Técnico Completo	Amarelos	Nenhuma	Carro	1 Km	Não	Aprovado	Concluida	2021-01-11	302	2021-08-30 00:45:40.763983
154	582	MARCO ANTONIO MICHELON DE ROSSO	2013-01-12	Masculino	693855068	35780793416	\N	(54)3291-2942	32911905	\N	Ensino Técnico Incompleto	\N	Ensino superior Incompleto	Brancos	Nenhuma	A pé	1 Km	Não	Aprovado	Concluida	2021-02-06	302	2021-08-30 00:45:40.763983
155	605	CHEILA MIÉLE GIRARDINI	2013-09-09	Feminino	570394316	89388748964	\N	(54)9962-4982	(54)3291-2674	\N	Ensino superior Incompleto	\N	Ensino superior Incompleto	Pardos	Nenhuma	Ônibus	5 Km	Não	Aprovado	Pendente	2021-01-24	302	2021-08-30 00:45:40.763983
156	607	KELYN FAGUNDES DILLI	2013-10-03	Feminino	425604839	76844008173	\N	(54)9658-1833	(54)9668-2424	\N	Ensino fundamental Completo	\N	Ensino superior Incompleto	Pardos	Nenhuma	Carro	5 Km	Não	Aprovado	Pendente	2021-02-06	302	2021-08-30 00:45:40.763983
157	642	 LEONARDO GIOTTI	2013-07-05	Masculino	629836097	66160693159	\N	(  )    -	(54)3291-1792	\N	Ensino médio Incomplento	\N	Ensino Técnico Incompleto	Pardos	Nenhuma	A pé	5 Km	Não	Aprovado	Pendente	2021-01-11	302	2021-08-30 00:45:40.763983
158	650	 LILIAN ELISABETI RODRIGUÊS DA SILVA	2013-01-09	Feminino	123738618	26353432867	\N	(54)9976-0730	(54)9965-6995	\N	Ensino superior Completo	\N	Ensino superior Incompleto	Pardos	Nenhuma	Ônibus	5 Km	Não	Aprovado	Pendente	2021-01-18	302	2021-08-30 00:45:40.763983
159	661	 LAURICIO DE OLIVEIRA FERNANDES	2013-09-02	Masculino	467658438	59952453825	\N	(54)3291-1209	(54)9912-9668	\N	Ensino Técnico Incompleto	\N	Ensino Técnico Incompleto	Pardos	Nenhuma	Carro	30 Km	Não	Aprovado	Concluida	2021-02-05	302	2021-08-30 00:45:40.763983
160	676	 TERESINHA ISABEL CIOATTO	2013-10-11	Feminino	874487213	40728662811	\N	(54)9928-3831	(54)9652-0406	\N	Ensino superior Completo	\N	Ensino Técnico Incompleto	Pardos	Nenhuma	A pé	5 Km	Não	Pendente	Pendente	2021-01-10	303	2021-08-30 00:45:40.763983
161	687	 THALITA PREBIANCA FIAMINGHI	2013-03-12	Feminino	348728214	64044527402	\N	(54)9692-0879	(54)9953-5058	\N	Ensino Técnico Incompleto	\N	Ensino médio Completo	Pardos	Nenhuma	A pé	5 Km	Sim	Pendente	Pendente	2021-02-04	303	2021-08-30 00:45:40.763983
162	701	 MARIA ISABEL MOTA DA SILVA	2013-07-15	Feminino	780365796	59999002811	\N	(54)3291-1382	(54)3291-4423	\N	Ensino fundamental Completo	\N	Ensino fundamental Completo	Indígenas	Deficiência auditiva	A pé	5 Km	Não	Aprovado	Pendente	2021-01-31	303	2021-08-30 00:45:40.763983
163	744	EDUARDA DOS SANTOS SILVA	2013-08-08	Feminino	440995597	70957475381	\N	(54)9154-6339	(54)9133-5631	\N	Ensino médio Completo	\N	Ensino fundamental Completo	Pretos	Deficiência auditiva	Carro	10 Km	Não	Aprovado	Concluida	2021-01-19	303	2021-08-30 00:45:40.763983
164	749	FLAVIANO SCOPEL	2013-03-13	Masculino	205769170	82112041153	\N	(54)3291-2683	(54)3235-1076	\N	Ensino superior Incompleto	\N	Ensino fundamental Completo	Pardos	Deficiência motora	Ônibus	20 Km	Não	Aprovado	Concluida	2021-01-25	303	2021-08-30 00:45:40.763983
165	775	ARTHUR MUSSATTO MIOTTO	2013-12-17	Masculino	993417802	65279170681	\N	(54)9602-4110	(54)9100-6669	\N	Ensino superior Completo	\N	Ensino Técnico Completo	Indígenas	Nenhuma	Carro	20 Km	Não	Pendente	Concluida	2021-01-27	303	2021-08-30 00:45:40.763983
166	777	IGOR DE OLIVEIRA DALLARGNOL	2013-06-14	Masculino	807853601	98285462702	\N	(54)9255-4210	(54)3291-2848	\N	Ensino fundamental Incomplento	\N	Ensino superior Completo	Pardos	Nenhuma	A pé	1 Km	Não	Reprovou	Concluida	2021-02-05	303	2021-08-30 00:45:40.763983
167	791	ROSIMERE REGINA DRAGO	2013-06-23	Feminino	143395638	88611492735	\N	(54)9640-5088	(54)3291-7560	\N	Ensino fundamental Completo	\N	Ensino médio Completo	Amarelos	Nenhuma	A pé	5 Km	Não	Pendente	Concluida	2021-02-03	303	2021-08-30 00:45:40.763983
168	808	NILMA CLARA PEREIRA	2013-03-30	Feminino	930685085	53455633063	\N	(54)9204-4465	(54)9100-1193	\N	Ensino médio Incomplento	\N	Ensino superior Completo	Pardos	Nenhuma	Moto	5 Km	Não	Aprovado	Concluida	2021-01-18	303	2021-08-30 00:45:40.763983
169	818	CRISTOFFER DE OLIVEIRA ALVES	2013-06-29	Masculino	650664793	56725956723	\N	(54)9619-9453	(54)9993-3973	\N	Ensino superior Completo	\N	Ensino superior Incompleto	Pardos	Deficiência visual	Carro	30 Km	Não	Aprovado	Concluida	2021-01-15	303	2021-08-30 00:45:40.763983
170	836	LAURA LEITE RODRIGUES	2013-08-12	Feminino	627018587	59838772776	\N	(54)3291-2103	(11)1111-1111	\N	Ensino fundamental Incomplento	\N	Ensino fundamental Completo	Pretos	Nenhuma	Carro	30 Km	Não	Aprovado	Concluida	2021-02-05	303	2021-08-30 00:45:40.763983
171	849	ALICE DA SILVA CHAVES	2013-04-13	Feminino	907667402	30623783469	\N	(54)9140-9252	(54)3267-8012	\N	Ensino fundamental Incomplento	\N	Ensino fundamental Incomplento	Brancos	Nenhuma	Ônibus	30 Km	Não	Aprovado	Concluida	2021-01-18	303	2021-08-30 00:45:40.763983
172	854	VANESSA DOS SANTOS	2013-04-02	Feminino	803872674	31361668914	\N	3291-3131	(54)9601-8026	\N	Ensino fundamental Incomplento	\N	Ensino superior Completo	Pretos	Nenhuma	Carro	15 Km	Não	Pendente	Concluida	2021-01-19	303	2021-08-30 00:45:40.763983
173	864	FATIMA RASADOR GIRARDELLO	2013-04-01	Feminino	195232290	33876763779	\N	(54)3291-2974	(54)9127-1602	\N	Ensino superior Incompleto	\N	Ensino superior Completo	Indígenas	Deficiência visual	Carro	20 Km	Não	Reprovou	Concluida	2021-01-19	303	2021-08-30 00:45:40.763983
174	929	ARIELE VIEIRA DOS SANTOS	2013-08-23	Feminino	141721301	64706657920	\N	(54)9136-2238	(54)9920-5173	\N	Ensino Técnico Incompleto	\N	Ensino médio Completo	Brancos	Nenhuma	Ônibus	10 Km	Não	Aprovado	Concluida	2021-01-28	303	2021-08-30 00:45:40.763983
175	935	CRISTINE MORAES DE SOUZA	2013-07-28	Feminino	819573305	80519222917	\N	(54)9197-7779	(54)9195-2116	\N	Ensino fundamental Completo	\N	Ensino superior Incompleto	Brancos	Nenhuma	Ônibus	5 Km	Sim	Aprovado	Pendente	2021-02-07	303	2021-08-30 00:45:40.763983
176	950	LUCAS STRIEDES DA SILVA	2013-05-06	Masculino	244931403	58055522072	\N	(48)9146-6974	(54)9942-3079	\N	Ensino Técnico Incompleto	\N	Ensino superior Completo	Brancos	Nenhuma	A pé	15 Km	Não	Aprovado	Concluida	2021-01-31	303	2021-08-30 00:45:40.763983
177	953	LEONARDO JOSE GUERRA	2013-05-12	Masculino	784335507	82499375735	\N	32355136	(54)9909-8557	\N	Ensino superior Incompleto	\N	Ensino médio Completo	Brancos	Nenhuma	Ônibus	5 Km	Não	Aprovado	Concluida	2021-01-17	303	2021-08-30 00:45:40.763983
178	958	FLAVIANO NUNES DOS SANTOS	2013-04-07	Masculino	198477199	36565018557	\N	(54)9973-5014	(54)9964-3845	\N	Ensino Técnico Completo	\N	Ensino médio Completo	Pardos	Nenhuma	A pé	5 Km	Não	Pendente	Concluida	2021-01-20	303	2021-08-30 00:45:40.763983
179	970	GILSIANE RIZZO CASANOVA	2013-01-27	Feminino	276281177	52007296926	\N	99943936	(54)3291-3404	\N	Ensino fundamental Completo	\N	Ensino Técnico Incompleto	Brancos	Nenhuma	Carro	1 Km	Sim	Reprovou	Concluida	2021-01-14	303	2021-08-30 00:45:40.763983
180	31	JUCELITO ANTONIO VANAZ	2012-08-20	Masculino	603878518	29268270244	\N	3291-6028	(54)9995-3909	\N	Ensino superior Completo	\N	Ensino fundamental Incomplento	Pardos	Nenhuma	A pé	1 Km	Não	Aprovado	Concluida	2021-01-18	401	2021-08-30 00:45:40.763983
181	42	RODRIGO SCAIN	2012-08-05	Masculino	372419306	56290884443	\N	\N	30340109	\N	Ensino superior Completo	\N	Ensino Técnico Incompleto	Pretos	Nenhuma	Ônibus	1 Km	Sim	Aprovado	Concluida	2021-01-16	401	2021-08-30 00:45:40.763983
182	47	CECILIA SCAIN ZARDO	2012-03-09	Feminino	397363607	60793821626	\N	32917280	3291-2809/	\N	Ensino Técnico Completo	\N	Ensino superior Incompleto	Brancos	Nenhuma	Ônibus	30 Km	Não	Aprovado	Concluida	2021-01-12	401	2021-08-30 00:45:40.763983
183	49	ALÉX JUNIOR RASADOR	2012-09-01	Masculino	597451790	53251238156	\N	(54)3291-3071	3291-4534	\N	Ensino superior Completo	\N	Ensino médio Incomplento	Pardos	Nenhuma	A pé	5 Km	Não	Aprovado	Concluida	2021-02-01	401	2021-08-30 00:45:40.763983
184	70	VICTOR TONET RASADOR	2012-04-16	Masculino	872567498	26991972697	\N	(54)9113-6609	30342623	\N	Ensino Técnico Completo	\N	Ensino superior Incompleto	Pretos	Nenhuma	Ônibus	20 Km	Não	Pendente	Pendente	2021-01-17	401	2021-08-30 00:45:40.763983
185	71	MAURÍCIO MARCON	2012-04-13	Masculino	588103219	67373145168	\N	\N	91888333	\N	Ensino médio Incomplento	\N	Ensino Técnico Incompleto	Pardos	Nenhuma	Ônibus	20 Km	Não	Pendente	Concluida	2021-01-22	401	2021-08-30 00:45:40.763983
186	77	EVA QUISSINI	2012-10-17	Feminino	758573537	39465244467	\N	(54)3291-1262	(54)9979-2615	\N	Ensino médio Completo	\N	Ensino Técnico Completo	Pretos	Deficiência visual	Ônibus	50 Km	Não	Aprovado	Concluida	2021-02-05	401	2021-08-30 00:45:40.763983
187	80	GABRIELA CORSO	2012-06-24	Masculino	395009487	58874115835	\N	(54)9955-9220	32915349	\N	Ensino fundamental Completo	\N	Ensino fundamental Completo	Brancos	Nenhuma	Moto	10 Km	Não	Pendente	Concluida	2021-01-17	401	2021-08-30 00:45:40.763983
188	84	EZEQUIEL GAZZIERO	2012-09-22	Masculino	592952287	53727803765	\N	(54)3291-3770	(54)3291-2537	\N	Ensino superior Completo	\N	Ensino médio Completo	Brancos	Nenhuma	Ônibus	15 Km	Não	Pendente	Pendente	2021-01-19	401	2021-08-30 00:45:40.763983
189	116	JOSEMAR CARARO	2012-03-11	Masculino	545320865	79588120700	\N	(54)9189-0409	32913374	\N	Ensino médio Incomplento	\N	Ensino fundamental Completo	Pardos	Nenhuma	Moto	10 Km	Não	Aprovado	Concluida	2021-01-28	401	2021-08-30 00:45:40.763983
190	130	JENNIFER MANTOVANI FRANCISCO DE CHAVES S	2012-10-06	Feminino	308017890	54329220911	\N	(54)3291-5035	32912604	\N	Ensino Técnico Completo	\N	Ensino médio Completo	Amarelos	Deficiência auditiva	Moto	10 Km	Não	Reprovou	Pendente	2021-01-24	401	2021-08-30 00:45:40.763983
191	149	ERIC CASTILHOS DOS REIS	2012-06-05	Masculino	487633532	50718121480	\N	(54)3291-3067	(54)9219-9592	\N	Ensino Técnico Completo	\N	Ensino superior Completo	Pardos	Nenhuma	Carro	30 Km	Não	Aprovado	Concluida	2021-01-16	401	2021-08-30 00:45:40.763983
192	151	CLEIDE MORAES DE SOUZA	2012-11-13	Feminino	901205896	10174645311	\N	(54)3291-9060	(54)9626-1742	\N	Ensino fundamental Incomplento	\N	Ensino superior Incompleto	Pardos	Nenhuma	Carro	5 Km	Sim	Aprovado	Concluida	2021-01-25	401	2021-08-30 00:45:40.763983
193	157	MORGANA MICHELON	2012-05-03	Feminino	407864977	70425751974	\N	(54)9169-5862	(54)3291-7080	\N	Ensino superior Incompleto	\N	Ensino fundamental Completo	Pardos	Nenhuma	Ônibus	20 Km	Não	Pendente	Pendente	2021-01-23	401	2021-08-30 00:45:40.763983
194	161	SUÉLEN CASTILHOS RODRIGUES	2012-09-14	Feminino	410759591	90449575075	\N	(54)3291-7901	32911257	\N	Ensino Técnico Incompleto	\N	Ensino superior Completo	Pretos	Nenhuma	Ônibus	30 Km	Não	Aprovado	Concluida	2021-02-06	401	2021-08-30 00:45:40.763983
195	172	SIMONE SCOPEL MENEGON	2012-12-16	Feminino	352719049	62223618118	\N	(54)9909-3207	32912267	\N	Ensino Técnico Completo	\N	Ensino superior Incompleto	Brancos	Nenhuma	Ônibus	30 Km	Não	Aprovado	Concluida	2021-01-21	401	2021-08-30 00:45:40.763983
196	181	BRUNA ISABEL SANDRI	2012-03-19	Feminino	430081194	18622918381	\N	(54)9657-7212	(54)3267-8011	\N	Ensino superior Incompleto	\N	Ensino Técnico Incompleto	Brancos	Nenhuma	A pé	5 Km	Não	Pendente	Pendente	2021-01-16	401	2021-08-30 00:45:40.763983
197	182	RONEI CARLOS DE CASTILHOS	2012-11-27	Masculino	113937254	30908487630	\N	(54)9910-5709	(54)3235-5039	\N	Ensino médio Completo	\N	Ensino Técnico Completo	Indígenas	Nenhuma	A pé	10 Km	Não	Aprovado	Concluida	2021-02-04	401	2021-08-30 00:45:40.763983
198	213	PATRYCK SCARIOT LIRA	2012-02-18	Masculino	144872144	28579518232	\N	(54)9187-3084	(54)9660-7623	\N	Ensino fundamental Incomplento	\N	Ensino médio Incomplento	Brancos	Nenhuma	A pé	5 Km	Sim	Aprovado	Pendente	2021-01-19	401	2021-08-30 00:45:40.763983
199	236	NATALI SUZIN PANASSOL	2012-08-31	Feminino	557021487	72175442041	\N	(54)9674-4865	(54)9131-5072	\N	Ensino Técnico Incompleto	\N	Ensino médio Incomplento	Pardos	Nenhuma	A pé	15 Km	Não	Reprovou	Concluida	2021-01-31	402	2021-08-30 00:45:40.763983
200	240	ROBERTO ALEXANDRE GUERRA	2012-12-03	Masculino	290814020	45427537043	\N	(54)9177-5537	(54)9246-2253	\N	Ensino Técnico Completo	\N	Ensino fundamental Incomplento	Indígenas	Nenhuma	A pé	15 Km	Não	Aprovado	Concluida	2021-01-23	402	2021-08-30 00:45:40.763983
201	244	MAICOL VÍGOLO	2012-05-04	Masculino	984433362	48231977073	\N	(54)3291-3941	(54)9168-7714	\N	Ensino Técnico Completo	\N	Ensino superior Completo	Pretos	Nenhuma	A pé	15 Km	Não	Aprovado	Concluida	2021-01-11	402	2021-08-30 00:45:40.763983
202	275	EDUARDO DE OLIVEIRA PREBIANCA.	2012-07-28	Masculino	934490818	39429892414	\N	32915075	96329462	\N	Ensino médio Completo	\N	Ensino superior Completo	Pardos	Nenhuma	Ônibus	5 Km	Sim	Reprovou	Concluida	2021-01-13	402	2021-08-30 00:45:40.763983
203	323	GISELE MACIEL POLETO	2012-01-18	Feminino	989297015	29375330536	\N	(54)3291-3202	(54)3291-1074	\N	Ensino superior Incompleto	\N	Ensino Técnico Completo	Pretos	Nenhuma	Moto	20 Km	Não	Aprovado	Concluida	2021-01-23	402	2021-08-30 00:45:40.763983
204	329	PAULO DANIEL BERNARDO DA SILVA	2012-12-11	Masculino	837371325	44207912209	\N	(54)3291-3143	(54)3291-1603	\N	Ensino Técnico Incompleto	\N	Ensino superior Incompleto	Brancos	Nenhuma	Carro	10 Km	Não	Aprovado	Concluida	2021-02-06	402	2021-08-30 00:45:40.763983
205	340	BRUNO POLO GIORDANI	2012-06-13	Masculino	264618913	40396701899	\N	(54)3291-1044	(54)3291-3967	\N	Ensino médio Incomplento	\N	Ensino Técnico Incompleto	Pardos	Nenhuma	A pé	1 Km	Não	Aprovado	Concluida	2021-01-11	402	2021-08-30 00:45:40.763983
206	346	RAFAEL RIZZO	2012-02-04	Masculino	756961587	43537130267	\N	(54)3235-5139	(54)3291-6334	\N	Ensino fundamental Incomplento	\N	Ensino médio Incomplento	Pretos	Nenhuma	A pé	10 Km	Não	Aprovado	Concluida	2021-01-22	402	2021-08-30 00:45:40.763983
207	355	LUCAS MACHADO STEDILE	2012-07-19	Masculino	648309808	15205512660	\N	(54)9904-5355	(54)3291-2340	\N	Ensino médio Incomplento	\N	Ensino médio Incomplento	Pardos	Nenhuma	A pé	10 Km	Não	Aprovado	Concluida	2021-01-29	402	2021-08-30 00:45:40.763983
208	387	ANA PAULA CASTAGNO	2012-01-18	Feminino	814938144	87642684518	\N	(54)9612-1282	(54)9987-4900	\N	Ensino Técnico Incompleto	\N	Ensino superior Completo	Brancos	Deficiência auditiva	Ônibus	10 Km	Não	Aprovado	Concluida	2021-01-26	402	2021-08-30 00:45:40.763983
209	401	DANIEL BIANCHI	2012-05-19	Masculino	380672412	70378495381	\N	(54)9935-9832	(54)9671-8581	\N	Ensino Técnico Incompleto	\N	Ensino superior Completo	Brancos	Nenhuma	Moto	1 Km	Não	Aprovado	Pendente	2021-01-31	402	2021-08-30 00:45:40.763983
210	429	LEANDRO LUAN CARDOSO	2012-03-17	Masculino	341731359	79624445528	\N	(54)9646-2302	(54)3291-3471	\N	Ensino Técnico Incompleto	\N	Ensino superior Incompleto	Brancos	Nenhuma	Carro	5 Km	Não	Pendente	Concluida	2021-02-02	402	2021-08-30 00:45:40.763983
211	434	DEUSDETE LOREMAL MOTA	2012-03-10	Masculino	195254294	66949091477	\N	(54)9633-0409	(54)3291-7474	\N	Ensino superior Completo	\N	Ensino superior Completo	Brancos	Nenhuma	A pé	5 Km	Não	Aprovado	Concluida	2021-01-29	402	2021-08-30 00:45:40.763983
212	495	ALEX TROLE	2012-11-20	Feminino	946752562	55855389642	\N	\N	(54)9619-2904	\N	Ensino Técnico Completo	\N	Ensino fundamental Completo	Pardos	Nenhuma	Ônibus	1 Km	Não	Aprovado	Pendente	2021-02-07	402	2021-08-30 00:45:40.763983
213	518	LUCAS TORRESAN	2012-08-23	Masculino	952296177	63483756102	\N	(54)8114-0837	(54)9965-5165	\N	Ensino Técnico Incompleto	\N	Ensino médio Completo	Brancos	Nenhuma	Ônibus	20 Km	Não	Aprovado	Pendente	2021-01-30	402	2021-08-30 00:45:40.763983
214	540	IASMIN SOLDERA STELLA	2012-09-07	Feminino	735009224	11447177268	\N	(54)9987-3515	(54)3291-7258	\N	Ensino superior Completo	\N	Ensino Técnico Completo	Pardos	Nenhuma	Carro	15 Km	Não	Aprovado	Concluida	2021-01-12	402	2021-08-30 00:45:40.763983
215	547	CLAUDETE MOREIRA	2012-03-30	Feminino	740958969	44280300963	\N	(54)9192-5981	(54)3280-1016	\N	Ensino superior Completo	\N	Ensino fundamental Completo	Indígenas	Nenhuma	Bicicleta	1 Km	Não	Aprovado	Pendente	2021-01-20	402	2021-08-30 00:45:40.763983
216	621	 VITOR DE MACEDO MOTA	2012-01-09	Masculino	439456236	30436176481	\N	(54)9614-4717	(54)3291-3507	\N	Ensino superior Completo	\N	Ensino médio Completo	Brancos	Deficiência motora	A pé	10 Km	Sim	Aprovado	Concluida	2021-01-28	402	2021-08-30 00:45:40.763983
217	635	 JULIANO CARDOZO DA SILVA JUNIOR	2012-07-18	Masculino	960855904	83338269331	\N	(54)9957-2430	3291-2674	\N	Ensino fundamental Completo	\N	Ensino fundamental Completo	Indígenas	Nenhuma	Carro	20 Km	Não	Aprovado	Concluida	2021-02-05	402	2021-08-30 00:45:40.763983
218	657	 MÉO BUENO DA SILVA	2012-03-12	Feminino	312352468	59637244735	\N	(54)9137-9707	\N	\N	Ensino superior Completo	\N	Ensino superior Completo	Brancos	Nenhuma	Carro	30 Km	Não	Aprovado	Concluida	2021-01-16	402	2021-08-30 00:45:40.763983
219	662	 LAURA BORGES	2012-10-26	Feminino	300209772	45180690960	\N	(54)9185-7751	(54)9109-1284	\N	Ensino Técnico Incompleto	\N	Ensino médio Completo	Pardos	Nenhuma	A pé	30 Km	Sim	Pendente	Concluida	2021-01-28	403	2021-08-30 00:45:40.763983
220	665	 ELIN MAURINA	2012-12-02	Feminino	931023983	86179259506	\N	(54)3291-5142	(54)3291-6361	\N	Ensino superior Completo	\N	Ensino médio Incomplento	Brancos	Nenhuma	Ônibus	10 Km	Não	Aprovado	Concluida	2021-01-25	403	2021-08-30 00:45:40.763983
221	669	 RAFAELA FLÁVIA CHEMELLO	2012-10-23	Feminino	608351275	17576323972	\N	\N	(54)9157-2114	\N	Ensino superior Completo	\N	Ensino superior Completo	Pardos	Nenhuma	Ônibus	1 Km	Não	Aprovado	Concluida	2021-02-08	403	2021-08-30 00:45:40.763983
222	671	 RANGEL ZANELLA	2012-06-04	Feminino	207782098	66260612456	\N	(54)3291-2739	(54)3291-4573	\N	Ensino superior Incompleto	\N	Ensino médio Completo	Pardos	Nenhuma	Carro	15 Km	Não	Pendente	Pendente	2021-01-27	403	2021-08-30 00:45:40.763983
223	683	 MÉO DA SILVA	2012-10-31	Feminino	858060293	20862447429	\N	(54)9672-0530	(54)9144-2926	\N	Ensino médio Incomplento	\N	Ensino médio Incomplento	Brancos	Nenhuma	Bicicleta	15 Km	Não	Aprovado	Concluida	2021-01-24	403	2021-08-30 00:45:40.763983
224	688	 GILBERTO PEREIRA DOS SANTOS	2012-06-02	Masculino	870941623	20895886586	\N	(54)9934-9411	(54)9925-9948	\N	Ensino superior Incompleto	\N	Ensino médio Incomplento	Pretos	Nenhuma	Ônibus	5 Km	Não	Aprovado	Concluida	2021-01-25	403	2021-08-30 00:45:40.763983
225	689	 EULLER VECHIATO	2012-04-25	Masculino	522154227	28350472495	\N	(54)9144-8549	(54)9666-6188	\N	Ensino superior Incompleto	\N	Ensino Técnico Incompleto	Brancos	Nenhuma	Ônibus	10 Km	Não	Aprovado	Concluida	2021-02-07	403	2021-08-30 00:45:40.763983
226	728	ISADORA SANDI RECH	2012-04-16	Feminino	450503597	67489681072	\N	(54)8432-5367	(54)9144-8201	\N	Ensino Técnico Completo	\N	Ensino Técnico Incompleto	Pardos	Nenhuma	Ônibus	50 Km	Sim	Aprovado	Pendente	2021-01-26	403	2021-08-30 00:45:40.763983
227	735	MATHIAS SCODRO DOS SANTOS	2012-01-09	Masculino	952952476	15677019252	\N	(54)9993-5068	(54)3291-7501	\N	Ensino superior Completo	\N	Ensino fundamental Completo	Brancos	Nenhuma	Ônibus	30 Km	Não	Pendente	Concluida	2021-02-04	403	2021-08-30 00:45:40.763983
228	766	ALEX J UNIOR SPESIER	2012-11-07	Masculino	195476671	76162518493	\N	(54)9120-8934	(54)9907-0915	\N	Ensino médio Completo	\N	Ensino médio Completo	Brancos	Nenhuma	Ônibus	30 Km	Não	Aprovado	Concluida	2021-01-15	403	2021-08-30 00:45:40.763983
229	772	LUCIMAIA ESTEFANIA GARBIN POLIDORO	2012-11-14	Feminino	920204054	29318777064	\N	(54)9675-5394	(54)9939-7752	\N	Ensino médio Incomplento	\N	Ensino médio Completo	Indígenas	Nenhuma	Carro	1 Km	Não	Aprovado	Concluida	2021-01-24	403	2021-08-30 00:45:40.763983
230	817	LUCAS TERRAS	2012-10-01	Masculino	677303882	82037321066	\N	(54)9619-5575	(54)9619-6606	\N	Ensino médio Completo	\N	Ensino superior Completo	Pardos	Nenhuma	Ônibus	15 Km	Não	Aprovado	Concluida	2021-01-10	403	2021-08-30 00:45:40.763983
231	834	JAIANE DE GOIS CASTILHOS	2012-08-21	Feminino	147557594	55183517276	\N	(54)8119-3624	(54)3291-2922	\N	Ensino médio Completo	\N	Ensino superior Completo	Pardos	Nenhuma	Ônibus	50 Km	Não	Pendente	Concluida	2021-02-08	403	2021-08-30 00:45:40.763983
232	835	MARINA VIANA DA SILVA	2012-07-16	Feminino	746132238	87128594399	\N	(54)9641-5004	(54)9642-5074	\N	Ensino médio Completo	\N	Ensino Técnico Incompleto	Brancos	Nenhuma	A pé	20 Km	Não	Pendente	Pendente	2021-01-26	403	2021-08-30 00:45:40.763983
233	856	MARINA BORGES	2012-07-24	Feminino	265039231	84526510182	\N	(05)4996-5599	(54)9936-4803	\N	Ensino Técnico Incompleto	\N	Ensino fundamental Completo	Brancos	Nenhuma	A pé	20 Km	Sim	Reprovou	Concluida	2021-01-24	403	2021-08-30 00:45:40.763983
234	871	NEUZA SEBASTIANA DA LUZ TELES	2012-05-20	Feminino	935519125	59601241246	\N	(54)9215-0650	(54)9906-4656	\N	Ensino fundamental Completo	\N	Ensino médio Incomplento	Pardos	Nenhuma	Ônibus	5 Km	Não	Reprovou	Concluida	2021-01-30	403	2021-08-30 00:45:40.763983
235	872	MARICELIA CICHIN CARARO	2012-09-13	Feminino	582106434	93333177850	\N	(54)3291-3389	(54)9159-6902	\N	Ensino médio Completo	\N	Ensino Técnico Incompleto	Amarelos	Nenhuma	Carro	10 Km	Não	Reprovou	Concluida	2021-01-12	403	2021-08-30 00:45:40.763983
236	888	LUCIANA RENATA POLO	2012-12-27	Feminino	726984398	78876894535	\N	(54)3291-3081	(54)9680-0380	\N	Ensino Técnico Incompleto	\N	Ensino Técnico Completo	Brancos	Nenhuma	Ônibus	20 Km	Não	Aprovado	Concluida	2021-01-11	403	2021-08-30 00:45:40.763983
237	919	MATEUS BOFF	2012-12-09	Masculino	420955419	64832946632	\N	(54)9918-1473	(54)9917-1562	\N	Ensino superior Incompleto	\N	Ensino médio Completo	Pardos	Nenhuma	Carro	15 Km	Sim	Aprovado	Pendente	2021-01-14	403	2021-08-30 00:45:40.763983
238	926	ANA JÚLIA VELHO	2012-08-12	Feminino	503597396	86217836870	\N	(54)9700-1233	(54)3267-8035	\N	Ensino superior Incompleto	\N	Ensino superior Incompleto	Amarelos	Nenhuma	Ônibus	5 Km	Não	Aprovado	Concluida	2021-01-28	403	2021-08-30 00:45:40.763983
239	951	OTÁVIO BERNARDO DA SILVA	2012-01-01	Masculino	564632268	84229241889	\N	(54)9634-8662	(54)9967-5026	\N	Ensino superior Completo	\N	Ensino médio Completo	Pretos	Deficiência mental	Moto	10 Km	Não	Aprovado	Pendente	2021-01-29	403	2021-08-30 00:45:40.763983
240	961	TOBIAS CASANOVA	2012-06-25	Masculino	487625117	94058253713	\N	32914170	(54)9615-5320	\N	Ensino Técnico Incompleto	\N	Ensino Técnico Completo	Brancos	Nenhuma	Ônibus	5 Km	Sim	Aprovado	Concluida	2021-01-23	403	2021-08-30 00:45:40.763983
241	986	TAINARA PELISSARI ANTUNES SIQUEIRA	2012-08-15	Feminino	483234300	90140116336	\N	32917239	(54)9184-0097	\N	Ensino médio Completo	\N	Ensino Técnico Incompleto	Pardos	Nenhuma	Carro	10 Km	Não	Aprovado	Concluida	2021-01-14	403	2021-08-30 00:45:40.763983
242	29	TIAGO PIROLLI MAGRIN	2011-06-22	Masculino	736321063	54047136782	\N	(54)9953-3185	(54)9917-8137	\N	Ensino médio Incomplento	\N	Ensino superior Incompleto	Amarelos	Nenhuma	Ônibus	20 Km	Não	Aprovado	Concluida	2021-01-23	501	2021-08-30 00:45:40.763983
243	100	ADRIANO DO PILAR	2011-06-11	Masculino	941738091	38960467137	\N	(54)3291-5159	(54)9982-0296	\N	Ensino Técnico Incompleto	\N	Ensino médio Incomplento	Amarelos	Deficiência visual	Ônibus	1 Km	Não	Aprovado	Concluida	2021-01-18	501	2021-08-30 00:45:40.763983
244	107	JOSÉ ADAIR CASTILHOS DOS REIS	2011-11-07	Masculino	266085707	24376001114	\N	(54)3291-1888	(54)3291-7409	\N	Ensino fundamental Completo	\N	Ensino médio Incomplento	Brancos	Nenhuma	Ônibus	5 Km	Não	Aprovado	Concluida	2021-01-23	501	2021-08-30 00:45:40.763983
245	132	JOSÉ DE SOUZA GAMBA	2011-09-13	Masculino	789535451	90742438747	\N	(54)9184-8740	96122941	\N	Ensino médio Completo	\N	Ensino fundamental Incomplento	Indígenas	Nenhuma	Bicicleta	50 Km	Não	Pendente	Concluida	2021-01-18	501	2021-08-30 00:45:40.763983
246	143	LETÍCIA ANE BENATTO	2011-09-04	Feminino	291045725	40843813306	\N	(54)9957-5008	(54)3280-1100	\N	Ensino médio Completo	\N	Ensino Técnico Incompleto	Indígenas	Nenhuma	Carro	15 Km	Sim	Aprovado	Concluida	2021-01-10	501	2021-08-30 00:45:40.763983
247	153	SCHAIANE LUTINSKI BOHMENBERGER	2011-06-03	Feminino	757580091	61197474862	\N	(54)9684-8577	(54)9101-1636	\N	Ensino superior Completo	\N	Ensino Técnico Incompleto	Indígenas	Nenhuma	Ônibus	20 Km	Não	Aprovado	Concluida	2021-01-15	501	2021-08-30 00:45:40.763983
248	154	LIDIANE DA SILVA CASTILHOS	2011-10-08	Feminino	577155519	85587480192	\N	(54)8427-8457	(54)9600-1142	\N	Ensino fundamental Completo	\N	Ensino fundamental Completo	Brancos	Nenhuma	Moto	5 Km	Não	Aprovado	Concluida	2021-01-30	501	2021-08-30 00:45:40.763983
249	175	ANA PAULA DA SILVA	2011-02-23	Feminino	466912502	70476443118	\N	(54)3291-2984	32911479	\N	Ensino superior Completo	\N	Ensino Técnico Incompleto	Brancos	Deficiência auditiva	Ônibus	1 Km	Não	Aprovado	Pendente	2021-01-26	501	2021-08-30 00:45:40.763983
250	234	FELIPE MARCHIORETTO	2011-02-06	Masculino	323361649	27166421095	\N	(54)9957-4587	(54)9614-3816	\N	Ensino médio Incomplento	\N	Ensino fundamental Completo	Brancos	Nenhuma	Moto	5 Km	Não	Aprovado	Pendente	2021-01-18	501	2021-08-30 00:45:40.763983
251	271	KARINA DAL SOCHIO	2011-03-03	Feminino	363763501	15895572493	\N	\N	(54)9107-2665	\N	Ensino superior Completo	\N	Ensino Técnico Completo	Pardos	Nenhuma	A pé	10 Km	Não	Aprovado	Concluida	2021-01-21	501	2021-08-30 00:45:40.763983
252	273	PEDRO HENRIQUE NUNES FERREIRA	2011-08-06	Masculino	624943772	18000078750	\N	91788920	3291-6054	\N	Ensino Técnico Completo	\N	Ensino Técnico Completo	Indígenas	Nenhuma	A pé	20 Km	Não	Aprovado	Concluida	2021-01-21	501	2021-08-30 00:45:40.763983
253	278	LUIZA BIASOTTO	2011-02-03	Feminino	211258855	80849223529	\N	(54)9980-4053	(54)9634-7738	\N	Ensino superior Completo	\N	Ensino fundamental Incomplento	Amarelos	Nenhuma	Moto	10 Km	Não	Pendente	Concluida	2021-02-06	501	2021-08-30 00:45:40.763983
254	284	LUCILDA MARIA CHEMELLO	2011-07-03	Feminino	607912842	61599247927	\N	(54)9135-2436	3291 22 14	\N	Ensino superior Completo	\N	Ensino fundamental Completo	Brancos	Nenhuma	Ônibus	15 Km	Não	Aprovado	Concluida	2021-02-04	501	2021-08-30 00:45:40.763983
255	298	LEANDRA JULIANA CARDOSO	2011-05-06	Feminino	748023729	37402202963	\N	(54)9177-0054	(54)3291-1148	\N	Ensino superior Incompleto	\N	Ensino superior Completo	Brancos	Nenhuma	Carro	15 Km	Não	Pendente	Pendente	2021-01-23	501	2021-08-30 00:45:40.763983
256	303	IRIS ZANELLA VANIN	2011-04-08	Feminino	973388335	41263119717	\N	(54)9672-2864	(54)9902-5870	\N	Ensino médio Incomplento	\N	Ensino Técnico Completo	Pardos	Nenhuma	Carro	15 Km	Não	Pendente	Concluida	2021-02-02	501	2021-08-30 00:45:40.803379
257	322	JURACI ZUANAZZI BORGHETTI	2011-09-20	Feminino	419591853	82413968250	\N	(54)9946-4408	(54)9943-1694	\N	Ensino fundamental Completo	\N	Ensino médio Completo	Brancos	Nenhuma	Ônibus	5 Km	Não	Aprovado	Concluida	2021-01-21	501	2021-08-30 00:45:40.803379
258	382	MARIA EDUARDA MASCARELLO	2011-11-09	Feminino	324177350	53489635204	\N	\N	(54)9628-2100	\N	Ensino Técnico Incompleto	\N	Ensino médio Completo	Brancos	Nenhuma	Moto	5 Km	Não	Aprovado	Concluida	2021-01-14	501	2021-08-30 00:45:40.803379
259	390	ANDREI BRANCO BORGHETTI	2011-04-05	Masculino	644384401	51518140096	\N	(54)9235-6282	(54)9694-6181	\N	Ensino médio Completo	\N	Ensino Técnico Completo	Brancos	Nenhuma	A pé	50 Km	Não	Aprovado	Concluida	2021-01-18	501	2021-08-30 00:45:40.803379
260	395	CAMILA CASARA	2011-04-12	Feminino	398396803	32656746402	\N	(54)3291-3356	(54)3291-3508	\N	Ensino médio Incomplento	\N	Ensino médio Incomplento	Pardos	Nenhuma	Ônibus	15 Km	Não	Aprovado	Concluida	2021-01-17	501	2021-08-30 00:45:40.803379
261	425	JONATAN ARGENTA TURCATI	2011-03-02	Masculino	185919617	28524702816	\N	(54)3291-6560	99448714	\N	Ensino médio Completo	\N	Ensino médio Incomplento	Pardos	Nenhuma	A pé	30 Km	Não	Aprovado	Concluida	2021-02-07	501	2021-08-30 00:45:40.803379
262	444	MATHEUS RODRIGUES DE MACEDO	2011-07-18	Masculino	183596044	46342035631	\N	(54)8432-5367	3291-1011	\N	Ensino superior Completo	\N	Ensino Técnico Incompleto	Pardos	Nenhuma	A pé	15 Km	Não	Reprovou	Concluida	2021-02-06	502	2021-08-30 00:45:40.803379
263	449	BRUNO VIEIRA	2011-12-18	Masculino	802926570	79147443776	\N	(54)9974-1439	91243521	\N	Ensino Técnico Incompleto	\N	Ensino superior Completo	Amarelos	Nenhuma	Ônibus	1 Km	Não	Pendente	Concluida	2021-02-01	502	2021-08-30 00:45:40.803379
264	465	BRUNA DE ABREU DOS SANTOS	2011-06-01	Feminino	764836643	98010801208	\N	(11)1111-1111	(54)3291-6454	\N	Ensino médio Incomplento	\N	Ensino médio Completo	Pretos	Nenhuma	Ônibus	5 Km	Não	Pendente	Concluida	2021-02-07	502	2021-08-30 00:45:40.803379
265	481	GUILHERME AUGUSTO RIBEIRO DE OLIVEIRA	2011-03-17	Feminino	449760985	61189020489	\N	(54)9923-7152	(54)3291-1355	\N	Ensino Técnico Completo	\N	Ensino médio Completo	Pardos	Nenhuma	Carro	20 Km	Não	Aprovado	Concluida	2021-01-23	502	2021-08-30 00:45:40.803379
266	504	JÚLIO SERGIO	2011-06-08	Masculino	915426533	72675427078	\N	\N	(54)9998-3690	\N	Ensino Técnico Completo	\N	Ensino superior Completo	Brancos	Nenhuma	Carro	10 Km	Não	Aprovado	Concluida	2021-01-11	502	2021-08-30 00:45:40.803379
267	521	MARLON NUNES	2011-08-16	Masculino	712895114	95529809046	\N	(54)9172-6865	3291-1933	\N	Ensino superior Completo	\N	Ensino Técnico Completo	Brancos	Nenhuma	Carro	1 Km	Não	Aprovado	Pendente	2021-01-27	502	2021-08-30 00:45:40.803379
268	559	VITÓRIA PELIZZARI	2011-10-11	Feminino	240538747	80390801924	\N	(54)9904-0199	(54)3291-5329	\N	Ensino superior Completo	\N	Ensino fundamental Incomplento	Pardos	Nenhuma	A pé	5 Km	Não	Aprovado	Concluida	2021-01-30	502	2021-08-30 00:45:40.803379
269	601	LUANA LETICIA DOS PASSOS	2011-01-31	Feminino	900192176	10062137068	\N	(54)3291-7236	(54)9193-4943	\N	Ensino fundamental Completo	\N	Ensino superior Completo	Brancos	Nenhuma	Ônibus	1 Km	Não	Reprovou	Pendente	2021-01-14	502	2021-08-30 00:45:40.803379
270	606	JULIANA DE CASTILHOS DOS PASSOS	2011-02-19	Feminino	237380077	57918822885	\N	(54)9649-9834	(54)9987-3515	\N	Ensino superior Incompleto	\N	Ensino Técnico Incompleto	Brancos	Nenhuma	A pé	5 Km	Não	Pendente	Concluida	2021-01-14	502	2021-08-30 00:45:40.803379
271	633	  CRISTIAN DE ATAIDE VIDI	2011-08-24	Masculino	786060334	39017143940	\N	(54)9111-7339	(54)9120-5973	\N	Ensino médio Completo	\N	Ensino Técnico Incompleto	Amarelos	Nenhuma	Moto	10 Km	Não	Reprovou	Pendente	2021-01-31	502	2021-08-30 00:45:40.803379
272	656	 GERMANO BASSANESI ZUANAZZI	2011-12-25	Masculino	813789172	24168556015	\N	(54)3291-1412	(54)3291-5228	\N	Ensino médio Completo	\N	Ensino Técnico Completo	Amarelos	Nenhuma	Carro	30 Km	Não	Aprovado	Pendente	2021-01-16	502	2021-08-30 00:45:40.803379
273	659	 GABRIEL DEBOVI LISBOA	2011-12-20	Masculino	816533507	95699716840	\N	(11)1111-1111	(54)9978-4303	\N	Ensino médio Incomplento	\N	Ensino fundamental Completo	Pardos	Nenhuma	Moto	5 Km	Não	Aprovado	Concluida	2021-01-30	502	2021-08-30 00:45:40.803379
274	666	 ANA JULIA ALBUQUERQUE	2011-02-24	Feminino	118920505	90200567191	\N	(54)9165-9982	(54)9174-6571	\N	Ensino fundamental Incomplento	\N	Ensino médio Incomplento	Pretos	Nenhuma	Moto	5 Km	Não	Reprovou	Concluida	2021-01-27	502	2021-08-30 00:45:40.803379
275	693	 ALEX DELFS DOS SANTOS	2011-03-14	Masculino	624090935	20169275342	\N	(54)9134-4156	(54)3291-3772	\N	Ensino fundamental Incomplento	\N	Ensino médio Completo	Indígenas	Nenhuma	Moto	20 Km	Não	Pendente	Concluida	2021-02-07	502	2021-08-30 00:45:40.803379
276	759	JÚLIA SPIGOLON	2011-03-11	Feminino	207475169	20904228519	\N	(54)9101-4788	(54)9136-4687	\N	Ensino superior Incompleto	\N	Ensino médio Completo	Pardos	Nenhuma	Ônibus	5 Km	Não	Reprovou	Concluida	2021-01-25	502	2021-08-30 00:45:40.803379
277	780	YURI P. MAGNABOSCO	2011-09-27	Masculino	897082244	53318153078	\N	(54)9616-5944	(54)3291-3950	\N	Ensino superior Completo	\N	Ensino médio Incomplento	Brancos	Nenhuma	Ônibus	10 Km	Não	Reprovou	Concluida	2021-01-19	502	2021-08-30 00:45:40.803379
278	858	ANA DUARTE	2011-02-11	Feminino	684869489	73928863522	\N	(54)9123-3045	(54)9697-3179	\N	Ensino fundamental Completo	\N	Ensino fundamental Incomplento	Brancos	Nenhuma	Carro	10 Km	Sim	Aprovado	Concluida	2021-01-20	502	2021-08-30 00:45:40.803379
279	862	EMILIO GOMES	2011-11-06	Masculino	178762375	43016001116	\N	(54)9181-5069	(54)9974-7497	\N	Ensino superior Incompleto	\N	Ensino superior Completo	Indígenas	Nenhuma	Ônibus	15 Km	Não	Aprovado	Concluida	2021-01-30	502	2021-08-30 00:45:40.803379
280	895	ANDERSON ANTONIO DOS SANTOS BOEIRA	2011-06-26	Masculino	710884901	50020004304	\N	(54)9106-8656	(54)9958-2072	\N	Ensino médio Completo	\N	Ensino médio Completo	Indígenas	Nenhuma	Ônibus	5 Km	Não	Pendente	Concluida	2021-01-15	502	2021-08-30 00:45:40.803379
281	905	GEORGIA VARGAS LOPES	2011-06-01	Feminino	791228136	89935257524	\N	(55)9915-3359	(54)9103-0149	\N	Ensino superior Incompleto	\N	Ensino superior Completo	Pretos	Nenhuma	A pé	30 Km	Não	Aprovado	Pendente	2021-01-23	502	2021-08-30 00:45:40.803379
282	906	GUILHERME BIONDO BRAMBATTI	2011-11-07	Masculino	871259592	60276577915	\N	(54)9190-3185	(54)3267-8257	\N	Ensino Técnico Incompleto	\N	Ensino superior Completo	Brancos	Nenhuma	Ônibus	5 Km	Não	Aprovado	Concluida	2021-02-04	502	2021-08-30 00:45:40.803379
283	911	ISABELLA BRUGALLI BORGHETTI	2011-03-02	Feminino	949097971	31659305961	\N	(54)3291-9810	(54)9996-8994	\N	Ensino superior Completo	\N	Ensino fundamental Incomplento	Amarelos	Nenhuma	Ônibus	1 Km	Não	Aprovado	Concluida	2021-01-20	502	2021-08-30 00:45:40.803379
284	945	GRACIELE CAROLINE FERREIRA RAMOS	2011-02-28	Feminino	961382677	59660629447	\N	(54)9183-8207	(54)9603-2677	\N	Ensino superior Completo	\N	Ensino fundamental Completo	Brancos	Nenhuma	Moto	15 Km	Não	Reprovou	Pendente	2021-01-25	502	2021-08-30 00:45:40.803379
285	988	ADRIANA CASTILHOS NASCIMENTO	2011-12-10	Feminino	897780480	62706445813	\N	(  )9991-4601	(54)9667-8063	\N	Ensino fundamental Incomplento	\N	Ensino médio Completo	Brancos	Nenhuma	Carro	10 Km	Não	Aprovado	Pendente	2021-02-03	502	2021-08-30 00:45:40.803379
286	7	CAROLINE ZANELLA	2010-09-16	Feminino	729830732	62877269017	\N	(54)3291-7281	(54)3235-1634	\N	Ensino médio Completo	\N	Ensino superior Completo	Brancos	Nenhuma	A pé	50 Km	Não	Aprovado	Concluida	2021-01-13	601	2021-08-30 00:45:40.803379
287	24	JOÃO CARLOS CIOATO	2010-08-12	Masculino	403179164	63316043996	\N	(54)9642-2654	(54)3235-1185	\N	Ensino superior Incompleto	\N	Ensino fundamental Incomplento	Brancos	Nenhuma	Ônibus	50 Km	Não	Aprovado	Concluida	2021-01-11	601	2021-08-30 00:45:40.803379
288	34	PATRIC FERNANDES TREVISAN	2010-09-12	Masculino	486807587	79253800097	\N	32919172	(54)9913-0527	\N	Ensino médio Incomplento	\N	Ensino superior Completo	Brancos	Nenhuma	Ônibus	10 Km	Não	Aprovado	Concluida	2021-01-13	601	2021-08-30 00:45:40.803379
289	43	UISLEI RIZZO	2010-11-19	Masculino	675507543	24752298556	\N	(54)9931-6402	(54)9912-6848	\N	Ensino superior Incompleto	\N	Ensino fundamental Incomplento	Pardos	Deficiência mental	Ônibus	15 Km	Não	Aprovado	Concluida	2021-01-15	601	2021-08-30 00:45:40.803379
290	50	ANDRÉIA BORGES VIEIRA	2010-04-05	Feminino	732554964	20251228461	\N	(54)9114-4108	96192093	\N	Ensino Técnico Incompleto	\N	Ensino Técnico Incompleto	Pardos	Nenhuma	Carro	1 Km	Não	Reprovou	Pendente	2021-01-10	601	2021-08-30 00:45:40.803379
291	59	LEONARDO RASADOR	2010-01-31	Masculino	501869535	24794088064	\N	(54)9115-6651	3291-4514	\N	Ensino superior Incompleto	\N	Ensino Técnico Incompleto	Indígenas	Nenhuma	A pé	10 Km	Não	Pendente	Concluida	2021-01-16	601	2021-08-30 00:45:40.803379
292	62	JUSSARA VECHIATO	2010-10-11	Feminino	795164575	15411756733	\N	(54)9117-9740	32919071	\N	Ensino superior Completo	\N	Ensino superior Completo	Pardos	Nenhuma	Moto	15 Km	Não	Aprovado	Concluida	2021-02-05	601	2021-08-30 00:45:40.803379
293	68	IRENE TERESINHA FOGAÇA	2010-10-22	Feminino	366754008	52502385017	\N	(54)3291-1072	96110017	\N	Ensino Técnico Incompleto	\N	Ensino superior Completo	Indígenas	Nenhuma	A pé	15 Km	Não	Aprovado	Concluida	2021-01-30	601	2021-08-30 00:45:40.803379
294	86	MATEUS CIOATO POLETO	2010-05-18	Masculino	553809101	41776674058	\N	(54)9169-8787	(54)9195-4021	\N	Ensino Técnico Completo	\N	Ensino médio Incomplento	Brancos	Nenhuma	Ônibus	15 Km	Não	Pendente	Concluida	2021-01-30	601	2021-08-30 00:45:40.803379
295	88	CATIA BIONDO	2010-01-04	Feminino	542428155	52951881744	\N	(54)3291-1967	3291-3572	\N	Ensino superior Incompleto	\N	Ensino Técnico Incompleto	Indígenas	Nenhuma	Ônibus	1 Km	Não	Aprovado	Concluida	2021-01-26	601	2021-08-30 00:45:40.803379
296	117	TOBIAS BUGANÇA	2010-06-24	Masculino	799731468	81622055716	\N	(54)3291-3404	32916025	\N	Ensino Técnico Incompleto	\N	Ensino superior Incompleto	Pardos	Nenhuma	Carro	1 Km	Não	Pendente	Concluida	2021-02-07	601	2021-08-30 00:45:40.803379
297	131	MATEUS BUGANÇA	2010-08-31	Masculino	481801598	26988906273	\N	(54)3291-5035	32911858	\N	Ensino superior Incompleto	\N	Ensino fundamental Incomplento	Pretos	Nenhuma	A pé	20 Km	Não	Aprovado	Concluida	2021-01-27	601	2021-08-30 00:45:40.803379
298	147	MATEUS ALVES SCHUSTER	2010-01-10	Masculino	583303956	60017744244	\N	(54)9955-4420	(54)9196-8891	\N	Ensino superior Completo	\N	Ensino Técnico Incompleto	Pardos	Nenhuma	Ônibus	15 Km	Não	Aprovado	Concluida	2021-01-30	601	2021-08-30 00:45:40.803379
299	187	LAVÍNIA STICH BIASOTTO	2010-05-17	Feminino	183126809	47311089386	\N	(54)9145-3026	81416266	\N	Ensino superior Incompleto	\N	Ensino superior Incompleto	Pardos	Nenhuma	A pé	1 Km	Sim	Aprovado	Concluida	2021-01-12	601	2021-08-30 00:45:40.803379
300	190	MIRELA SANTANA	2010-11-21	Feminino	696333761	84310560319	\N	(54)9932-7421	32351693	\N	Ensino Técnico Incompleto	\N	Ensino Técnico Completo	Brancos	Nenhuma	Ônibus	5 Km	Não	Aprovado	Concluida	2021-01-20	601	2021-08-30 00:45:40.803379
301	205	RAFAEL BENATO BOFF	2010-01-04	Masculino	671952979	94802532309	\N	(54)9197-7832	(54)9922-4369	\N	Ensino médio Completo	\N	Ensino Técnico Incompleto	Amarelos	Nenhuma	Ônibus	20 Km	Não	Aprovado	Concluida	2021-02-05	601	2021-08-30 00:45:40.803379
302	260	FRANCINE NILZA DA SILVA	2010-01-07	Feminino	640900358	94851911344	\N	(54)9632-6696	(54)9661-0384	\N	Ensino médio Incomplento	\N	Ensino superior Incompleto	Indígenas	Deficiência motora	A pé	20 Km	Não	Aprovado	Concluida	2021-02-03	601	2021-08-30 00:45:40.803379
303	277	LUCAS JORDANI MACHADO	2010-11-02	Masculino	753925679	20703655843	\N	(54)9155-7043	32912653	\N	Ensino fundamental Completo	\N	Ensino Técnico Completo	Brancos	Nenhuma	Carro	1 Km	Não	Aprovado	Concluida	2021-01-21	601	2021-08-30 00:45:40.803379
304	282	CAMILA RODRIGUES ALVES	2010-10-11	Feminino	801228632	98577325735	\N	(54)9668-5318	32801189	\N	Ensino Técnico Incompleto	\N	Ensino superior Incompleto	Brancos	Nenhuma	A pé	20 Km	Não	Pendente	Concluida	2021-01-29	601	2021-08-30 00:45:40.803379
305	289	THIAGO GABRIEL DE SOUSA SANTOS	2010-06-17	Masculino	295127112	72154115893	\N	(54)8122-7596	(54)9135-0541	\N	Ensino superior Incompleto	\N	Ensino superior Incompleto	Brancos	Nenhuma	Carro	15 Km	Não	Pendente	Pendente	2021-01-31	601	2021-08-30 00:45:40.803379
306	295	NEURA LETTI BORGHETTI	2010-10-20	Feminino	771940043	19080380813	\N	(54)3291-4212	(54)3267-8091	\N	Ensino Técnico Incompleto	\N	Ensino superior Completo	Pardos	Nenhuma	Carro	10 Km	Não	Aprovado	Concluida	2021-01-21	601	2021-08-30 00:45:40.803379
307	328	FELIPE DE MORAES SILVA	2010-10-07	Masculino	322455405	32338215900	\N	(54)9173-2117	(54)3291-1239	\N	Ensino Técnico Incompleto	\N	Ensino médio Incomplento	Amarelos	Nenhuma	Ônibus	15 Km	Não	Reprovou	Pendente	2021-01-12	601	2021-08-30 00:45:40.803379
308	333	GILBERTO ASCARI	2010-03-30	Masculino	515347001	27728772075	\N	(54)3291-2103	(54)9615-7575	\N	Ensino médio Incomplento	\N	Ensino fundamental Completo	Brancos	Nenhuma	Carro	1 Km	Não	Aprovado	Concluida	2021-01-28	601	2021-08-30 00:45:40.803379
309	351	JONATAN NOVELLO	2010-08-03	Masculino	524029745	43308271583	\N	(54)3291-7460	(54)3291-3496	\N	Ensino superior Completo	\N	Ensino Técnico Completo	Pretos	Nenhuma	A pé	5 Km	Não	Aprovado	Concluida	2021-01-27	602	2021-08-30 00:45:40.803379
310	356	JESSICA FRANCIELLE MATAURO	2010-12-04	Feminino	727812756	64072420393	\N	(54)9668-1587	(54)3291-5350	\N	Ensino fundamental Completo	\N	Ensino médio Completo	Brancos	Nenhuma	Ônibus	15 Km	Não	Aprovado	Concluida	2021-01-18	602	2021-08-30 00:45:40.803379
311	385	BRUNA DE JESUS	2010-09-05	Feminino	501927643	20235716815	\N	(54)8115-7336	(54)9191-2310	\N	Ensino médio Incomplento	\N	Ensino médio Incomplento	Pardos	Nenhuma	Ônibus	10 Km	Sim	Aprovado	Concluida	2021-02-01	602	2021-08-30 00:45:40.803379
312	405	YASMIN RECH SOARES	2010-04-14	Feminino	759061724	60975103764	\N	(54)9662-5762	(54)9119-2407	\N	Ensino médio Completo	\N	Ensino Técnico Incompleto	Pardos	Deficiência visual	Carro	30 Km	Não	Aprovado	Pendente	2021-01-26	602	2021-08-30 00:45:40.803379
313	447	ÁLVARO POGGERE	2010-12-31	Masculino	158648981	93996358896	\N	\N	32913821	\N	Ensino superior Incompleto	\N	Ensino Técnico Incompleto	Pardos	Nenhuma	Carro	5 Km	Não	Aprovado	Concluida	2021-01-25	602	2021-08-30 00:45:40.803379
314	462	JAMILLY DOS SANTOS CORRÊA	2010-04-24	Feminino	592447800	61735528396	\N	(54)9651-5176	(54)3291-4990	\N	Ensino Técnico Incompleto	\N	Ensino médio Completo	Pardos	Nenhuma	Moto	1 Km	Não	Aprovado	Concluida	2021-01-17	602	2021-08-30 00:45:40.803379
315	474	ANDREIA LOPES	2010-05-26	Feminino	959285668	19274457251	\N	(54)9197-9444	32911011	\N	Ensino médio Completo	\N	Ensino médio Completo	Pardos	Nenhuma	Ônibus	15 Km	Não	Aprovado	Concluida	2021-02-08	602	2021-08-30 00:45:40.803379
316	483	SABRINA DUTRA DOS REIS	2010-04-02	Feminino	793176095	41311294097	\N	(54)9214-4428	(54)8144-9362	\N	Ensino médio Incomplento	\N	Ensino fundamental Incomplento	Indígenas	Nenhuma	Ônibus	20 Km	Sim	Aprovado	Concluida	2021-01-27	602	2021-08-30 00:45:40.803379
317	491	FELIPE GOMES MEDEIROS	2010-09-03	Feminino	327962871	86573337418	\N	(54)3291-4819	(54)3291-5141	\N	Ensino fundamental Incomplento	\N	Ensino superior Incompleto	Pretos	Nenhuma	Carro	5 Km	Não	Aprovado	Concluida	2021-01-22	602	2021-08-30 00:45:40.803379
318	494	DALTRO LEONCIO	2010-08-07	Masculino	610169102	22086154909	\N	(54)9687-7052	(54)9665-4965	\N	Ensino fundamental Completo	\N	Ensino médio Incomplento	Brancos	Nenhuma	Carro	1 Km	Não	Aprovado	Concluida	2021-01-29	602	2021-08-30 00:45:40.803379
319	503	ALLAN SILVA DE SOUSA	2010-01-15	Feminino	667179219	48371071455	\N	\N	(54)3291-2135	\N	Ensino superior Incompleto	\N	Ensino superior Completo	Brancos	Nenhuma	Carro	5 Km	Não	Aprovado	Concluida	2021-01-21	602	2021-08-30 00:45:40.803379
320	508	GABRIEL DE SOUSA	2010-03-07	Masculino	604390304	59518442763	\N	32916469	(54)3291-2244	\N	Ensino superior Incompleto	\N	Ensino fundamental Incomplento	Pretos	Nenhuma	Ônibus	15 Km	Não	Aprovado	Concluida	2021-01-12	602	2021-08-30 00:45:40.803379
321	512	ALINE BRUNELLO	2010-05-02	Feminino	442901453	48642640804	\N	32916336	(54)3291-2835	\N	Ensino médio Completo	\N	Ensino Técnico Incompleto	Pretos	Nenhuma	Bicicleta	10 Km	Não	Aprovado	Concluida	2021-01-29	602	2021-08-30 00:45:40.803379
322	519	JOÃO VICTOR ALMEIDA POSSA	2010-11-09	Masculino	678184990	23511907713	\N	(54)3280-1016	32914138	\N	Ensino Técnico Incompleto	\N	Ensino médio Incomplento	Indígenas	Nenhuma	Ônibus	10 Km	Sim	Aprovado	Pendente	2021-01-15	602	2021-08-30 00:45:40.803379
323	523	CANDICE SOLDATELLI	2010-08-02	Feminino	829781354	19246880297	\N	3291-3170	3291-1364	\N	Ensino fundamental Completo	\N	Ensino superior Completo	Brancos	Nenhuma	A pé	1 Km	Não	Aprovado	Concluida	2021-02-02	602	2021-08-30 00:45:40.803379
324	529	GABRIEL LUÍS FOCHESATO	2010-03-05	Masculino	606882229	54002512697	\N	(54)3291-4017	(54)9682-4398	\N	Ensino superior Incompleto	\N	Ensino médio Completo	Amarelos	Nenhuma	Carro	1 Km	Não	Aprovado	Pendente	2021-01-27	602	2021-08-30 00:45:40.803379
325	535	MARIANA ARMILIATO	2010-12-31	Feminino	514600378	61329770491	\N	(54)9948-6555	(54)9165-9716	\N	Ensino médio Completo	\N	Ensino médio Completo	Pardos	Nenhuma	A pé	5 Km	Sim	Reprovou	Concluida	2021-02-02	602	2021-08-30 00:45:40.803379
326	536	FABIO DAL ZOTTO	2010-06-17	Masculino	489229044	60725773392	\N	(54)3291-1078	(54)9165-9716	\N	Ensino fundamental Completo	\N	Ensino médio Completo	Brancos	Nenhuma	Ônibus	10 Km	Sim	Pendente	Pendente	2021-01-20	602	2021-08-30 00:45:40.803379
327	542	TIAGO GABRIEL DAROS VELHO	2010-12-11	Masculino	207911697	26437286480	\N	(54)9623-0818	(54)3291-9039	\N	Ensino médio Completo	\N	Ensino superior Completo	Amarelos	Nenhuma	Carro	30 Km	Não	Aprovado	Concluida	2021-01-16	602	2021-08-30 00:45:40.803379
328	555	ERIC DA CRUZ VAZ	2010-08-12	Masculino	327666364	54223372629	\N	(54)3291-3208	(54)3291-2653	\N	Ensino médio Incomplento	\N	Ensino Técnico Incompleto	Brancos	Nenhuma	Moto	5 Km	Não	Aprovado	Concluida	2021-02-04	602	2021-08-30 00:45:40.803379
329	558	VITORIA WILLRICH DE ARAUJO	2010-07-03	Feminino	734180514	85873499108	\N	(54)9990-6774	(54)9207-1163	\N	Ensino Técnico Incompleto	\N	Ensino Técnico Completo	Pardos	Nenhuma	Carro	1 Km	Não	Aprovado	Concluida	2021-01-13	603	2021-08-30 00:45:40.803379
330	571	NARCISO OSNI LUCRÉCIO	2010-06-09	Masculino	255232084	49882298472	\N	(54)9157-3336	(54)9951-2690	\N	Ensino fundamental Completo	\N	Ensino superior Completo	Indígenas	Nenhuma	Ônibus	15 Km	Não	Aprovado	Concluida	2021-01-18	603	2021-08-30 00:45:40.803379
331	587	SILVIA MARA BOFF	2010-02-25	Feminino	326741679	52359055042	\N	(54)9997-9784	(54)9127-1444	\N	Ensino superior Completo	\N	Ensino médio Incomplento	Brancos	Nenhuma	Carro	10 Km	Não	Pendente	Concluida	2021-01-22	603	2021-08-30 00:45:40.803379
332	614	RAFAELA SOUZA ESTEVO	2010-07-07	Feminino	432299414	84764701118	\N	\N	(54)9962-1420	\N	Ensino Técnico Incompleto	\N	Ensino médio Incomplento	Brancos	Nenhuma	A pé	30 Km	Sim	Aprovado	Concluida	2021-01-17	603	2021-08-30 00:45:40.803379
333	626	 CHARLES GRISON	2010-03-14	Masculino	515388568	17963907819	\N	(54)9165-3969	(54)9992-8969	\N	Ensino médio Completo	\N	Ensino médio Incomplento	Pardos	Nenhuma	Ônibus	5 Km	Não	Aprovado	Concluida	2021-01-24	603	2021-08-30 00:45:40.803379
334	634	 MAURICIO DALSOTTO	2010-05-29	Masculino	367506833	27731218519	\N	(54)9197-2329	(54)9667-7878	\N	Ensino Técnico Completo	\N	Ensino superior Completo	Pretos	Nenhuma	Moto	5 Km	Não	Aprovado	Pendente	2021-01-27	603	2021-08-30 00:45:40.803379
335	643	 LEONARDO BRIGOLINI	2010-12-21	Masculino	550357088	24552362317	\N	(54)9631-505	(54)3235-5117	\N	Ensino fundamental Incomplento	\N	Ensino fundamental Completo	Brancos	Deficiência visual	Ônibus	5 Km	Sim	Aprovado	Concluida	2021-01-10	603	2021-08-30 00:45:40.803379
336	651	 VITÓRIA TOMAZ	2010-04-28	Feminino	383515333	17308834792	\N	(54)9184-2962	(54)3291-6094	\N	Ensino fundamental Completo	\N	Ensino médio Incomplento	Brancos	Nenhuma	Ônibus	5 Km	Não	Aprovado	Concluida	2021-01-16	603	2021-08-30 00:45:40.803379
337	673	 GUSTAVO BIZOTTO SECCO	2010-10-07	Masculino	338308093	63579941517	\N	(54)9124-3297	(54)9614-6711	\N	Ensino médio Completo	\N	Ensino superior Completo	Pardos	Nenhuma	Carro	5 Km	Não	Aprovado	Concluida	2021-01-23	603	2021-08-30 00:45:40.803379
338	708	DANDARA BOEIRA QUINTANILHA	2010-04-30	Feminino	858191753	68908629030	\N	32913030	(54)9965-3111	\N	Ensino médio Incomplento	\N	Ensino médio Completo	Brancos	Nenhuma	A pé	5 Km	Sim	Aprovado	Concluida	2021-02-01	603	2021-08-30 00:45:40.803379
339	710	MILEIDE SILVA	2010-12-21	Feminino	924491950	87763679818	\N	(54)3291-7105	(54)9146-3068	\N	Ensino Técnico Incompleto	\N	Ensino Técnico Incompleto	Amarelos	Nenhuma	Ônibus	5 Km	Não	Aprovado	Concluida	2021-01-15	603	2021-08-30 00:45:40.803379
340	732	MIKAELEN GONÇALVES DA SILVA	2010-06-10	Feminino	672684295	65416368705	\N	(54)3291-2030	(54)3291-2866	\N	Ensino fundamental Completo	\N	Ensino fundamental Incomplento	Pretos	Nenhuma	Carro	10 Km	Não	Aprovado	Concluida	2021-02-05	603	2021-08-30 00:45:40.803379
341	790	MATHEUS SOARES QUINTANA	2010-05-02	Masculino	658742690	23155800040	\N	(54)3291-2713	(54)9900-5876	\N	Ensino Técnico Completo	\N	Ensino superior Completo	Brancos	Nenhuma	Ônibus	1 Km	Não	Aprovado	Concluida	2021-02-04	603	2021-08-30 00:45:40.803379
342	794	DANIELA DE FARIA	2010-04-17	Feminino	730121742	69410609500	\N	(54)9971-5520	(54)9156-5182	\N	Ensino fundamental Incomplento	\N	Ensino médio Incomplento	Brancos	Nenhuma	A pé	5 Km	Não	Aprovado	Concluida	2021-01-12	603	2021-08-30 00:45:40.803379
343	833	JOÃO PEDRO DE GOIS DOS REIS	2010-02-02	Masculino	190315524	13497823974	\N	(54)9255-4210	(54)9697-3615	\N	Ensino fundamental Completo	\N	Ensino Técnico Completo	Brancos	Nenhuma	Carro	10 Km	Não	Aprovado	Pendente	2021-02-01	603	2021-08-30 00:45:40.803379
344	843	VINÍCIUS GIRARDINI MOREIRA E SILVA	2010-04-09	Masculino	817285485	91831353875	\N	(54)9955-0096	(54)3291-1407	\N	Ensino Técnico Incompleto	\N	Ensino superior Completo	Pardos	Deficiência visual	Carro	10 Km	Sim	Reprovou	Concluida	2021-01-13	603	2021-08-30 00:45:40.803379
345	861	MARCELA SCOPEL	2010-07-20	Feminino	382960074	43637427319	\N	(54)3291-2478	(54)9180-9191	\N	Ensino superior Completo	\N	Ensino Técnico Completo	Amarelos	Nenhuma	A pé	20 Km	Não	Aprovado	Concluida	2021-01-22	603	2021-08-30 00:45:40.803379
346	891	FERNANDA POZZO	2010-02-09	Feminino	236138207	18907269740	\N	(54)9152-1297	(54)3291-1210	\N	Ensino médio Incomplento	\N	Ensino superior Completo	Brancos	Deficiência auditiva	A pé	20 Km	Não	Reprovou	Concluida	2021-02-06	603	2021-08-30 00:45:40.803379
347	928	LETÍCIA APARECIDA EBERT	2010-04-19	Feminino	469700616	28840409028	\N	(54)9703-3352	(54)3291-3382	\N	Ensino superior Completo	\N	Ensino superior Completo	Brancos	Nenhuma	Carro	5 Km	Sim	Pendente	Concluida	2021-01-16	603	2021-08-30 00:45:40.803379
348	938	MICHAEL RECH	2010-01-16	Feminino	959741656	20323936164	\N	(54)3291-1934	(54)9984-7729	\N	Ensino fundamental Incomplento	\N	Ensino superior Completo	Brancos	Nenhuma	Ônibus	1 Km	Não	Aprovado	Concluida	2021-01-31	603	2021-08-30 00:45:40.803379
349	959	JEAN BARBOSA	2010-10-15	Masculino	633509174	57499013361	\N	32917066	(54)9609-2186	\N	Ensino superior Incompleto	\N	Ensino Técnico Incompleto	Pardos	Nenhuma	Ônibus	5 Km	Não	Aprovado	Pendente	2021-01-24	603	2021-08-30 00:45:40.803379
350	974	DIEGO BUSIN	2010-09-08	Masculino	503345779	39023789410	\N	(54)3291-9094	(54)9663-2977	\N	Ensino médio Incomplento	\N	Ensino Técnico Completo	Brancos	Nenhuma	Carro	10 Km	Não	Reprovou	Concluida	2021-02-07	603	2021-08-30 00:45:40.803379
351	995	CRISELEN CASTAGNA	2010-08-26	Feminino	828970192	10131208377	\N	(54)3291-4629	(54)9158-4943	\N	Ensino fundamental Incomplento	\N	Ensino fundamental Completo	Pardos	Nenhuma	Ônibus	5 Km	Não	Reprovou	Concluida	2021-01-25	603	2021-08-30 00:45:40.803379
352	1	DANIELI SANTINI	2009-06-14	Feminino	662817027	50465101929	\N	(54)3291-3073	(54)9195-2874	\N	Ensino fundamental Completo	\N	Ensino médio Incomplento	Indígenas	Nenhuma	Ônibus	1 Km	Não	Aprovado	Concluida	2021-01-24	701	2021-08-30 00:45:40.803379
353	41	CRISTIAN FURLAN	2009-01-17	Masculino	888538149	60225768873	\N	(54)9987-8987	99043429	\N	Ensino Técnico Completo	\N	Ensino médio Incomplento	Pardos	Nenhuma	Carro	15 Km	Sim	Reprovou	Concluida	2021-01-19	701	2021-08-30 00:45:40.803379
354	83	LUIZ FERNANDO RIZZON	2009-06-22	Masculino	891542226	97396707523	\N	(54)3291-1453	(54)3291-2088	\N	Ensino Técnico Incompleto	\N	Ensino fundamental Incomplento	Brancos	Nenhuma	A pé	5 Km	Não	Aprovado	Concluida	2021-02-02	701	2021-08-30 00:45:40.803379
355	109	BRUNA DA SILVA	2009-12-15	Feminino	918084127	61552415735	\N	(54)3291-1870	(54)3291-2060	\N	Ensino fundamental Incomplento	\N	Ensino médio Completo	Pardos	Nenhuma	Moto	15 Km	Não	Aprovado	Pendente	2021-01-17	701	2021-08-30 00:45:40.803379
356	122	ONADIR DA SILVA DE OLIVEIRA	2009-09-05	Masculino	783643207	65436326851	\N	(54)9121-9821	32911963	\N	Ensino superior Incompleto	\N	Ensino médio Completo	Pardos	Nenhuma	A pé	1 Km	Não	Pendente	Concluida	2021-01-19	701	2021-08-30 00:45:40.803379
357	134	FELIPE ZAMBONI	2009-10-17	Masculino	766773646	30487087843	\N	(54)3291-1393	(54)3235-5097	\N	Ensino superior Incompleto	\N	Ensino fundamental Completo	Brancos	Nenhuma	Ônibus	30 Km	Não	Aprovado	Pendente	2021-01-25	701	2021-08-30 00:45:40.803379
358	135	ALINE SILVA VIEIRA	2009-05-31	Feminino	113347236	79795992382	\N	(54)9152-9690	(54)3235-5096	\N	Ensino médio Completo	\N	Ensino Técnico Incompleto	Pardos	Deficiência visual	Moto	1 Km	Não	Aprovado	Pendente	2021-01-10	701	2021-08-30 00:45:40.803379
359	144	GABRIELLY GRAZIOTIN ALMEIDA	2009-11-29	Feminino	529110354	57204711815	\N	(54)9192-3293	(54)9938-2822	\N	Ensino médio Incomplento	\N	Ensino superior Completo	Pretos	Nenhuma	Ônibus	1 Km	Não	Aprovado	Pendente	2021-01-30	701	2021-08-30 00:45:40.803379
360	146	MICAEL BIANCHI SPIGOLON	2009-08-07	Masculino	144562483	37874329609	\N	(54)9624-1476	(54)3291-2883	\N	Ensino médio Completo	\N	Ensino Técnico Completo	Brancos	Nenhuma	Carro	20 Km	Não	Pendente	Pendente	2021-01-17	701	2021-08-30 00:45:40.803379
361	166	SAMANTA DA LUZ FEREIRA	2009-08-25	Feminino	637036617	82379117283	\N	(54)9985-2966	32914516	\N	Ensino fundamental Completo	\N	Ensino Técnico Incompleto	Brancos	Deficiência mental	Carro	20 Km	Não	Aprovado	Concluida	2021-01-21	701	2021-08-30 00:45:40.803379
362	177	REGINA MARIA ALVES CAMELO	2009-12-11	Feminino	716523171	18354237189	\N	(54)9691-0709	(54)3291-1207	\N	Ensino fundamental Completo	\N	Ensino superior Completo	Pretos	Nenhuma	Ônibus	30 Km	Não	Aprovado	Concluida	2021-02-08	701	2021-08-30 00:45:40.803379
363	225	SEBASTIÃO VALDERES BOEIRA	2009-12-30	Feminino	407430711	11695418076	\N	(54)9147-3927	\N	\N	Ensino Técnico Incompleto	\N	Ensino médio Completo	Indígenas	Deficiência visual	Carro	5 Km	Não	Aprovado	Pendente	2021-02-08	701	2021-08-30 00:45:40.803379
364	226	ELFIRA MACHADO BOEIRA	2009-04-07	Masculino	324226729	58782183925	\N	(54)8148-6576	(54)9128-2751	\N	Ensino médio Incomplento	\N	Ensino Técnico Completo	Pardos	Nenhuma	Ônibus	5 Km	Não	Aprovado	Concluida	2021-02-03	701	2021-08-30 00:45:40.803379
365	252	DANIEL PELIZZARI	2009-07-20	Masculino	101250898	78057904728	\N	(54)9157-4055	(54)9932-0850	\N	Ensino médio Completo	\N	Ensino superior Incompleto	Pretos	Nenhuma	Carro	10 Km	Sim	Pendente	Pendente	2021-01-13	701	2021-08-30 00:45:40.803379
366	254	IRAN ANDRADE DE LIMA	2009-06-04	Masculino	485433087	13756564852	\N	(54)9692-9892	(54)9928-0226	\N	Ensino Técnico Incompleto	\N	Ensino fundamental Completo	Indígenas	Nenhuma	Ônibus	1 Km	Sim	Reprovou	Pendente	2021-01-31	701	2021-08-30 00:45:40.803379
367	256	CAROLAINE MULLER	2009-12-24	Feminino	646878022	50063351271	\N	(54)9980-7422	(54)9907-2318	\N	Ensino fundamental Completo	\N	Ensino superior Incompleto	Pretos	Nenhuma	Ônibus	5 Km	Não	Reprovou	Concluida	2021-02-03	701	2021-08-30 00:45:40.803379
368	279	LUCIANA APARECIDA CARDOSO HENRIQUE SANT	2009-08-04	Feminino	655297447	49295687603	\N	(54)9603-8361	32914238	\N	Ensino médio Incomplento	\N	Ensino fundamental Completo	Brancos	Nenhuma	A pé	20 Km	Não	Reprovou	Concluida	2021-01-23	701	2021-08-30 00:45:40.803379
369	294	EDRIELE CAVALLI	2009-10-24	Feminino	416819363	93357001212	\N	(54)8105-4278	(54)3291-3751	\N	Ensino Técnico Incompleto	\N	Ensino superior Completo	Brancos	Nenhuma	Carro	10 Km	Não	Pendente	Concluida	2021-01-23	701	2021-08-30 00:45:40.803379
370	368	AUGUSTO BURATTI	2009-03-14	Masculino	741445562	41797588344	\N	(54)9114-5621	(54)9932-2782	\N	Ensino médio Completo	\N	Ensino superior Completo	Brancos	Nenhuma	A pé	10 Km	Não	Aprovado	Pendente	2021-02-07	701	2021-08-30 00:45:40.803379
371	372	ITAMARA GUZZON	2009-06-09	Feminino	259215045	33002135057	\N	(54)9203-5404	(54)9902-8906	\N	Ensino fundamental Incomplento	\N	Ensino superior Completo	Brancos	Nenhuma	Bicicleta	1 Km	Não	Pendente	Concluida	2021-01-14	701	2021-08-30 00:45:40.803379
372	377	MARCELO PEREIRA VARELA	2009-07-28	Masculino	999354378	79173660675	\N	(54)9173-2696	(54)9922-9397	\N	Ensino fundamental Completo	\N	Ensino Técnico Completo	Pardos	Nenhuma	Ônibus	50 Km	Não	Aprovado	Concluida	2021-01-22	701	2021-08-30 00:45:40.803379
373	396	JOSÉ CARLOS HASKEL VELHO	2009-09-03	Masculino	617682521	18540186326	\N	(54)9924-0099	(54)9700-8428	\N	Ensino fundamental Incomplento	\N	Ensino fundamental Incomplento	Brancos	Deficiência motora	Carro	10 Km	Não	Aprovado	Pendente	2021-02-04	701	2021-08-30 00:45:40.803379
374	397	MATHEUS SOARES QUINTANA	2009-12-07	Masculino	717439540	43768606038	\N	(54)9714-3892	(54)3291-3305	\N	Ensino médio Incomplento	\N	Ensino superior Completo	Pardos	Nenhuma	Carro	5 Km	Sim	Aprovado	Concluida	2021-02-06	701	2021-08-30 00:45:40.803379
375	415	MARINETE BONNI FANTIN	2009-06-07	Feminino	218266743	84288804536	\N	(54)3280-1170	(54)9976-2832	\N	Ensino fundamental Completo	\N	Ensino fundamental Completo	Brancos	Nenhuma	Ônibus	15 Km	Não	Aprovado	Concluida	2021-01-21	701	2021-08-30 00:45:40.803379
376	419	CRISTINE CHINELATO	2009-11-22	Feminino	459286679	28811448675	\N	(54)3291-4573	(54)9134-5890	\N	Ensino fundamental Incomplento	\N	Ensino superior Incompleto	Pardos	Nenhuma	A pé	15 Km	Não	Pendente	Concluida	2021-01-21	702	2021-08-30 00:45:40.803379
377	437	SANDRA  MARIA DE LIMA LOURENÇO	2009-09-25	Feminino	445247967	93952621474	\N	(54)9938-6583	(54)3291-6318	\N	Ensino superior Completo	\N	Ensino Técnico Incompleto	Brancos	Nenhuma	Carro	5 Km	Não	Aprovado	Concluida	2021-02-05	702	2021-08-30 00:45:40.803379
378	463	MAURO POLO GIORDANI	2009-03-28	Masculino	288553225	21607024142	\N	(11)1111-1111	32914159	\N	Ensino superior Completo	\N	Ensino superior Completo	Brancos	Nenhuma	Ônibus	15 Km	Não	Aprovado	Pendente	2021-01-16	702	2021-08-30 00:45:40.803379
379	464	MARCO ANTONIO STEDILE	2009-08-07	Masculino	413161730	45850846817	\N	(11)1111-1111	32912182	\N	Ensino superior Incompleto	\N	Ensino Técnico Incompleto	Brancos	Nenhuma	Carro	30 Km	Não	Pendente	Concluida	2021-02-06	702	2021-08-30 00:45:40.803379
380	469	SABRINA SALVADOR CARARO	2009-05-01	Feminino	721019960	97202180559	\N	(54)3291-2244	32919009	\N	Ensino fundamental Completo	\N	Ensino Técnico Completo	Amarelos	Nenhuma	Moto	1 Km	Não	Aprovado	Concluida	2021-01-31	702	2021-08-30 00:45:40.803379
381	477	GREICIELI SANTINI	2009-07-16	Feminino	307094132	36473541683	\N	(54)8432-4133	(54)3291-1809	\N	Ensino superior Completo	\N	Ensino fundamental Completo	Pardos	Nenhuma	A pé	1 Km	Não	Aprovado	Pendente	2021-01-20	702	2021-08-30 00:45:40.803379
382	484	MAIRA FONGARO	2009-03-27	Feminino	172375181	71192066721	\N	(54)9646-4832	(54)3291-2273	\N	Ensino fundamental Completo	\N	Ensino Técnico Completo	Pardos	Nenhuma	A pé	1 Km	Não	Aprovado	Concluida	2021-01-23	702	2021-08-30 00:45:40.803379
383	525	LUIZ HENRIQUE P. KAPP	2009-09-10	Masculino	446819350	32553982652	\N	(11)1111-1111	32912121	\N	Ensino superior Incompleto	\N	Ensino médio Completo	Pardos	Nenhuma	Carro	10 Km	Não	Aprovado	Pendente	2021-01-20	702	2021-08-30 00:45:40.803379
384	528	JULIO CÉSAR CAMELO	2009-07-03	Masculino	310767265	47272164723	\N	(54)3280-1142	32915346	\N	Ensino superior Completo	\N	Ensino Técnico Completo	Pardos	Nenhuma	Ônibus	5 Km	Sim	Aprovado	Concluida	2021-02-01	702	2021-08-30 00:45:40.803379
385	539	GUSTAVO ZANOL	2009-02-07	Masculino	263230770	70178800899	\N	(  )    -	(54)9175-5155	\N	Ensino Técnico Incompleto	\N	Ensino médio Completo	Pardos	Nenhuma	A pé	30 Km	Não	Reprovou	Concluida	2021-01-19	702	2021-08-30 00:45:40.803379
386	541	BEATRIZ PAOLA CABRAL DA S. RIBEIRO	2009-02-15	Feminino	687359276	29290160302	\N	(54)3291-5111	(54)3291-3937	\N	Ensino superior Incompleto	\N	Ensino fundamental Incomplento	Pardos	Nenhuma	Moto	5 Km	Não	Aprovado	Concluida	2021-02-03	702	2021-08-30 00:45:40.803379
387	548	KETLIN RAMONE DE LIMA BOEIRA	2009-06-18	Feminino	120192045	73092074325	\N	(54)3291-1329	\N	\N	Ensino Técnico Incompleto	\N	Ensino Técnico Incompleto	Pardos	Nenhuma	A pé	15 Km	Sim	Aprovado	Concluida	2021-01-11	702	2021-08-30 00:45:40.803379
388	551	GABRIEL	2009-06-25	Masculino	353361339	48008318515	\N	(54)3291-7550	(54)3291-3059	\N	Ensino Técnico Incompleto	\N	Ensino fundamental Incomplento	Pretos	Nenhuma	Carro	15 Km	Não	Reprovou	Concluida	2021-01-21	702	2021-08-30 00:45:40.803379
389	630	 CAMILE SANDRI	2009-03-30	Feminino	937587490	44250650412	\N	(54)9999-0607	(54)9626-5117	\N	Ensino médio Incomplento	\N	Ensino médio Completo	Pardos	Nenhuma	Carro	20 Km	Não	Pendente	Pendente	2021-01-20	702	2021-08-30 00:45:40.803379
390	641	 ALISSON LEONARDO DE OLVIEIRA	2009-08-04	Masculino	481496043	73517101790	\N	(54)9118-5198	(54)3034-0309	\N	Ensino Técnico Incompleto	\N	Ensino Técnico Completo	Brancos	Nenhuma	Moto	30 Km	Não	Aprovado	Concluida	2021-01-18	702	2021-08-30 00:45:40.803379
391	686	 SILVIA RECH POLETO	2009-01-19	Feminino	647072902	14379928887	\N	(54)9701-5419	(54)9908-2637	\N	Ensino superior Incompleto	\N	Ensino superior Incompleto	Pretos	Nenhuma	A pé	10 Km	Sim	Aprovado	Concluida	2021-01-25	702	2021-08-30 00:45:40.803379
392	712	JOANA DARK	2009-05-11	Feminino	824529227	43658006253	\N	(54)3291-3647	(54)3291-4602	\N	Ensino Técnico Incompleto	\N	Ensino Técnico Incompleto	Pardos	Nenhuma	Ônibus	5 Km	Não	Aprovado	Concluida	2021-01-22	702	2021-08-30 00:45:40.803379
393	717	OTÁVIO RECH CAMASSOLA	2009-12-26	Masculino	853062734	76110875615	\N	(54)3291-3929	\N	\N	Ensino médio Incomplento	\N	Ensino Técnico Incompleto	Pardos	Nenhuma	Carro	5 Km	Não	Aprovado	Concluida	2021-01-10	702	2021-08-30 00:45:40.803379
394	725	LUIZ HENRIQUE SOLDERA	2009-07-28	Masculino	720515696	63855176833	\N	(54)3291-3016	32801142	\N	Ensino fundamental Completo	\N	Ensino médio Completo	Pardos	Nenhuma	A pé	30 Km	Não	Aprovado	Concluida	2021-02-06	702	2021-08-30 00:45:40.803379
395	731	EDUARDO ROSSI	2009-06-01	Masculino	950233125	84985458371	\N	(54)9998-7926	(54)9914-0240	\N	Ensino Técnico Incompleto	\N	Ensino fundamental Incomplento	Brancos	Deficiência visual	Carro	1 Km	Sim	Reprovou	Concluida	2021-01-30	702	2021-08-30 00:45:40.803379
396	739	BERNARDO FREDERICK ASCARI	2009-03-07	Masculino	671430468	44170424326	\N	(54)9657-3417	(54)9193-2300	\N	Ensino médio Completo	\N	Ensino superior Incompleto	Amarelos	Nenhuma	Ônibus	30 Km	Não	Aprovado	Concluida	2021-01-11	702	2021-08-30 00:45:40.803379
397	742	GIOVANI DA SILVA FANTIN	2009-05-05	Feminino	223215142	23938275787	\N	(54)9656-6362	(54)9182-9947	\N	Ensino superior Completo	\N	Ensino superior Completo	Brancos	Deficiência visual	Carro	10 Km	Não	Aprovado	Pendente	2021-01-19	702	2021-08-30 00:45:40.803379
398	761	MAURO RICARDO DE CASTILHOS	2009-04-03	Masculino	154229055	35718038434	\N	(54)9926-2960	(54)3291-1096	\N	Ensino fundamental Incomplento	\N	Ensino Técnico Incompleto	Brancos	Nenhuma	Moto	5 Km	Não	Aprovado	Concluida	2021-01-24	702	2021-08-30 00:45:40.803379
399	773	TIAGO BRASIL	2009-02-18	Masculino	625422837	57577995597	\N	(54)9165-9716	(54)9204-9549	\N	Ensino Técnico Completo	\N	Ensino médio Incomplento	Indígenas	Nenhuma	Ônibus	5 Km	Não	Aprovado	Concluida	2021-01-29	702	2021-08-30 00:45:40.803379
400	774	GABRIELE CAMPOS PIRES	2009-12-28	Feminino	539534436	89525332640	\N	(54)9925-3198	(54)3291-3301	\N	Ensino superior Completo	\N	Ensino Técnico Incompleto	Pretos	Deficiência motora	Carro	15 Km	Não	Pendente	Concluida	2021-02-04	702	2021-08-30 00:45:40.803379
401	788	ERIC DA SILVA FONTANA	2009-01-04	Masculino	814688373	96840433359	\N	(54)3291-4449	(54)9999-9999	\N	Ensino Técnico Completo	\N	Ensino fundamental Completo	Brancos	Nenhuma	Carro	5 Km	Não	Pendente	Concluida	2021-01-18	702	2021-08-30 00:45:40.803379
402	852	BRUNA TREVIZAN	2009-11-25	Feminino	936990616	72316053413	\N	(54)9900-2157	(54)9904-3367	\N	Ensino superior Completo	\N	Ensino superior Incompleto	Amarelos	Nenhuma	Moto	15 Km	Não	Aprovado	Pendente	2021-01-10	702	2021-08-30 00:45:40.803379
403	867	ISMAEL TORRESAN	2009-03-03	Masculino	166853793	32018352753	\N	(54)3291-3600	(54)3291-5221	\N	Ensino médio Completo	\N	Ensino superior Incompleto	Brancos	Nenhuma	Ônibus	15 Km	Não	Aprovado	Concluida	2021-01-30	702	2021-08-30 00:45:40.803379
404	870	MARIA DE LOURDES DE CASTILHOS FORTUNATTI	2009-12-18	Feminino	952892463	24525286322	\N	(54)3291-4101	(54)9612-6333	\N	Ensino Técnico Incompleto	\N	Ensino Técnico Completo	Brancos	Nenhuma	Ônibus	20 Km	Não	Aprovado	Pendente	2021-01-29	702	2021-08-30 00:45:40.803379
405	899	MARIA MARGARIDA CORREA BORGES	2009-09-03	Feminino	413182209	34429767397	\N	(54)9922-4369	(54)9932-7421	\N	Ensino superior Completo	\N	Ensino Técnico Completo	Pardos	Nenhuma	Carro	1 Km	Não	Aprovado	Concluida	2021-02-01	702	2021-08-30 00:45:40.803379
406	921	RAQUEL BOLZON	2009-12-13	Feminino	960507962	43551106697	\N	(54)9145-6452	(54)9708-8199	\N	Ensino superior Completo	\N	Ensino médio Completo	Pardos	Nenhuma	Carro	20 Km	Sim	Pendente	Concluida	2021-01-31	702	2021-08-30 00:45:40.803379
407	948	ANDRÉ MORANDI	2009-02-20	Masculino	597379029	50740260384	\N	(54)9644-3500	(55)9627-1430	\N	Ensino fundamental Completo	\N	Ensino médio Completo	Brancos	Nenhuma	Carro	50 Km	Não	Pendente	Concluida	2021-01-23	702	2021-08-30 00:45:40.803379
408	949	MATEUS CASANOVA	2009-02-23	Masculino	587805404	55377464651	\N	(54)9100-9027	(54)9164-2537	\N	Ensino médio Completo	\N	Ensino médio Completo	Brancos	Nenhuma	Moto	15 Km	Não	Aprovado	Concluida	2021-01-19	702	2021-08-30 00:45:40.803379
409	994	CLARISSA TOLARDO	2009-03-10	Feminino	885267165	52647082458	\N	(54)3280-1187	(54)9155-2281	\N	Ensino superior Completo	\N	Ensino fundamental Completo	Brancos	Nenhuma	Ônibus	10 Km	Não	Aprovado	Pendente	2021-01-12	702	2021-08-30 00:45:40.803379
410	15	VILMA CECILIA LEONARDELLI CARRARO	2008-12-20	Feminino	306267021	63425069913	\N	(54)3291-1641	(54)9619-9161	\N	Ensino Técnico Incompleto	\N	Ensino Técnico Completo	Amarelos	Nenhuma	A pé	1 Km	Não	Aprovado	Pendente	2021-01-14	801	2021-08-30 00:45:40.803379
411	30	MICHEL MARCON	2008-10-16	Masculino	212294900	11983556666	\N	(54)9103-5320	\N	\N	Ensino Técnico Completo	\N	Ensino médio Incomplento	Brancos	Nenhuma	Moto	20 Km	Não	Aprovado	Concluida	2021-01-13	801	2021-08-30 00:45:40.803379
412	55	RANGEL RIZZO	2008-07-09	Masculino	969019360	51835068921	\N	(54)9116-6359	99368582	\N	Ensino superior Incompleto	\N	Ensino fundamental Incomplento	Pardos	Nenhuma	Ônibus	5 Km	Não	Reprovou	Concluida	2021-01-18	801	2021-08-30 00:45:40.803379
413	111	NEIVA TEREZINHA BORGUETTI	2008-12-22	Feminino	904792798	35237342688	\N	(54)9157-3336	(54)9146-1700	\N	Ensino Técnico Completo	\N	Ensino fundamental Incomplento	Brancos	Nenhuma	Carro	5 Km	Sim	Aprovado	Pendente	2021-02-04	801	2021-08-30 00:45:40.803379
414	126	MARCOS GRIZZON	2008-01-12	Masculino	873752141	67037133473	\N	(54)9183-9216	32912749	\N	Ensino superior Completo	\N	Ensino médio Incomplento	Amarelos	Nenhuma	Carro	20 Km	Não	Aprovado	Concluida	2021-02-06	801	2021-08-30 00:45:40.803379
415	141	ROGER FONTANA DA CRUZ	2008-01-02	Masculino	793536175	64746874585	\N	(54)9132-6922	(54)3291-2359	\N	Ensino superior Incompleto	\N	Ensino Técnico Completo	Pardos	Nenhuma	Bicicleta	30 Km	Não	Aprovado	Concluida	2021-01-31	801	2021-08-30 00:45:40.803379
416	142	CAMILI VITÓRIA FONGARO	2008-02-27	Feminino	673638336	70677350883	\N	(54)9613-3419	(54)9143-9980	\N	Ensino médio Completo	\N	Ensino Técnico Completo	Pardos	Nenhuma	A pé	20 Km	Não	Aprovado	Concluida	2021-01-20	801	2021-08-30 00:45:40.803379
417	227	JULIANO MARCELO BONELLA	2008-08-27	Masculino	443059445	11213023118	\N	(54)9174-6069	(54)9644-0712	\N	Ensino Técnico Incompleto	\N	Ensino superior Completo	Brancos	Nenhuma	Ônibus	10 Km	Não	Aprovado	Concluida	2021-01-16	801	2021-08-30 00:45:40.803379
418	232	GEISON CARDOSO	2008-06-30	Masculino	428678647	63744265676	\N	(54)9704-1922	(54)9989-1731	\N	Ensino superior Completo	\N	Ensino Técnico Completo	Pardos	Nenhuma	A pé	10 Km	Não	Pendente	Concluida	2021-01-18	801	2021-08-30 00:45:40.803379
419	250	KELVIN DIOGO GOMES RICARDO	2008-01-04	Masculino	856880247	64617615103	\N	(54)8147-1101	(54)9977-7851	\N	Ensino superior Incompleto	\N	Ensino superior Incompleto	Brancos	Nenhuma	A pé	15 Km	Não	Aprovado	Pendente	2021-01-16	801	2021-08-30 00:45:40.803379
420	268	JOANA EDUARDA PEREIRA GOBBI	2008-05-18	Feminino	139990779	11180301928	\N	(11)1111-1111	(54)9158-3355	\N	Ensino fundamental Completo	\N	Ensino médio Completo	Brancos	Nenhuma	Carro	20 Km	Não	Aprovado	Concluida	2021-02-03	801	2021-08-30 00:45:40.803379
421	276	JULIANA DE SOUZA PONES	2008-09-21	Feminino	868882913	88369046968	\N	(54)3291-4928	3291- 2674	\N	Ensino fundamental Incomplento	\N	Ensino médio Completo	Brancos	Nenhuma	A pé	5 Km	Sim	Aprovado	Concluida	2021-02-04	801	2021-08-30 00:45:40.803379
422	306	LIVIA LEITE RODRIGUES	2008-10-07	Feminino	156354480	87863828467	\N	(54)9602-3359	(54)3291-3382	\N	Ensino superior Completo	\N	Ensino superior Incompleto	Brancos	Nenhuma	A pé	5 Km	Não	Reprovou	Concluida	2021-01-21	801	2021-08-30 00:45:40.803379
423	331	RIAN ANDREOLA RENOSTO	2008-04-02	Masculino	384518994	74770230513	\N	(54)3291-1802	(54)3291-2002	\N	Ensino Técnico Incompleto	\N	Ensino fundamental Incomplento	Indígenas	Nenhuma	Carro	5 Km	Não	Pendente	Concluida	2021-01-26	801	2021-08-30 00:45:40.803379
424	338	MORGANA SANDI	2008-02-16	Feminino	557061350	14462939493	\N	(54)9908-4074	(54)3280-1069	\N	Ensino superior Incompleto	\N	Ensino Técnico Incompleto	Pardos	Deficiência visual	Moto	30 Km	Não	Aprovado	Concluida	2021-01-21	801	2021-08-30 00:45:40.803379
425	345	NICOLLY DE CASTRO	2008-04-02	Feminino	447852023	28965814279	\N	(  )    -	(54)9152-0846	\N	Ensino fundamental Incomplento	\N	Ensino médio Incomplento	Brancos	Deficiência motora	A pé	5 Km	Não	Aprovado	Concluida	2021-01-12	801	2021-08-30 00:45:40.803379
426	348	JAQUELINE SOLDERA	2008-10-04	Feminino	202199992	78274914663	\N	(54)3291-2700	(54)9154-9752	\N	Ensino Técnico Incompleto	\N	Ensino superior Incompleto	Brancos	Nenhuma	Ônibus	20 Km	Não	Aprovado	Concluida	2021-01-18	801	2021-08-30 00:45:40.803379
427	358	LIRIA MARILEI DE OLIVEIRA	2008-05-26	Feminino	844763375	43713949702	\N	(54)3291-3929	(54)3235-1150	\N	Ensino superior Incompleto	\N	Ensino superior Completo	Indígenas	Nenhuma	Moto	5 Km	Não	Aprovado	Concluida	2021-01-13	801	2021-08-30 00:45:40.803379
428	373	LUANA MAGRIN	2008-06-16	Feminino	326243611	33934269041	\N	(54)9920-8653	(54)3291-2151	\N	Ensino superior Incompleto	\N	Ensino superior Incompleto	Brancos	Nenhuma	A pé	5 Km	Não	Aprovado	Pendente	2021-01-11	801	2021-08-30 00:45:40.803379
429	432	MARLI ANDREOLA CASANOVA	2008-12-28	Feminino	753660687	77716884655	\N	(54)3291-2447	(54)3291-9133	\N	Ensino superior Completo	\N	Ensino superior Incompleto	Pardos	Nenhuma	Ônibus	30 Km	Não	Aprovado	Pendente	2021-01-10	801	2021-08-30 00:45:40.803379
430	448	GIOVANNI POGGERE	2008-03-04	Masculino	605472267	51754978985	\N	(54)3291-3883	30342623	\N	Ensino superior Completo	\N	Ensino Técnico Completo	Pretos	Nenhuma	Moto	10 Km	Não	Pendente	Concluida	2021-01-26	801	2021-08-30 00:45:40.803379
431	493	ANDRÉIA PINHEIROS	2008-12-30	Masculino	492950199	18712898050	\N	(54)9127-8073	(54)9983-4926	\N	Ensino fundamental Completo	\N	Ensino fundamental Incomplento	Brancos	Nenhuma	Ônibus	20 Km	Não	Pendente	Concluida	2021-01-18	801	2021-08-30 00:45:40.803379
432	497	FERNANDA CIOATO	2008-12-27	Masculino	577742381	25784515070	\N	\N	(54)3291-2344	\N	Ensino superior Incompleto	\N	Ensino Técnico Completo	Pardos	Deficiência visual	Carro	1 Km	Sim	Aprovado	Concluida	2021-01-30	801	2021-08-30 00:45:40.803379
433	511	TERSA BATISTA DA SILVA	2008-12-23	Feminino	864730606	65879834492	\N	(54)3291-2133	(54)9171-6949	\N	Ensino Técnico Incompleto	\N	Ensino superior Incompleto	Pardos	Nenhuma	Bicicleta	30 Km	Sim	Aprovado	Pendente	2021-01-13	801	2021-08-30 00:45:40.803379
434	545	GABRIELE MOTA PEREIRA	2008-02-08	Feminino	471046547	21326706451	\N	(54)9603-7744	(54)3291-2002	\N	Ensino fundamental Completo	\N	Ensino Técnico Completo	Pardos	Nenhuma	A pé	20 Km	Não	Reprovou	Concluida	2021-01-20	801	2021-08-30 00:45:40.803379
435	546	VIRGINIA MARIA MARQUES DOS SANTOS	2008-12-08	Feminino	299085547	73979247605	\N	(54)9141-9255	(54)9906-5274	\N	Ensino fundamental Incomplento	\N	Ensino Técnico Completo	Pretos	Nenhuma	Moto	30 Km	Sim	Pendente	Concluida	2021-01-10	802	2021-08-30 00:45:40.803379
436	557	LEONARDO DE SOUZA	2008-06-18	Masculino	258853928	74587897161	\N	(54)9606-4308	(54)9178-2603	\N	Ensino médio Completo	\N	Ensino Técnico Incompleto	Amarelos	Nenhuma	Ônibus	30 Km	Não	Pendente	Pendente	2021-01-15	802	2021-08-30 00:45:40.803379
437	580	VITOR QUISSINI MARTININGHI	2008-09-22	Masculino	521756520	83282339002	\N	(54)9148-9448	(54)9108-8069	\N	Ensino superior Completo	\N	Ensino Técnico Completo	Pardos	Nenhuma	Ônibus	5 Km	Não	Aprovado	Concluida	2021-02-04	802	2021-08-30 00:45:40.803379
438	637	 SILVANE FRANCI DE PAULA SCAIN	2008-01-13	Feminino	545603898	15026651000	\N	(54)9215-2118	(54)3291-3933	\N	Ensino fundamental Completo	\N	Ensino superior Completo	Pretos	Nenhuma	Ônibus	20 Km	Não	Pendente	Concluida	2021-01-21	802	2021-08-30 00:45:40.803379
439	646	 JONATHAN PELLIZZARI	2008-10-01	Masculino	823569394	68350944811	\N	(54)3291-3446	(54)9977-2699	\N	Ensino médio Completo	\N	Ensino fundamental Completo	Brancos	Nenhuma	Carro	10 Km	Sim	Aprovado	Pendente	2021-01-17	802	2021-08-30 00:45:40.803379
440	664	 MARIA CRISTINA SCODRO MICHELON	2008-08-31	Feminino	434832255	11734843391	\N	(54)9206-5857	(54)3291-4039	\N	Ensino superior Completo	\N	Ensino superior Completo	Pardos	Nenhuma	Moto	5 Km	Não	Aprovado	Concluida	2021-01-23	802	2021-08-30 00:45:40.803379
441	685	 BRUNO DE CASTILHOS FORTUNATTI	2008-03-06	Masculino	267698664	43997075501	\N	(54)9136-7949	(54)9903-0268	\N	Ensino médio Incomplento	\N	Ensino superior Incompleto	Pretos	Nenhuma	Ônibus	10 Km	Sim	Pendente	Concluida	2021-01-26	802	2021-08-30 00:45:40.803379
442	692	 AMANDA UBATUBA FERREIRA	2008-05-22	Feminino	450460996	35326937042	\N	(54)9901-9284	(54)3291-1939	\N	Ensino Técnico Incompleto	\N	Ensino superior Incompleto	Amarelos	Nenhuma	A pé	15 Km	Não	Aprovado	Concluida	2021-01-14	802	2021-08-30 00:45:40.803379
443	696	 ERICK CASANOVA QUADROS	2008-10-19	Masculino	351154699	14423513989	\N	(54)9963-0143	(54)9991-6502	\N	Ensino superior Incompleto	\N	Ensino superior Incompleto	Brancos	Nenhuma	Carro	20 Km	Não	Aprovado	Concluida	2021-01-21	802	2021-08-30 00:45:40.803379
444	706	CLARA BEATRIZ MAR LEMOS	2008-07-20	Feminino	533329470	38425124025	\N	(54)3291-1756	(54)9645-8990	\N	Ensino superior Incompleto	\N	Ensino fundamental Incomplento	Indígenas	Nenhuma	Ônibus	10 Km	Não	Aprovado	Pendente	2021-02-04	802	2021-08-30 00:45:40.803379
445	709	FATIMA INES BORTOLON	2008-10-08	Feminino	163427011	26321754373	\N	(54)9699-2843	(54)3291-4970	\N	Ensino médio Incomplento	\N	Ensino fundamental Incomplento	Pardos	Nenhuma	A pé	50 Km	Sim	Aprovado	Concluida	2021-01-29	802	2021-08-30 00:45:40.803379
446	723	NYCOLAS ZANELA BIANCHI	2008-12-24	Masculino	954835324	55245545187	\N	(54)9978-5687	3291-3125	\N	Ensino Técnico Incompleto	\N	Ensino Técnico Completo	Brancos	Nenhuma	Carro	20 Km	Não	Aprovado	Concluida	2021-01-20	802	2021-08-30 00:45:40.803379
447	734	BERNARDO ALEXANDRE P. DOS SANTOS	2008-10-08	Masculino	440248264	11748957065	\N	(54)3291-1116	(54)3291-1939	\N	Ensino superior Completo	\N	Ensino Técnico Incompleto	Brancos	Nenhuma	Ônibus	30 Km	Não	Aprovado	Concluida	2021-01-27	802	2021-08-30 00:45:40.803379
448	754	GUSTAVO GALVAM	2008-06-02	Masculino	425543913	50928862555	\N	(54)3267-8035	(54)9939-7752	\N	Ensino Técnico Incompleto	\N	Ensino médio Completo	Brancos	Nenhuma	Carro	30 Km	Não	Aprovado	Pendente	2021-01-21	802	2021-08-30 00:45:40.803379
449	756	MARINA CICHIN CARARO	2008-11-06	Feminino	456815902	24005322673	\N	(54)8432-5367	(54)9159-5658	\N	Ensino fundamental Completo	\N	Ensino fundamental Incomplento	Indígenas	Nenhuma	Carro	30 Km	Sim	Reprovou	Concluida	2021-01-24	802	2021-08-30 00:45:40.803379
450	783	JONATHAN DE LIMA GOMES	2008-11-19	Masculino	529916746	19712316491	\N	(54)9980-8528	(54)9172-6795	\N	Ensino fundamental Incomplento	\N	Ensino médio Completo	Pardos	Nenhuma	Ônibus	30 Km	Não	Reprovou	Concluida	2021-01-14	802	2021-08-30 00:45:40.803379
451	800	VITÓRIA APARECIDA SOGARI	2008-10-18	Feminino	131890372	54681479892	\N	(54)9704-1687	(54)9715-3522	\N	Ensino superior Completo	\N	Ensino fundamental Incomplento	Pardos	Nenhuma	Carro	5 Km	Sim	Aprovado	Concluida	2021-01-24	802	2021-08-30 00:45:40.803379
452	804	MARIA ISABEL MOTA DA SILVA	2008-09-06	Feminino	262031596	15476572201	\N	(54)3291-3234	(54)3291-6334	\N	Ensino superior Completo	\N	Ensino Técnico Completo	Brancos	Nenhuma	Carro	15 Km	Não	Aprovado	Pendente	2021-01-15	802	2021-08-30 00:45:40.803379
453	805	RAFAEL GUERRA DA ROSA	2008-03-16	Masculino	520659034	80492442080	\N	(54)3291-5272	(54)3280-1016	\N	Ensino superior Incompleto	\N	Ensino Técnico Incompleto	Brancos	Nenhuma	A pé	1 Km	Não	Aprovado	Concluida	2021-01-15	802	2021-08-30 00:45:40.803379
454	816	TALISON DALBERTO DO AMARANTE	2008-04-22	Masculino	456069194	49126930635	\N	(54)9689-9395	(54)9685-0247	\N	Ensino superior Incompleto	\N	Ensino fundamental Incomplento	Pardos	Deficiência auditiva	Moto	15 Km	Não	Aprovado	Concluida	2021-01-26	802	2021-08-30 00:45:40.803379
455	830	JULIANA BRASIL	2008-09-08	Feminino	938551383	78402431703	\N	(54)9644-9117	(54)9925-7912	\N	Ensino médio Completo	\N	Ensino fundamental Completo	Pretos	Nenhuma	Carro	10 Km	Não	Aprovado	Pendente	2021-01-13	802	2021-08-30 00:45:40.803379
456	840	SUELIN PELLIZZARI	2008-11-26	Feminino	427331164	93512503529	\N	(54)9124-3297	(54)9645-2711	\N	Ensino Técnico Completo	\N	Ensino superior Completo	Pardos	Nenhuma	Carro	10 Km	Sim	Aprovado	Concluida	2021-01-16	802	2021-08-30 00:45:40.803379
457	842	EDUARDA CASTILHOS	2008-04-07	Feminino	571585155	81310949073	\N	(54)9215-0650	(54)3291-2874	\N	Ensino fundamental Completo	\N	Ensino fundamental Completo	Pardos	Deficiência visual	Carro	1 Km	Não	Aprovado	Concluida	2021-01-24	802	2021-08-30 00:45:40.803379
458	853	ADRIELI NUNES	2008-11-30	Feminino	790552033	73517068488	\N	(11)1111-1111	(54)9108-5691	\N	Ensino superior Incompleto	\N	Ensino Técnico Completo	Pardos	Nenhuma	Ônibus	1 Km	Sim	Aprovado	Concluida	2021-01-27	802	2021-08-30 00:45:40.803379
459	859	LOGAN R. DOS SANTOS	2008-10-07	Masculino	261440063	12806895616	\N	(54)9122-8019	(54)9961-3621	\N	Ensino Técnico Completo	\N	Ensino médio Completo	Brancos	Nenhuma	Carro	1 Km	Não	Pendente	Concluida	2021-02-03	802	2021-08-30 00:45:40.803379
460	873	ANA CLAUDIA SORANZO	2008-10-05	Feminino	527894039	98810928438	\N	(54)9164-2653	(54)3291-2670	\N	Ensino Técnico Completo	\N	Ensino Técnico Incompleto	Pardos	Nenhuma	Carro	1 Km	Sim	Reprovou	Pendente	2021-01-29	802	2021-08-30 00:45:40.803379
461	875	VERGILIO TOME	2008-03-06	Masculino	775142032	37865504892	\N	(54)9109-1841	32911360	\N	Ensino superior Completo	\N	Ensino médio Completo	Pretos	Deficiência auditiva	Carro	15 Km	Não	Aprovado	Pendente	2021-01-22	802	2021-08-30 00:45:40.803379
462	878	SIRLEI CECHIN	2008-12-21	Feminino	425978664	93297786770	\N	(54)3291-1854	(54)3291-2614	\N	Ensino superior Completo	\N	Ensino superior Incompleto	Brancos	Nenhuma	A pé	5 Km	Não	Aprovado	Concluida	2021-01-30	802	2021-08-30 00:45:40.803379
463	915	JONATAN GIACOMELLI PAGNO	2008-01-12	Masculino	645486632	96169906977	\N	(54)9120-2190	32913382	\N	Ensino superior Incompleto	\N	Ensino superior Incompleto	Pardos	Deficiência auditiva	Ônibus	20 Km	Não	Pendente	Concluida	2021-02-05	802	2021-08-30 00:45:40.803379
464	923	FRANCIELE DA ROSA DOS SANTOS	2008-10-27	Feminino	975924181	41280690824	\N	(54)9904-2624	(54)3291-7996	\N	Ensino Técnico Completo	\N	Ensino superior Completo	Amarelos	Nenhuma	Ônibus	30 Km	Não	Aprovado	Concluida	2021-01-15	802	2021-08-30 00:45:40.803379
465	931	LETICIA POLIDORO SUSIN	2008-06-13	Feminino	460194499	77879209162	\N	(54)9919-1034	(54)3291-2135	\N	Ensino Técnico Incompleto	\N	Ensino fundamental Completo	Indígenas	Nenhuma	Carro	15 Km	Não	Aprovado	Concluida	2021-01-27	802	2021-08-30 00:45:40.803379
466	993	TIAGO SPIGOLON	2008-12-01	Masculino	299414043	93203670200	\N	(54)3291-4145	(54)9940-2531	\N	Ensino fundamental Completo	\N	Ensino fundamental Completo	Brancos	Nenhuma	Ônibus	10 Km	Não	Aprovado	Pendente	2021-01-28	802	2021-08-30 00:45:40.803379
467	996	ALINE ARGENTA	2008-11-12	Feminino	827328008	76487500462	\N	\N	(54)9983-5200	\N	Ensino superior Incompleto	\N	Ensino Técnico Completo	Pardos	Nenhuma	A pé	5 Km	Não	Aprovado	Pendente	2021-01-16	802	2021-08-30 00:45:40.803379
468	14	MADALENA FATIMA LIMA NAZARIO	2007-04-30	Feminino	376314356	36412271835	\N	32912205	(54)9619-9161	\N	Ensino médio Completo	\N	Ensino superior Completo	Amarelos	Nenhuma	Carro	5 Km	Não	Aprovado	Concluida	2021-02-05	901	2021-08-30 00:45:40.803379
469	16	ROSMARI LEONCIO	2007-10-29	Feminino	217154534	25237422895	\N	\N	(54)3817-1807	\N	Ensino fundamental Completo	\N	Ensino fundamental Incomplento	Brancos	Nenhuma	Ônibus	5 Km	Não	Aprovado	Concluida	2021-02-02	901	2021-08-30 00:45:40.803379
470	19	FLAVIA CAPELETTI	2007-12-05	Feminino	427941109	25360704737	\N	91549871	(54)9913-2794	\N	Ensino médio Incomplento	\N	Ensino fundamental Incomplento	Pretos	Nenhuma	Carro	10 Km	Não	Aprovado	Concluida	2021-01-11	901	2021-08-30 00:45:40.803379
471	26	JUNIOR NOVELLO	2007-08-12	Masculino	392093707	68165546232	\N	(54)9938-3016	(54)9694-7124	\N	Ensino médio Completo	\N	Ensino superior Completo	Brancos	Nenhuma	Ônibus	50 Km	Não	Pendente	Concluida	2021-02-04	901	2021-08-30 00:45:40.803379
472	46	FABRÍCIO LUIZ CAVALI	2007-11-26	Masculino	886887891	70308199468	\N	(54)9163-4604	3291-5361	\N	Ensino médio Completo	\N	Ensino superior Incompleto	Pardos	Nenhuma	Ônibus	20 Km	Não	Aprovado	Concluida	2021-01-25	901	2021-08-30 00:45:40.803379
473	48	VALDOIR DOS SANTOS NAZARIO	2007-08-20	Masculino	900860175	36266625031	\N	(54)3291-4293	3291-1239	\N	Ensino fundamental Incomplento	\N	Ensino fundamental Incomplento	Brancos	Nenhuma	Moto	10 Km	Não	Pendente	Concluida	2021-01-10	901	2021-08-30 00:45:40.803379
474	56	LUCAS DEON SORANZO	2007-05-12	Masculino	617884926	87751967464	\N	(54)3291-2109	(54)9134-0467	\N	Ensino médio Completo	\N	Ensino Técnico Incompleto	Amarelos	Nenhuma	A pé	5 Km	Não	Aprovado	Concluida	2021-01-19	901	2021-08-30 00:45:40.803379
475	79	IRACEMA LORITA BUSIN BERNARDI	2007-05-15	Feminino	933958734	76539394787	\N	(54)9133-5585	1213165465	\N	Ensino médio Completo	\N	Ensino superior Incompleto	Brancos	Nenhuma	Ônibus	1 Km	Não	Aprovado	Concluida	2021-01-18	901	2021-08-30 00:45:40.803379
476	82	MARIO LUIZ STEDILE	2007-02-05	Masculino	756500223	86435003026	\N	(54)3291-2298	(54)3291-3059	\N	Ensino Técnico Incompleto	\N	Ensino superior Incompleto	Brancos	Nenhuma	Carro	15 Km	Não	Reprovou	Pendente	2021-02-06	901	2021-08-30 00:45:40.803379
477	90	ANA DAGMAR MACHADO	2007-12-04	Feminino	992774314	84745891362	\N	(54)9119-1206	32914426	\N	Ensino médio Incomplento	\N	Ensino superior Completo	Pardos	Nenhuma	Moto	5 Km	Não	Reprovou	Concluida	2021-02-06	901	2021-08-30 00:45:40.803379
478	101	MAURÍCIO VIGANÓ MARCON	2007-07-06	Masculino	792634233	43672268875	\N	(54)9187-2663	(54)9998-3340	\N	Ensino médio Completo	\N	Ensino superior Completo	Pardos	Nenhuma	Carro	5 Km	Não	Aprovado	Concluida	2021-02-02	901	2021-08-30 00:45:40.803379
479	156	GABRIELLY NAVARINI	2007-01-12	Feminino	694129199	41333280679	\N	(54)9952-9474	(54)3291-7525	\N	Ensino Técnico Incompleto	\N	Ensino superior Incompleto	Brancos	Nenhuma	Ônibus	5 Km	Não	Aprovado	Concluida	2021-01-13	901	2021-08-30 00:45:40.803379
480	165	KETLEN PADILHA BOGO	2007-03-14	Feminino	945942360	68154502015	\N	(54)3291-4609	3291-3161	\N	Ensino superior Incompleto	\N	Ensino superior Incompleto	Brancos	Deficiência visual	Ônibus	15 Km	Não	Aprovado	Concluida	2021-02-04	901	2021-08-30 00:45:40.803379
481	195	LUCIANO AMPESSAN GENEROSO	2007-11-21	Masculino	122692178	77094397854	\N	(54)9933-7582	32911790	\N	Ensino fundamental Incomplento	\N	Ensino superior Completo	Pardos	Deficiência auditiva	A pé	15 Km	Não	Aprovado	Concluida	2021-02-03	901	2021-08-30 00:45:40.803379
482	216	ALEX SANDRO ALMEIDA BERTELLI	2007-02-08	Masculino	285887566	31435192433	\N	(54)9699-2843	32912729	\N	Ensino fundamental Completo	\N	Ensino superior Incompleto	Indígenas	Nenhuma	A pé	1 Km	Não	Aprovado	Pendente	2021-02-03	901	2021-08-30 00:45:40.803379
483	233	RAFAEL AUGUSTO BOLZAN	2007-07-20	Masculino	540010510	32194416343	\N	(54)9950-6026	(54)8138-1996	\N	Ensino médio Completo	\N	Ensino superior Completo	Brancos	Nenhuma	Ônibus	30 Km	Sim	Aprovado	Pendente	2021-01-14	901	2021-08-30 00:45:40.803379
484	251	ELENISA DUTRA DEMORI	2007-06-20	Feminino	247191793	31161645706	\N	(54)9200-0643	(54)3291-4551	\N	Ensino superior Incompleto	\N	Ensino superior Incompleto	Pretos	Nenhuma	Ônibus	15 Km	Não	Aprovado	Pendente	2021-01-20	901	2021-08-30 00:45:40.803379
485	257	FELIPE FIAMINGHI	2007-08-17	Masculino	942750753	35115479070	\N	(54)9253-2184	(54)9636-2620	\N	Ensino fundamental Completo	\N	Ensino fundamental Incomplento	Brancos	Deficiência auditiva	Ônibus	20 Km	Não	Reprovou	Pendente	2021-01-25	901	2021-08-30 00:45:40.803379
486	265	JOANA HELENA LUZ	2007-03-21	Feminino	665243178	32938084567	\N	(54)9133-4599	(54)9663-6281	\N	Ensino fundamental Completo	\N	Ensino fundamental Completo	Brancos	Deficiência mental	Carro	10 Km	Não	Reprovou	Concluida	2021-01-12	901	2021-08-30 00:45:40.803379
487	324	GABRIELLY ALMEIDA VEDANA	2007-07-08	Feminino	450213208	46765883010	\N	(  )    -	(54)3291-9140	\N	Ensino superior Incompleto	\N	Ensino Técnico Incompleto	Pardos	Nenhuma	Ônibus	50 Km	Não	Aprovado	Concluida	2021-01-25	901	2021-08-30 00:45:40.803379
488	344	DOUGLAS TOLEDO DANDOLINI	2007-12-12	Masculino	533058409	98959514110	\N	32912884	(54)9919-2656	\N	Ensino fundamental Completo	\N	Ensino médio Incomplento	Brancos	Nenhuma	Ônibus	10 Km	Não	Aprovado	Pendente	2021-01-20	901	2021-08-30 00:45:40.803379
489	361	JONATAN FIAMINGHI	2007-11-22	Masculino	635197549	41686013289	\N	(54)9187-0266	(54)9642-8685	\N	Ensino superior Completo	\N	Ensino fundamental Incomplento	Brancos	Nenhuma	A pé	1 Km	Não	Aprovado	Pendente	2021-01-28	901	2021-08-30 00:45:40.803379
490	407	LEOMAR DA SILVA RODRIGUES	2007-05-18	Masculino	403702457	62119629969	\N	(54)3291-9007	(54)9663-3512	\N	Ensino fundamental Incomplento	\N	Ensino superior Completo	Pretos	Nenhuma	Moto	5 Km	Não	Pendente	Concluida	2021-01-30	901	2021-08-30 00:45:40.803379
491	414	ARTUR NOVELO	2007-07-10	Masculino	420942222	28982702966	\N	(54)3034-0309	(54)9167-9108	\N	Ensino médio Incomplento	\N	Ensino médio Completo	Amarelos	Nenhuma	Carro	10 Km	Não	Pendente	Pendente	2021-02-08	901	2021-08-30 00:45:40.803379
492	435	HENRIQUE CASTILHOS DA SILVA	2007-02-28	Masculino	137783857	52852324183	\N	(54)9992-9158	(54)9608-8577	\N	Ensino Técnico Completo	\N	Ensino médio Incomplento	Pardos	Deficiência auditiva	Carro	1 Km	Sim	Aprovado	Concluida	2021-01-27	901	2021-08-30 00:45:40.803379
493	450	VITORIA RODRIGUES BAHU	2007-09-11	Feminino	964771796	15302753876	\N	(54)3291-4412	(54)3291-3550	\N	Ensino médio Incomplento	\N	Ensino fundamental Completo	Brancos	Nenhuma	A pé	5 Km	Não	Aprovado	Pendente	2021-02-05	901	2021-08-30 00:45:40.803379
494	470	MIRIÃ HOFFMANN ZORZIN	2007-08-29	Feminino	469737373	63977302243	\N	(11)1111-1111	96214415	\N	Ensino fundamental Completo	\N	Ensino superior Incompleto	Brancos	Nenhuma	Ônibus	5 Km	Não	Reprovou	Concluida	2021-01-11	901	2021-08-30 00:45:40.803379
495	471	ALEX DALPONTE	2007-03-04	Masculino	835164161	91874172280	\N	(54)3291-3772	32914062	\N	Ensino fundamental Completo	\N	Ensino médio Incomplento	Pardos	Nenhuma	Moto	5 Km	Não	Aprovado	Concluida	2021-02-01	901	2021-08-30 00:45:40.803379
496	480	DANIELA GIRARDELLO	2007-04-14	Feminino	417575802	25996786093	\N	(11)1111-1111	(54)3291-9003	\N	Ensino médio Completo	\N	Ensino médio Completo	Pardos	Nenhuma	A pé	20 Km	Sim	Reprovou	Pendente	2021-02-05	901	2021-08-30 00:45:40.803379
497	488	UILIAN PEREIRA	2007-04-26	Masculino	689686079	79726274071	\N	(54)9961-1628	(54)9614-7323	\N	Ensino superior Completo	\N	Ensino fundamental Incomplento	Pardos	Nenhuma	Moto	15 Km	Não	Aprovado	Concluida	2021-02-02	902	2021-08-30 00:45:40.803379
498	538	FERNANDA GRISON DA SILVA	2007-03-03	Masculino	490373695	42778217427	\N	(54)9120-8790	(54)9984-6427	\N	Ensino Técnico Completo	\N	Ensino médio Completo	Pretos	Nenhuma	Carro	50 Km	Sim	Aprovado	Pendente	2021-01-19	902	2021-08-30 00:45:40.803379
499	575	JOICE MACIEL DE OLIVEIRA DOS PASSOS	2007-09-20	Feminino	721067614	25191821218	\N	(54)9148-5184	(54)3291-3358	\N	Ensino médio Completo	\N	Ensino fundamental Completo	Pardos	Nenhuma	A pé	10 Km	Não	Aprovado	Concluida	2021-02-07	902	2021-08-30 00:45:40.803379
500	586	SILVANE IMUZOLI DA ROSA DE GOIS GIRARDELL	2007-07-10	Feminino	799891775	85988272934	\N	(54)9956-6853	(54)9907-7237	\N	Ensino superior Incompleto	\N	Ensino Técnico Completo	Brancos	Nenhuma	A pé	30 Km	Sim	Aprovado	Concluida	2021-01-13	902	2021-08-30 00:45:40.803379
501	604	SABRINA GRISON DOS REIS	2007-05-01	Feminino	339634072	45854700287	\N	(11)9544-3210	(54)9622-3839	\N	Ensino fundamental Completo	\N	Ensino superior Completo	Amarelos	Nenhuma	Ônibus	15 Km	Não	Aprovado	Pendente	2021-01-23	902	2021-08-30 00:45:40.803379
502	625	 ODETE RIZZON BUGANÇA	2007-11-15	Feminino	126195351	43098721760	\N	(54)9224-5150	(54)3291-3730	\N	Ensino Técnico Incompleto	\N	Ensino médio Completo	Indígenas	Nenhuma	A pé	30 Km	Não	Aprovado	Concluida	2021-01-26	902	2021-08-30 00:45:40.803379
503	636	 VINICIUS ZANELLA GIACOMELLI	2007-09-09	Masculino	535085413	76378163187	\N	(54)8132-8003	(54)3291-2741	\N	Ensino Técnico Incompleto	\N	Ensino fundamental Incomplento	Brancos	Nenhuma	Carro	10 Km	Não	Aprovado	Concluida	2021-02-01	902	2021-08-30 00:45:40.803379
695	881	GUSTAVO FELIPE VANIN	2005-03-09	Masculino	341237875	40725503914	\N	(54)3291-1096	\N	\N	Ensino superior Incompleto	\N	Ensino médio Completo	Pardos	Nenhuma	Carro	1 Km	Não	Aprovado	Concluida	2021-01-15	M202	2021-08-30 00:45:40.817298
504	645	 ARTHUR SIQUEIRA REZER	2007-07-10	Masculino	538323622	26954123339	\N	(54)9971-9989	(54)9919-6802	\N	Ensino superior Incompleto	\N	Ensino Técnico Incompleto	Pardos	Nenhuma	Moto	15 Km	Não	Aprovado	Concluida	2021-02-03	902	2021-08-30 00:45:40.803379
505	674	 MICHAEL MAIKY DAROS	2007-04-01	Masculino	151456840	99595814577	\N	(54)9119-1379	(54)9143-2015	\N	Ensino Técnico Incompleto	\N	Ensino médio Incomplento	Indígenas	Nenhuma	Carro	5 Km	Não	Pendente	Pendente	2021-01-23	902	2021-08-30 00:45:40.803379
506	702	 JOÃO VITOR DOS SANTOS VARGAS	2007-12-19	Masculino	380082253	64549985444	\N	(54)9965-1264	(54)3291-2668	\N	Ensino superior Completo	\N	Ensino médio Completo	Brancos	Deficiência motora	A pé	1 Km	Não	Aprovado	Concluida	2021-01-25	902	2021-08-30 00:45:40.803379
507	738	LUCAS CAINÃ PRESTES GARCIA	2007-11-20	Masculino	291575674	80720730520	\N	(54)9951-5098	(54)9159-5658	\N	Ensino Técnico Completo	\N	Ensino superior Completo	Pardos	Nenhuma	Carro	15 Km	Sim	Aprovado	Pendente	2021-01-12	902	2021-08-30 00:45:40.803379
508	767	ELIANE MICHELON BORGHETTI	2007-05-26	Feminino	733412924	33104706637	\N	(54)9956-7261	(54)3235-1076	\N	Ensino superior Completo	\N	Ensino Técnico Completo	Pardos	Nenhuma	Ônibus	20 Km	Não	Aprovado	Concluida	2021-01-25	902	2021-08-30 00:45:40.803379
509	771	JULIANA ZUANAS	2007-06-07	Feminino	763292525	17739027083	\N	(54)9928-0226	(54)3291-1962	\N	Ensino médio Incomplento	\N	Ensino Técnico Completo	Pardos	Deficiência mental	A pé	20 Km	Não	Aprovado	Concluida	2021-01-18	902	2021-08-30 00:45:40.803379
510	776	JAMILE FONGARO	2007-04-23	Feminino	516215332	27920211509	\N	(54)9144-9202	(54)3280-1027	\N	Ensino Técnico Incompleto	\N	Ensino médio Incomplento	Brancos	Deficiência visual	Carro	5 Km	Não	Aprovado	Concluida	2021-01-15	902	2021-08-30 00:45:40.803379
511	778	RAFAEL DIDONÉ	2007-08-25	Masculino	560733203	60445007091	\N	(54)9977-3199	(54)3280-1034	\N	Ensino médio Incomplento	\N	Ensino médio Completo	Indígenas	Nenhuma	A pé	20 Km	Não	Aprovado	Concluida	2021-01-17	902	2021-08-30 00:45:40.803379
512	782	YANN MARCELO OLIVEIRA	2007-06-25	Masculino	119829346	16285870753	\N	(11)1111-1111	(54)3291-3556	\N	Ensino fundamental Completo	\N	Ensino superior Completo	Indígenas	Nenhuma	A pé	15 Km	Não	Aprovado	Pendente	2021-01-17	902	2021-08-30 00:45:40.817298
513	787	JULIO BRANCO DA SILVA	2007-11-08	Masculino	700304637	56370622204	\N	(54)3291-1744	(54)9931-7450	\N	Ensino Técnico Completo	\N	Ensino fundamental Completo	Brancos	Nenhuma	A pé	20 Km	Não	Aprovado	Concluida	2021-01-19	902	2021-08-30 00:45:40.817298
514	811	LAURA GARBIN POLIDORO	2007-12-06	Feminino	829348908	56882346317	\N	(54)3291-4411	(11)1111-1111	\N	Ensino superior Completo	\N	Ensino superior Incompleto	Pardos	Nenhuma	Ônibus	15 Km	Não	Pendente	Pendente	2021-01-26	902	2021-08-30 00:45:40.817298
515	826	MARIA EDUARDA RIZZON	2007-08-03	Feminino	957196076	70905406383	\N	(54)9646-1871	(54)3291-3552	\N	Ensino fundamental Incomplento	\N	Ensino Técnico Incompleto	Indígenas	Nenhuma	Carro	15 Km	Não	Aprovado	Concluida	2021-01-15	902	2021-08-30 00:45:40.817298
516	846	LARA EMELINDA ZAN	2007-05-18	Feminino	713938812	46145036580	\N	(54)9615-8374	(54)9106-7634	\N	Ensino médio Completo	\N	Ensino médio Completo	Pardos	Nenhuma	Ônibus	15 Km	Não	Reprovou	Pendente	2021-02-03	902	2021-08-30 00:45:40.817298
517	890	CARLOS EDUARDO RODRIGUES	2007-02-04	Masculino	717621482	70629608188	\N	(54)9146-1960	(54)9132-5402	\N	Ensino Técnico Completo	\N	Ensino médio Completo	Pardos	Nenhuma	Bicicleta	10 Km	Não	Aprovado	Concluida	2021-01-24	902	2021-08-30 00:45:40.817298
518	904	ALISSON JÚNIOR BORBA	2007-04-14	Masculino	572959973	68232463150	\N	(54)3291-3734	(54)9915-6367	\N	Ensino Técnico Incompleto	\N	Ensino superior Completo	Brancos	Nenhuma	Carro	30 Km	Não	Aprovado	Concluida	2021-01-20	902	2021-08-30 00:45:40.817298
519	908	MATEUS FABBRO	2007-12-03	Masculino	537625557	53935168485	\N	(54)9982-1582	(54)9650-6709	\N	Ensino superior Incompleto	\N	Ensino médio Incomplento	Amarelos	Nenhuma	A pé	5 Km	Não	Aprovado	Pendente	2021-02-01	902	2021-08-30 00:45:40.817298
520	914	CARLOS EDUARDO CAMATTI	2007-09-30	Masculino	585855029	27390450240	\N	(54)9168-4445	(11)1111-1111	\N	Ensino Técnico Incompleto	\N	Ensino superior Completo	Pardos	Nenhuma	Carro	15 Km	Não	Pendente	Concluida	2021-01-10	902	2021-08-30 00:45:40.817298
521	924	FABIO BORGES VIEIRA	2007-02-05	Masculino	846505642	33179400541	\N	(54)9964-0807	(54)0000-0000	\N	Ensino Técnico Completo	\N	Ensino fundamental Completo	Brancos	Nenhuma	A pé	10 Km	Sim	Pendente	Pendente	2021-01-29	902	2021-08-30 00:45:40.817298
522	940	LUAN MARINO KOCHHANN	2007-01-22	Feminino	922082281	23884120093	\N	(54)9609-0284	(54)9657-7150	\N	Ensino Técnico Completo	\N	Ensino Técnico Incompleto	Indígenas	Deficiência visual	Carro	30 Km	Não	Aprovado	Concluida	2021-01-24	902	2021-08-30 00:45:40.817298
523	954	MORGANA CAPELETTI BETT	2007-02-03	Feminino	560964504	15764023898	\N	(54)9103-8140	(54)9977-8364	\N	Ensino superior Incompleto	\N	Ensino médio Completo	Pardos	Nenhuma	A pé	15 Km	Sim	Aprovado	Concluida	2021-01-23	902	2021-08-30 00:45:40.817298
524	955	LUCIANO SCARMIN	2007-09-24	Masculino	743257875	90914687097	\N	32913152	(54)9654-1115	\N	Ensino médio Incomplento	\N	Ensino fundamental Incomplento	Pardos	Nenhuma	Ônibus	10 Km	Não	Aprovado	Concluida	2021-01-11	902	2021-08-30 00:45:40.817298
525	979	LUCAS ANDRE FONGARO	2007-05-22	Masculino	953030961	20386340002	\N	(54)3235-5030	(54)9927-3919	\N	Ensino Técnico Incompleto	\N	Ensino superior Incompleto	Pardos	Nenhuma	A pé	15 Km	Não	Aprovado	Pendente	2021-02-05	902	2021-08-30 00:45:40.817298
526	991	FERNANDA BIONDO BIAZUS	2007-10-29	Feminino	355764124	64216909937	\N	(54)3291-3666	(54)9695-6070	\N	Ensino Técnico Incompleto	\N	Ensino Técnico Completo	Brancos	Nenhuma	Moto	1 Km	Não	Aprovado	Concluida	2021-02-07	902	2021-08-30 00:45:40.817298
527	54	GILBERTO PELISSARI	2016-08-07	Masculino	897284578	90293535932	\N	(54)9602-2303	(54)3291-2946	\N	Ensino médio Incomplento	\N	Ensino fundamental Completo	Pardos	Nenhuma	A pé	20 Km	Não	Aprovado	Concluida	2021-01-21	Pr01	2021-08-30 00:45:40.817298
528	74	VIVIANE LENISE MARTENINGHI MARTINS	2016-12-28	Feminino	941031939	99836761162	\N	(54)3034-0270	32142287	\N	Ensino médio Completo	\N	Ensino médio Completo	Brancos	Nenhuma	A pé	30 Km	Não	Reprovou	Concluida	2021-01-15	Pr01	2021-08-30 00:45:40.817298
529	110	GABRIELA ROMANO	2016-12-31	Feminino	397026819	98474449123	\N	(54)9157-3336	(54)8135-8493	\N	Ensino fundamental Completo	\N	Ensino médio Completo	Brancos	Deficiência auditiva	Carro	5 Km	Sim	Aprovado	Concluida	2021-01-17	Pr01	2021-08-30 00:45:40.817298
530	124	ROSELI CARARO DE OLIVEIRA	2016-12-23	Feminino	632647474	94780976228	\N	(54)3291-2399	32919172	\N	Ensino superior Completo	\N	Ensino Técnico Incompleto	Brancos	Nenhuma	A pé	10 Km	Não	Aprovado	Concluida	2021-01-15	Pr01	2021-08-30 00:45:40.817298
531	127	LINDOMAR GONÇALVES DE JESUS	2016-08-18	Masculino	932556685	49984863435	\N	(54)9927-5718	3267-8246	\N	Ensino médio Incomplento	\N	Ensino superior Completo	Brancos	Nenhuma	Ônibus	15 Km	Não	Pendente	Concluida	2021-02-08	Pr01	2021-08-30 00:45:40.817298
532	148	CAROLINE BRITO RODRIGUES	2016-05-24	Feminino	812670839	22076188680	\N	(54)9978-4303	(54)9902-9613	\N	Ensino fundamental Completo	\N	Ensino fundamental Incomplento	Pardos	Nenhuma	Ônibus	1 Km	Não	Aprovado	Concluida	2021-02-05	Pr01	2021-08-30 00:45:40.817298
533	163	GABRIELA SILVA DA ROSA	2016-03-23	Feminino	446454498	77519421286	\N	(54)3291-7501	3291 44 30	\N	Ensino médio Incomplento	\N	Ensino fundamental Completo	Amarelos	Nenhuma	Ônibus	15 Km	Não	Pendente	Concluida	2021-01-28	Pr01	2021-08-30 00:45:40.817298
534	180	LUCAS DE OLIVEIRA HERPICH	2016-09-15	Masculino	419123744	27000638822	\N	(54)9138-4436	(57)3235-5039	\N	Ensino superior Incompleto	\N	Ensino Técnico Incompleto	Brancos	Nenhuma	A pé	5 Km	Não	Pendente	Pendente	2021-01-16	Pr01	2021-08-30 00:45:40.817298
535	183	RENATO FELIPE RECH	2016-05-03	Masculino	531051987	11224493010	\N	(54)3291-3844	(54)9197-9775	\N	Ensino médio Incomplento	\N	Ensino Técnico Incompleto	Brancos	Nenhuma	Carro	15 Km	Não	Aprovado	Concluida	2021-01-22	Pr01	2021-08-30 00:45:40.817298
536	207	ALISON DA J. VARELA	2016-06-23	Masculino	834315992	74130871326	\N	(54)9197-9959	(54)9980-2117	\N	Ensino fundamental Incomplento	\N	Ensino superior Incompleto	Amarelos	Nenhuma	Ônibus	5 Km	Não	Reprovou	Concluida	2021-01-17	Pr01	2021-08-30 00:45:40.817298
537	210	GUSTAVO CAMASSOLA	2016-08-29	Masculino	516916087	22671443864	\N	(54)9148-4141	(54)3291-2713	\N	Ensino fundamental Completo	\N	Ensino médio Completo	Pardos	Nenhuma	Ônibus	5 Km	Não	Aprovado	Pendente	2021-01-20	Pr01	2021-08-30 00:45:40.817298
538	217	JULIANA MENEGUZZO	2016-08-25	Feminino	687587597	16912232425	\N	(54)9145-7409	91755236	\N	Ensino superior Incompleto	\N	Ensino fundamental Completo	Amarelos	Nenhuma	Carro	10 Km	Não	Aprovado	Pendente	2021-01-10	Pr01	2021-08-30 00:45:40.817298
539	221	MILENE FÁTIMA VARELA	2016-10-18	Feminino	116625945	26819292858	\N	(11)9133-6475	(54)3291-4121	\N	Ensino Técnico Incompleto	\N	Ensino médio Incomplento	Brancos	Nenhuma	Ônibus	1 Km	Não	Pendente	Concluida	2021-01-20	Pr01	2021-08-30 00:45:40.817298
540	243	EDUARDO PAIM	2016-12-23	Masculino	375172820	83016463133	\N	(54)9700-7212	(54)9148-9083	\N	Ensino médio Incomplento	\N	Ensino Técnico Incompleto	Pardos	Deficiência auditiva	Carro	20 Km	Não	Aprovado	Concluida	2021-01-20	Pr01	2021-08-30 00:45:40.817298
541	281	EDVÂNIA OLIVEIRA	2016-07-24	Feminino	148139506	17188468865	\N	(54)9981-7382	(54)3291-4207	\N	Ensino superior Completo	\N	Ensino superior Incompleto	Brancos	Nenhuma	A pé	1 Km	Sim	Aprovado	Pendente	2021-02-01	Pr01	2021-08-30 00:45:40.817298
542	285	JHENIFER SLONGO	2016-09-06	Feminino	711545810	46905009793	\N	(54)9915-1005	35042447	\N	Ensino médio Incomplento	\N	Ensino fundamental Incomplento	Pretos	Nenhuma	Ônibus	5 Km	Não	Aprovado	Concluida	2021-01-20	Pr01	2021-08-30 00:45:40.817298
543	354	GABRIEL GOULART MONTANARI	2016-12-28	Masculino	879187604	80370664327	\N	(54)3291-3065	(54)3291-1613	\N	Ensino Técnico Completo	\N	Ensino Técnico Incompleto	Pardos	Nenhuma	Ônibus	1 Km	Não	Pendente	Pendente	2021-01-12	Pr02	2021-08-30 00:45:40.817298
544	362	MORGANA FIAMINGHI	2016-09-05	Feminino	421430425	56682895002	\N	(54)9171-4875	(54)8412-9664	\N	Ensino superior Incompleto	\N	Ensino fundamental Completo	Pretos	Nenhuma	Carro	20 Km	Sim	Aprovado	Pendente	2021-02-02	Pr03	2021-08-30 00:45:40.817298
545	380	WILIAN LIPOSKI PEROZZO	2016-09-01	Masculino	743038351	86562176827	\N	(54)3291-5008	(54)9904-0784	\N	Ensino superior Completo	\N	Ensino fundamental Incomplento	Brancos	Nenhuma	Bicicleta	20 Km	Não	Aprovado	Concluida	2021-02-05	Pr03	2021-08-30 00:45:40.817298
546	386	KATIELE ZAMPIERI	2016-02-29	Feminino	245547056	47123417236	\N	(54)9192-4460	(54)8418-8289	\N	Ensino fundamental Incomplento	\N	Ensino Técnico Completo	Brancos	Nenhuma	Carro	1 Km	Sim	Aprovado	Concluida	2021-01-24	Pr03	2021-08-30 00:45:40.817298
547	421	AUGUSTO ZUANAZZI AUMOND	2016-08-20	Masculino	130372752	12049398964	\N	(54)9607-4223	30340109	\N	Ensino superior Incompleto	\N	Ensino fundamental Completo	Pardos	Nenhuma	Carro	15 Km	Não	Pendente	Concluida	2021-01-23	Pr03	2021-08-30 00:45:40.817298
548	427	GUILHERME ESPELOCIN	2016-05-22	Masculino	435493785	93445630302	\N	(54)9977-0840	32915355	\N	Ensino médio Completo	\N	Ensino superior Completo	Pardos	Nenhuma	A pé	30 Km	Não	Aprovado	Pendente	2021-01-13	Pr03	2021-08-30 00:45:40.817298
549	440	GUSTAVO ASCARI STEDILE	2016-05-28	Masculino	331141946	82311474371	\N	(54)9967-2026	(54)9953-3185	\N	Ensino médio Incomplento	\N	Ensino fundamental Incomplento	Brancos	Deficiência motora	A pé	30 Km	Não	Aprovado	Concluida	2021-02-03	Pr03	2021-08-30 00:45:40.817298
550	446	BERNARDO SANDRI	2016-08-08	Masculino	973404704	86067083193	\N	(54)9655-1909	*	\N	Ensino Técnico Completo	\N	Ensino Técnico Completo	Pretos	Nenhuma	A pé	30 Km	Não	Pendente	Concluida	2021-01-11	Pr03	2021-08-30 00:45:40.817298
551	460	CAROLINA DE OLIVEIRA	2016-08-03	Feminino	412917105	66113849200	\N	(54)9256-5944	(54)9627-9134	\N	Ensino superior Completo	\N	Ensino superior Incompleto	Amarelos	Nenhuma	Carro	30 Km	Não	Aprovado	Pendente	2021-01-20	Pr03	2021-08-30 00:45:40.817298
552	475	FELIPE DE MORAES	2016-04-27	Masculino	586190883	55110056381	\N	(54)9973-5233	32912259	\N	Ensino fundamental Incomplento	\N	Ensino Técnico Incompleto	Brancos	Nenhuma	A pé	5 Km	Não	Pendente	Concluida	2021-01-21	Pr03	2021-08-30 00:45:40.817298
553	487	ALEXANDRA BALARDIN ZAFFONATO	2016-02-27	Masculino	777383655	32782874424	\N	(54)9615-8038	(54)9605-1321	\N	Ensino fundamental Incomplento	\N	Ensino superior Completo	Pardos	Nenhuma	A pé	1 Km	Não	Aprovado	Concluida	2021-01-27	Pr03	2021-08-30 00:45:40.817298
554	496	MARIA EDUARDA MOLLMANN DE ALMEIDA	2016-10-14	Feminino	497059002	72393910487	\N	\N	(54)3291-1161	\N	Ensino Técnico Incompleto	\N	Ensino médio Completo	Brancos	Deficiência auditiva	Ônibus	5 Km	Não	Pendente	Concluida	2021-02-06	Pr03	2021-08-30 00:45:40.817298
555	520	JULIA MACHADO SCARABELOT	2016-09-07	Feminino	518620415	55171747335	\N	(54)9135-1027	91282425	\N	Ensino médio Completo	\N	Ensino superior Completo	Pardos	Deficiência visual	A pé	5 Km	Não	Aprovado	Concluida	2021-01-26	Pr03	2021-08-30 00:45:40.817298
556	549	MARCELO AUGUSTO DOS SANTOS	2016-12-27	Masculino	276382009	45594937477	\N	(54)9674-4612	(54)3291-2267	\N	Ensino superior Incompleto	\N	Ensino médio Completo	Brancos	Nenhuma	A pé	20 Km	Sim	Aprovado	Pendente	2021-02-06	Pr03	2021-08-30 00:45:40.817298
557	579	ROSALVO MARIA BONI	2016-01-05	Masculino	981971151	83602911570	\N	(54)9951-1651	(54)9139-4104	\N	Ensino médio Completo	\N	Ensino médio Incomplento	Pardos	Nenhuma	A pé	1 Km	Não	Aprovado	Concluida	2021-01-18	Pr03	2021-08-30 00:45:40.817298
558	600	CAMILA APARECIDA GOZZI	2016-10-12	Feminino	785838653	33490361351	\N	(54)9668-1743	(54)9217-4853	\N	Ensino médio Incomplento	\N	Ensino médio Incomplento	Brancos	Nenhuma	A pé	10 Km	Não	Aprovado	Pendente	2021-01-13	Pr03	2021-08-30 00:45:40.817298
559	615	JULIANA PENCA	2016-03-02	Feminino	487851952	53172185511	\N	(54)3291-4153	(54)9975-5082	\N	Ensino fundamental Completo	\N	Ensino médio Incomplento	Amarelos	Nenhuma	Carro	30 Km	Não	Aprovado	Concluida	2021-02-05	Pr03	2021-08-30 00:45:40.817298
560	623	 RODRIGO BRESOLIN	2016-04-11	Masculino	542645950	87930945184	\N	(54)9951-9231	(54)3291-5297	\N	Ensino superior Completo	\N	Ensino médio Completo	Brancos	Nenhuma	A pé	15 Km	Não	Pendente	Concluida	2021-01-18	Pr03	2021-08-30 00:45:40.817298
561	627	 LUIS EDUARDO CAVALLI	2016-01-10	Masculino	631308487	99212081128	\N	(54)9931-9078	(54)3291-3557	\N	Ensino médio Incomplento	\N	Ensino superior Incompleto	Amarelos	Nenhuma	Ônibus	1 Km	Não	Reprovou	Concluida	2021-02-04	Pr03	2021-08-30 00:45:40.817298
562	703	 JOSÉ ARMANDO PRACE DE SOUZA	2016-02-03	Masculino	109648189	70882710445	\N	\N	(54)3280-1136	\N	Ensino médio Incomplento	\N	Ensino médio Completo	Pardos	Nenhuma	Ônibus	10 Km	Não	Reprovou	Concluida	2021-01-11	Pr03	2021-08-30 00:45:40.817298
563	721	LUAN BRITO	2016-01-23	Masculino	291874221	61377765135	\N	(54)3291-2416	(54)9146-7313	\N	Ensino médio Completo	\N	Ensino médio Incomplento	Brancos	Deficiência visual	Ônibus	5 Km	Não	Reprovou	Concluida	2021-01-20	Pr03	2021-08-30 00:45:40.817298
564	727	FERNANDA CEBALLOS SOLEIMAN	2016-04-26	Feminino	392770336	63936633906	\N	(54)9982-0292	(54)3291-4290	\N	Ensino fundamental Completo	\N	Ensino fundamental Completo	Pardos	Nenhuma	Ônibus	20 Km	Sim	Aprovado	Pendente	2021-01-21	Pr03	2021-08-30 00:45:40.817298
565	741	GISLAINE DUARTE DA SILVA	2016-01-18	Feminino	142761156	81929400704	\N	(54)9960-5142	(54)9136-4687	\N	Ensino Técnico Completo	\N	Ensino superior Incompleto	Brancos	Nenhuma	Ônibus	15 Km	Não	Aprovado	Pendente	2021-01-12	Pr03	2021-08-30 00:45:40.817298
566	745	JULIANA DA LUZ	2016-11-03	Feminino	453264421	72407928838	\N	\N	(54)9111-2416	\N	Ensino médio Incomplento	\N	Ensino fundamental Incomplento	Pardos	Nenhuma	Carro	5 Km	Não	Pendente	Pendente	2021-02-06	Pr03	2021-08-30 00:45:40.817298
567	746	ANA CAROLINA DUARTE	2016-05-28	Feminino	920024045	99151077603	\N	(54)9691-9382	(54)9607-4279	\N	Ensino superior Completo	\N	Ensino médio Incomplento	Brancos	Nenhuma	Ônibus	15 Km	Não	Aprovado	Concluida	2021-01-28	Pr03	2021-08-30 00:45:40.817298
568	770	JUSCELINO GOULART FILHO	2016-11-19	Masculino	690685154	54460724317	\N	(54)9246-3946	(54)3291-3721	\N	Ensino médio Incomplento	\N	Ensino fundamental Incomplento	Indígenas	Nenhuma	Ônibus	30 Km	Sim	Aprovado	Concluida	2021-01-25	Pr03	2021-08-30 00:45:40.817298
569	813	NATÁLIA MOTA	2016-08-05	Feminino	220105741	16601885015	\N	(54)3291-3454	(54)3280-1040	\N	Ensino superior Completo	\N	Ensino médio Completo	Brancos	Nenhuma	Moto	15 Km	Não	Aprovado	Concluida	2021-02-02	Pr03	2021-08-30 00:45:40.817298
570	815	GUILHERME DOS SANTOS CAMASSOLA	2016-03-31	Masculino	399179087	30434862410	\N	(54)8154-2081	(54)9908-6708	\N	Ensino superior Incompleto	\N	Ensino Técnico Incompleto	Brancos	Nenhuma	Ônibus	10 Km	Não	Aprovado	Pendente	2021-01-13	Pr03	2021-08-30 00:45:40.817298
571	824	BRUNO BALARDIN	2016-04-10	Masculino	876301259	93225931435	\N	(54)9711-9605	(54)9147-6487	\N	Ensino Técnico Completo	\N	Ensino médio Incomplento	Pretos	Nenhuma	Ônibus	20 Km	Não	Aprovado	Pendente	2021-01-21	Pr03	2021-08-30 00:45:40.817298
572	827	TAISE BORGES	2016-05-06	Feminino	855580495	88078301371	\N	(54)9913-7933	(54)9699-8143	\N	Ensino fundamental Incomplento	\N	Ensino superior Completo	Brancos	Nenhuma	A pé	5 Km	Não	Aprovado	Pendente	2021-01-11	Pr03	2021-08-30 00:45:40.817298
573	838	BEATRIZ RAPIKVCZ	2016-01-26	Feminino	699522882	22116817397	\N	(54)9108-4934	(54)3291-1257	\N	Ensino fundamental Incomplento	\N	Ensino fundamental Completo	Pretos	Deficiência visual	Ônibus	20 Km	Não	Aprovado	Concluida	2021-01-11	Pr03	2021-08-30 00:45:40.817298
574	866	RENAN SOUZA TEIXEIRA	2016-10-22	Masculino	305613719	68260646889	\N	(54)9187-0053	(54)9981-6531	\N	Ensino Técnico Completo	\N	Ensino médio Completo	Brancos	Nenhuma	Ônibus	20 Km	Não	Aprovado	Pendente	2021-02-06	Pr03	2021-08-30 00:45:40.817298
575	877	MARINETE FARIAS	2016-07-05	Feminino	578066248	78893597471	\N	(54)3291-3595	(54)9949-6094	\N	Ensino fundamental Incomplento	\N	Ensino médio Completo	Amarelos	Nenhuma	Ônibus	30 Km	Não	Aprovado	Concluida	2021-01-19	Pr03	2021-08-30 00:45:40.817298
576	887	PAULO SERGIO FOCHESATO	2016-09-01	Masculino	648625271	86367084017	\N	(54)9983-6032	(54)3291-4554	\N	Ensino médio Completo	\N	Ensino Técnico Incompleto	Brancos	Nenhuma	Ônibus	1 Km	Não	Aprovado	Concluida	2021-01-23	Pr03	2021-08-30 00:45:40.817298
577	922	ROBSON ROSSI	2016-05-28	Masculino	872903233	23050743624	\N	(54)9192-0865	(54)9693-2076	\N	Ensino médio Incomplento	\N	Ensino superior Incompleto	Indígenas	Nenhuma	Carro	30 Km	Não	Aprovado	Concluida	2021-01-23	Pr03	2021-08-30 00:45:40.817298
578	972	UERLON RECH	2016-05-14	Masculino	843438851	77758166847	\N	(54)9669-6265	(54)9930-7136	\N	Ensino fundamental Completo	\N	Ensino superior Completo	Brancos	Nenhuma	Ônibus	30 Km	Não	Pendente	Concluida	2021-02-01	Pr03	2021-08-30 00:45:40.817298
579	2	BARBARA ZANOTTO	2006-12-29	Feminino	273490857	30253766489	\N	(54)9152-7397	(54)9219-8342	\N	Ensino fundamental Completo	\N	Ensino Técnico Incompleto	Pretos	Nenhuma	Ônibus	20 Km	Sim	Aprovado	Concluida	2021-01-27	M101	2021-08-30 00:45:40.817298
580	10	DIÉLI ZULIAN TERRES	2006-03-18	Feminino	653252232	26409219937	\N	91596219	(54)9101-6865	\N	Ensino médio Incomplento	\N	Ensino Técnico Completo	Pardos	Nenhuma	Bicicleta	5 Km	Não	Aprovado	Concluida	2021-01-28	M101	2021-08-30 00:45:40.817298
581	17	ANANDA MICHELON	2006-02-04	Feminino	235628893	93786346547	\N	(54)9984-7729	(54)9609-1167	\N	Ensino Técnico Completo	\N	Ensino superior Completo	Indígenas	Nenhuma	Ônibus	20 Km	Não	Aprovado	Concluida	2021-01-28	M101	2021-08-30 00:45:40.817298
582	38	LUIZ FELIPE DAL ZOTTO	2006-06-23	Masculino	423493959	37544244521	\N	(54)9682-6842	3291-4534	\N	Ensino superior Incompleto	\N	Ensino superior Incompleto	Amarelos	Nenhuma	Carro	20 Km	Não	Reprovou	Concluida	2021-01-28	M101	2021-08-30 00:45:40.817298
583	40	VILNEI CORSO	2006-11-16	Masculino	830953659	83969553052	\N	(54)3291-5202	3291-5272	\N	Ensino superior Completo	\N	Ensino fundamental Incomplento	Pardos	Nenhuma	Carro	20 Km	Não	Aprovado	Concluida	2021-01-24	M101	2021-08-30 00:45:40.817298
584	66	ILIANE FONTANA CHEMELLO	2006-08-15	Feminino	424332449	93476919074	\N	(54)9154-1619	32911743	\N	Ensino fundamental Incomplento	\N	Ensino superior Completo	Pretos	Nenhuma	Carro	10 Km	Não	Aprovado	Pendente	2021-01-14	M101	2021-08-30 00:45:40.817298
585	67	SOLANGE MICHELON	2006-06-06	Feminino	329101858	38161681561	\N	(54)3291-3539	3291-2879	\N	Ensino superior Incompleto	\N	Ensino superior Completo	Brancos	Deficiência auditiva	Carro	50 Km	Não	Pendente	Pendente	2021-02-01	M101	2021-08-30 00:45:40.817298
586	69	ROSANGELA APARECIDA ANTUNES FOGAÇA	2006-11-15	Feminino	573222425	51243987326	\N	(54)9143-2051	32917232	\N	Ensino superior Incompleto	\N	Ensino fundamental Incomplento	Pardos	Nenhuma	Carro	20 Km	Não	Aprovado	Concluida	2021-02-03	M101	2021-08-30 00:45:40.817298
587	81	GUSTAVO MENEGON	2006-10-26	Masculino	774247102	27237706048	\N	(54)8110-0355	32919124	\N	Ensino Técnico Incompleto	\N	Ensino fundamental Completo	Amarelos	Nenhuma	A pé	30 Km	Não	Pendente	Concluida	2021-02-01	M101	2021-08-30 00:45:40.817298
588	103	EMAEL RIBEIRO KLEIN	2006-03-17	Masculino	702945636	15471005772	\N	(54)9991-4360	96084506	\N	Ensino médio Completo	\N	Ensino Técnico Incompleto	Pretos	Nenhuma	Ônibus	1 Km	Não	Aprovado	Concluida	2021-02-04	M101	2021-08-30 00:45:40.817298
589	121	IVANIR INÊS TOMÉ VANIN	2006-02-12	Feminino	462275950	43403808441	\N	(54)9969-9397	(  )9175-5236	\N	Ensino fundamental Completo	\N	Ensino médio Incomplento	Brancos	Nenhuma	Ônibus	30 Km	Não	Pendente	Concluida	2021-01-21	M101	2021-08-30 00:45:40.817298
590	137	ANGELO GABRIEL CARVALHO DA SILVA	2006-04-25	Masculino	211107044	64864596572	\N	\N	(54)3291-4152	\N	Ensino fundamental Completo	\N	Ensino fundamental Completo	Pardos	Nenhuma	Carro	50 Km	Não	Aprovado	Concluida	2021-01-14	M101	2021-08-30 00:45:40.817298
591	179	NEUZA APARECIDA DE OLIVEIRA PEREIRA	2006-04-08	Feminino	130629365	80908384109	\N	(54)9141-5220	(  )    -	\N	Ensino superior Completo	\N	Ensino Técnico Completo	Brancos	Nenhuma	Ônibus	5 Km	Não	Reprovou	Concluida	2021-01-17	M101	2021-08-30 00:45:40.817298
592	199	EDUARDA DOS SANTOS DE OLIVEIRA	2006-02-04	Feminino	486000886	47025571253	\N	(54)9154-0785	(54)3291-1697	\N	Ensino médio Incomplento	\N	Ensino fundamental Incomplento	Pardos	Deficiência auditiva	A pé	1 Km	Não	Pendente	Concluida	2021-01-23	M101	2021-08-30 00:45:40.817298
593	208	TIAGO FACHIN RECH	2006-04-26	Masculino	640548652	94375692630	\N	(54)9615-8038	(54)9967-0680	\N	Ensino Técnico Completo	\N	Ensino médio Incomplento	Brancos	Nenhuma	A pé	20 Km	Não	Pendente	Pendente	2021-01-21	M101	2021-08-30 00:45:40.817298
594	235	RAFAEL FANTIN BORGHETTI	2006-07-08	Masculino	481367728	48259829066	\N	(54)8401-2526	(54)9986-3158	\N	Ensino fundamental Incomplento	\N	Ensino superior Incompleto	Brancos	Nenhuma	Carro	15 Km	Sim	Aprovado	Pendente	2021-02-05	M101	2021-08-30 00:45:40.817298
595	253	DIONATAN FILIPINI DE OLIVEIRA	2006-11-21	Masculino	997794185	89037456038	\N	(54)9148-4305	(54)9939-5714	\N	Ensino médio Completo	\N	Ensino médio Completo	Pardos	Deficiência auditiva	Carro	15 Km	Não	Aprovado	Concluida	2021-02-01	M101	2021-08-30 00:45:40.817298
596	263	FERNANDO DALL'AGNO RODRIGUES	2006-09-14	Masculino	115911777	95643126494	\N	(54)9638-1313	(54)9653-8347	\N	Ensino Técnico Incompleto	\N	Ensino médio Completo	Indígenas	Nenhuma	Ônibus	5 Km	Não	Pendente	Concluida	2021-01-29	M101	2021-08-30 00:45:40.817298
597	264	FERNANDO ANTÔNIO ZUCCO	2006-02-07	Masculino	680385137	34317606595	\N	(54)8441-8700	(54)9164-0858	\N	Ensino médio Incomplento	\N	Ensino médio Incomplento	Pretos	Nenhuma	Carro	10 Km	Não	Aprovado	Concluida	2021-01-19	M101	2021-08-30 00:45:40.817298
598	316	GABRIEL GENTIL	2006-10-02	Masculino	547288062	13206940079	\N	(54)9647-0297	(54)3291-4470	\N	Ensino médio Completo	\N	Ensino fundamental Completo	Brancos	Nenhuma	A pé	30 Km	Não	Aprovado	Concluida	2021-01-25	M101	2021-08-30 00:45:40.817298
599	321	MARIA DE FÁTIMA LIPOSKI	2006-06-28	Feminino	719830319	10891854901	\N	(54)9217-3236	(54)3291-1549	\N	Ensino Técnico Completo	\N	Ensino superior Completo	Pretos	Nenhuma	A pé	15 Km	Não	Aprovado	Concluida	2021-01-26	M101	2021-08-30 00:45:40.817298
600	337	CHEILA DOS REIS	2006-09-25	Feminino	666776586	61136335243	\N	(54)9100-0208	(54)9996-6954	\N	Ensino superior Completo	\N	Ensino Técnico Completo	Pardos	Nenhuma	A pé	5 Km	Não	Aprovado	Concluida	2021-01-23	M101	2021-08-30 00:45:40.817298
601	342	THALES MENDES PADUAN	2006-01-18	Masculino	255438191	40161172195	\N	32919116	(54)9697-8255	\N	Ensino médio Completo	\N	Ensino médio Completo	Brancos	Nenhuma	Carro	5 Km	Não	Aprovado	Pendente	2021-01-12	M101	2021-08-30 00:45:40.817298
602	359	ÉRICA RIBEIRO ASCARI	2006-02-06	Feminino	578254571	84930727188	\N	(54)9685-4735	(54)9673-9068	\N	Ensino Técnico Incompleto	\N	Ensino fundamental Completo	Pardos	Nenhuma	Ônibus	15 Km	Não	Aprovado	Concluida	2021-01-20	M102	2021-08-30 00:45:40.817298
603	363	DEIVID PEREIRA DA SILVA	2006-01-01	Masculino	212248606	36135304120	\N	(54)3291-2833	(54)8122-8760	\N	Ensino superior Completo	\N	Ensino Técnico Incompleto	Brancos	Nenhuma	A pé	20 Km	Não	Aprovado	Concluida	2021-02-05	M102	2021-08-30 00:45:40.817298
604	369	JOSIELI WANINS DE JESUS	2006-09-02	Feminino	721007847	87091551639	\N	(54)3291-4501	(54)8129-3098	\N	Ensino médio Incomplento	\N	Ensino médio Incomplento	Brancos	Nenhuma	Carro	1 Km	Não	Reprovou	Concluida	2021-01-26	M102	2021-08-30 00:45:40.817298
605	381	GABRIELLY MOTA	2006-10-30	Feminino	273273623	31926204653	\N	(54)9182-8481	(54)3291-6005	\N	Ensino superior Incompleto	\N	Ensino Técnico Completo	Pardos	Deficiência visual	Ônibus	15 Km	Não	Aprovado	Concluida	2021-02-06	M102	2021-08-30 00:45:40.817298
606	383	JOÃO VICTOR MIOTTO	2006-12-01	Masculino	915244829	93515108802	\N	(54)9158-4700	(54)8123-7056	\N	Ensino Técnico Completo	\N	Ensino fundamental Incomplento	Amarelos	Nenhuma	Carro	10 Km	Não	Aprovado	Concluida	2021-01-15	M102	2021-08-30 00:45:40.817298
607	410	MONICA PADILHA	2006-10-09	Feminino	480576541	86681602612	\N	(54)3291-5169	(54)9976-9589	\N	Ensino fundamental Incomplento	\N	Ensino fundamental Incomplento	Brancos	Nenhuma	A pé	30 Km	Não	Aprovado	Concluida	2021-01-27	M102	2021-08-30 00:45:40.817298
608	411	DEBORA MICHELIN	2006-06-27	Feminino	684901715	42718802281	\N	32911177	(54)3291-2273	\N	Ensino superior Incompleto	\N	Ensino Técnico Completo	Pardos	Deficiência visual	A pé	5 Km	Não	Aprovado	Concluida	2021-02-08	M102	2021-08-30 00:45:40.817298
609	472	ANA PAULA CECHINATO	2006-11-23	Feminino	316021869	19966564927	\N	(54)9971-0419	32914327	\N	Ensino médio Incomplento	\N	Ensino superior Incompleto	Brancos	Nenhuma	Ônibus	10 Km	Não	Aprovado	Concluida	2021-01-10	M102	2021-08-30 00:45:40.817298
610	479	PAMELA PELISSARI	2006-01-03	Feminino	921504478	29571154185	\N	(54)9197-8079	(54)3291-3246	\N	Ensino Técnico Incompleto	\N	Ensino fundamental Completo	Pardos	Nenhuma	Carro	15 Km	Não	Pendente	Pendente	2021-01-24	M102	2021-08-30 00:45:40.817298
611	524	GERMANO MICHELON SANTOS	2006-09-28	Masculino	198254845	19218203922	\N	32912267	9625-3381	\N	Ensino superior Incompleto	\N	Ensino fundamental Incomplento	Pardos	Nenhuma	Carro	1 Km	Não	Aprovado	Concluida	2021-01-15	M102	2021-08-30 00:45:40.817298
612	527	SABRINA FILIPINI OLIVEIRA	2006-07-29	Feminino	923543728	39886550475	\N	(54)3235-1222	32911762	\N	Ensino Técnico Completo	\N	Ensino Técnico Completo	Indígenas	Nenhuma	A pé	50 Km	Sim	Aprovado	Concluida	2021-01-30	M102	2021-08-30 00:45:40.817298
613	554	BRUNA FRANCIELE VIIRA BRESOLIN	2006-07-14	Feminino	775436549	89432540031	\N	(54)3235-1678	(54)3291-2734	\N	Ensino Técnico Incompleto	\N	Ensino fundamental Completo	Pardos	Nenhuma	Ônibus	1 Km	Não	Aprovado	Concluida	2021-01-17	M102	2021-08-30 00:45:40.817298
614	564	CAROLINE MASCARELLO RIBEIRO	2006-12-11	Feminino	947787627	98738869714	\N	(54)9901-9284	(54)9683-4453	\N	Ensino fundamental Completo	\N	Ensino Técnico Incompleto	Brancos	Nenhuma	Ônibus	10 Km	Sim	Aprovado	Concluida	2021-01-18	M102	2021-08-30 00:45:40.817298
615	593	RUTIANE DE CASTILHOS	2006-01-06	Feminino	688992526	16459774993	\N	(11)1111-1111	(54)3291-2896	\N	Ensino médio Incomplento	\N	Ensino Técnico Completo	Pardos	Nenhuma	Ônibus	20 Km	Não	Pendente	Concluida	2021-01-14	M102	2021-08-30 00:45:40.817298
616	612	THAIS GOMES MIRANDA SANCHEZ	2006-02-27	Feminino	148252552	51437673267	\N	(54)3291-5362	(54)9998-9795	\N	Ensino Técnico Incompleto	\N	Ensino médio Incomplento	Brancos	Nenhuma	Ônibus	30 Km	Não	Aprovado	Concluida	2021-02-08	M102	2021-08-30 00:45:40.817298
617	619	RAFAELA NOVELLO	2006-03-04	Feminino	464339196	78180391585	\N	(54)3291-6338	(54)3291-2060	\N	Ensino fundamental Incomplento	\N	Ensino médio Completo	Pardos	Nenhuma	A pé	15 Km	Não	Pendente	Concluida	2021-01-15	M102	2021-08-30 00:45:40.817298
618	639	 LUIZ HENRIQUE POHLOD KAPP	2006-09-12	Masculino	601338180	97106659316	\N	(47)9291-2103	(54)9144-4172	\N	Ensino superior Incompleto	\N	Ensino Técnico Incompleto	Pretos	Nenhuma	Moto	15 Km	Não	Pendente	Pendente	2021-01-22	M102	2021-08-30 00:45:40.817298
619	654	 VERA SLONGO FONGARO	2006-08-26	Feminino	342642283	64357492133	\N	(54)9702-5242	(54)9908-9383	\N	Ensino fundamental Completo	\N	Ensino Técnico Completo	Brancos	Nenhuma	Moto	1 Km	Não	Aprovado	Concluida	2021-01-14	M102	2021-08-30 00:45:40.817298
620	658	 NICOLI RODRIGUES DA SILVA	2006-10-16	Feminino	540993867	44825000775	\N	(54)9909-7620	(54)9209-9944	\N	Ensino superior Completo	\N	Ensino médio Incomplento	Pardos	Nenhuma	A pé	15 Km	Não	Pendente	Concluida	2021-01-27	M102	2021-08-30 00:45:40.817298
621	678	 MATEUS RIZZON SANDI	2006-07-17	Masculino	620973804	12691624309	\N	(54)3291-8300	(54)9183-5031	\N	Ensino Técnico Completo	\N	Ensino superior Completo	Indígenas	Nenhuma	Carro	5 Km	Não	Aprovado	Concluida	2021-01-16	M102	2021-08-30 00:45:40.817298
622	680	 RAFAEL LEONCIO	2006-01-24	Masculino	579310631	28817014535	\N	(11)1111-1111	(54)9931-8929	\N	Ensino Técnico Completo	\N	Ensino superior Completo	Brancos	Nenhuma	A pé	1 Km	Sim	Aprovado	Concluida	2021-01-24	M102	2021-08-30 00:45:40.817298
623	707	MAURICIU BOEIRA QUINTANILHA	2006-07-15	Masculino	321196211	18524815952	\N	(54)3291-1428	(54)9601-0971	\N	Ensino superior Incompleto	\N	Ensino fundamental Completo	Amarelos	Nenhuma	Carro	20 Km	Não	Reprovou	Concluida	2021-02-03	M102	2021-08-30 00:45:40.817298
624	718	ALLAN BOMBANA	2006-06-22	Masculino	312006682	86012603748	\N	(54)9924-8932	(54)3291-1046	\N	Ensino médio Incomplento	\N	Ensino superior Completo	Pardos	Nenhuma	Ônibus	5 Km	Não	Aprovado	Concluida	2021-01-21	M102	2021-08-30 00:45:40.817298
625	729	OTÁVIO BOSSARDI MICHELON	2006-10-28	Masculino	423562953	84629511697	\N	(54)9667-8483	(54)9191-7268	\N	Ensino fundamental Completo	\N	Ensino médio Incomplento	Brancos	Nenhuma	Ônibus	1 Km	Não	Aprovado	Concluida	2021-01-30	M103	2021-08-30 00:45:40.817298
626	743	BRUNO DE CASTILHOS FORTUNATTI	2006-06-04	Masculino	838056442	13901232825	\N	(11)8792-8557	(54)3291-1096	\N	Ensino Técnico Completo	\N	Ensino Técnico Incompleto	Pardos	Nenhuma	Ônibus	5 Km	Não	Aprovado	Concluida	2021-01-19	M103	2021-08-30 00:45:40.817298
627	748	ARTHUR DOS SANTOS	2006-01-05	Masculino	600800383	67795095731	\N	(54)3291-2974	(54)9907-0915	\N	Ensino Técnico Completo	\N	Ensino fundamental Completo	Pardos	Nenhuma	A pé	15 Km	Não	Aprovado	Concluida	2021-01-12	M103	2021-08-30 00:45:40.817298
628	750	ISABEL BORGES VIEIRA	2006-02-28	Feminino	680678987	48942973817	\N	\N	(54)3291-1808	\N	Ensino superior Completo	\N	Ensino Técnico Incompleto	Indígenas	Deficiência auditiva	A pé	10 Km	Sim	Pendente	Concluida	2021-01-22	M103	2021-08-30 00:45:40.817298
629	764	GUSTAVO DE LIMA LOURENÇO	2006-05-29	Masculino	164936635	66772582538	\N	(54)9160-3781	(54)9607-4279	\N	Ensino Técnico Incompleto	\N	Ensino médio Incomplento	Brancos	Nenhuma	A pé	5 Km	Não	Aprovado	Concluida	2021-01-26	M103	2021-08-30 00:45:40.817298
630	792	AMANDA CIOATA SOTORIVA	2006-11-12	Feminino	242483025	52708072046	\N	(54)9955-2882	(54)9981-9740	\N	Ensino fundamental Incomplento	\N	Ensino médio Completo	Pretos	Nenhuma	Carro	1 Km	Não	Aprovado	Concluida	2021-01-21	M103	2021-08-30 00:45:40.817298
631	814	JULIA BENATTO RENOSTO	2006-04-01	Feminino	909725804	71153506325	\N	(54)9985-3002	(54)3291-2506	\N	Ensino Técnico Completo	\N	Ensino Técnico Completo	Brancos	Nenhuma	Ônibus	1 Km	Não	Aprovado	Concluida	2021-01-26	M103	2021-08-30 00:45:40.817298
632	822	FABIANO VARGAS DA ROSA	2006-05-14	Masculino	287904701	12646984899	\N	(54)9658-1833	(54)3291-6459	\N	Ensino superior Completo	\N	Ensino médio Incomplento	Pretos	Nenhuma	Carro	15 Km	Não	Aprovado	Concluida	2021-01-27	M103	2021-08-30 00:45:40.817298
633	829	MARIA VITÓRIA BALARDIN SPULDARO	2006-03-30	Feminino	487769305	68038167805	\N	(54)9621-7658	(54)3291-1973	\N	Ensino médio Incomplento	\N	Ensino fundamental Completo	Pardos	Deficiência visual	A pé	20 Km	Não	Pendente	Pendente	2021-01-19	M103	2021-08-30 00:45:40.817298
634	847	JULIANA GENTIL	2006-06-03	Feminino	680084326	38041150525	\N	(54)9672-6806	(54)3291-3431	\N	Ensino superior Completo	\N	Ensino Técnico Incompleto	Pardos	Nenhuma	A pé	15 Km	Não	Aprovado	Pendente	2021-01-21	M103	2021-08-30 00:45:40.817298
635	855	RENIELE DA SILVA VANIN	2006-05-24	Feminino	247501305	96645692302	\N	(54)9195-1578	(54)8412-0561	\N	Ensino fundamental Incomplento	\N	Ensino Técnico Incompleto	Pardos	Nenhuma	Ônibus	15 Km	Não	Aprovado	Concluida	2021-02-04	M103	2021-08-30 00:45:40.817298
636	880	LIDUVINA ZANARDI GUERRA	2006-08-03	Feminino	810460883	78898583335	\N	(54)3291-3307	(54)9213-7722	\N	Ensino fundamental Incomplento	\N	Ensino superior Completo	Indígenas	Nenhuma	A pé	5 Km	Não	Pendente	Concluida	2021-02-01	M103	2021-08-30 00:45:40.817298
637	884	MARI HELENA BERNARDI	2006-03-27	Feminino	464299898	48328818853	\N	(54)3291-4084	(54)9194-1270	\N	Ensino médio Incomplento	\N	Ensino Técnico Completo	Pardos	Nenhuma	A pé	1 Km	Não	Aprovado	Concluida	2021-01-27	M103	2021-08-30 00:45:40.817298
638	896	REMI FRANCISCO PIROLI	2006-05-26	Masculino	361286124	96917380314	\N	(54)3291-2151	(54)9225-8415	\N	Ensino Técnico Incompleto	\N	Ensino Técnico Completo	Pretos	Nenhuma	Carro	15 Km	Não	Aprovado	Concluida	2021-02-01	M103	2021-08-30 00:45:40.817298
639	900	IVANETE TEREZINHA RIZZON	2006-12-28	Feminino	817365831	59281488198	\N	(54)9908-4079	(54)9189-8057	\N	Ensino fundamental Completo	\N	Ensino superior Completo	Brancos	Nenhuma	Moto	10 Km	Não	Aprovado	Pendente	2021-01-27	M103	2021-08-30 00:45:40.817298
640	902	GUILHERME BOLZAN VERONESE	2006-03-23	Masculino	725660186	61696425373	\N	(54)9910-0912	(54)9637-5726	\N	Ensino Técnico Incompleto	\N	Ensino Técnico Incompleto	Pardos	Nenhuma	A pé	10 Km	Não	Pendente	Concluida	2021-02-02	M103	2021-08-30 00:45:40.817298
641	956	JULISANDRA LORANDI	2006-04-09	Feminino	411420338	12994245732	\N	32914121	(54)3291-6011	\N	Ensino médio Completo	\N	Ensino superior Completo	Pretos	Nenhuma	Ônibus	30 Km	Não	Aprovado	Concluida	2021-01-22	M103	2021-08-30 00:45:40.817298
642	965	ISABEL DA CRUZ	2006-04-09	Feminino	649014386	53137163594	\N	(54)9131-8737	(54)9914-4888	\N	Ensino médio Incomplento	\N	Ensino fundamental Incomplento	Brancos	Nenhuma	Ônibus	5 Km	Não	Aprovado	Concluida	2021-02-05	M103	2021-08-30 00:45:40.817298
643	969	RODRIGO RENOSTO	2006-03-19	Masculino	434491134	58092702371	\N	32914203	(54)3291-5062	\N	Ensino Técnico Completo	\N	Ensino fundamental Incomplento	Amarelos	Nenhuma	A pé	1 Km	Não	Aprovado	Concluida	2021-01-28	M103	2021-08-30 00:45:40.817298
644	973	ADRIEL CARDOSO DE OLIVEIRA	2006-02-02	Feminino	589875245	79133072634	\N	32912679	(54)9615-5270	\N	Ensino Técnico Incompleto	\N	Ensino Técnico Incompleto	Pardos	Nenhuma	Carro	10 Km	Não	Aprovado	Concluida	2021-02-03	M103	2021-08-30 00:45:40.817298
645	983	EDUARDO ASCARI	2006-03-31	Masculino	250880741	76691251290	\N	(54)9999-1348	(54)3291-4321	\N	Ensino fundamental Incomplento	\N	Ensino superior Completo	Pretos	Nenhuma	A pé	1 Km	Sim	Aprovado	Concluida	2021-01-23	M103	2021-08-30 00:45:40.817298
646	5	LUANA TELES PEREIRA	2005-07-24	Feminino	342928775	79513292201	\N	(54)9996-9196	(54)9184-2962	\N	Ensino fundamental Completo	\N	Ensino superior Incompleto	Brancos	Nenhuma	Ônibus	5 Km	Não	Aprovado	Concluida	2021-01-13	M201	2021-08-30 00:45:40.817298
647	9	DANIELE BENATTO	2005-08-12	Feminino	904985699	49852284587	\N	3291-7258	(54)9980-8685	\N	Ensino superior Incompleto	\N	Ensino Técnico Incompleto	Brancos	Nenhuma	Ônibus	10 Km	Não	Reprovou	Concluida	2021-02-03	M201	2021-08-30 00:45:40.817298
648	18	ELAINE DE OLIVEIRA MATTOS	2005-07-28	Feminino	353974552	51271113637	\N	32801114	(54)9606-9226	\N	Ensino fundamental Incomplento	\N	Ensino superior Completo	Pretos	Deficiência visual	A pé	15 Km	Não	Aprovado	Concluida	2021-01-26	M201	2021-08-30 00:45:40.817298
649	20	MARILI BOGO	2005-05-31	Feminino	292191392	12740027382	\N	(54)3291-2884	(54)9907-1712	\N	Ensino médio Completo	\N	Ensino fundamental Incomplento	Pretos	Nenhuma	Ônibus	20 Km	Não	Aprovado	Pendente	2021-01-24	M201	2021-08-30 00:45:40.817298
650	27	CARLOS ALBERTO ARMILIATO	2005-04-14	Masculino	842845224	14551817212	\N	(54)3291-7260	(54)9914-6053	\N	Ensino Técnico Incompleto	\N	Ensino Técnico Completo	Brancos	Deficiência visual	Carro	5 Km	Não	Aprovado	Concluida	2021-01-30	M201	2021-08-30 00:45:40.817298
651	32	MAICON TRINDADE DUARTE	2005-08-18	Masculino	851594656	74578220366	\N	3291-4905	(54)9632-5629	\N	Ensino Técnico Completo	\N	Ensino fundamental Completo	Pardos	Nenhuma	Ônibus	15 Km	Sim	Aprovado	Concluida	2021-01-19	M201	2021-08-30 00:45:40.817298
652	60	SANDRA MARIA GASPAROTTO BENATO	2005-09-17	Feminino	579396059	14115141128	\N	(54)3291-2695	91065177	\N	Ensino fundamental Incomplento	\N	Ensino superior Incompleto	Amarelos	Nenhuma	Carro	20 Km	Não	Aprovado	Pendente	2021-01-18	M201	2021-08-30 00:45:40.817298
653	63	FERNANDO RIBEIRO	2005-02-03	Masculino	927013056	18490449317	\N	(54)9928-2059	3291-4391	\N	Ensino fundamental Completo	\N	Ensino médio Completo	Indígenas	Nenhuma	Ônibus	15 Km	Não	Aprovado	Concluida	2021-01-11	M201	2021-08-30 00:45:40.817298
654	94	NEURA MARI ASCARI DA LUZ	2005-12-08	Feminino	235888032	30827226684	\N	(54)8156-9530	32912984	\N	Ensino fundamental Completo	\N	Ensino fundamental Incomplento	Pardos	Nenhuma	Bicicleta	15 Km	Não	Aprovado	Concluida	2021-02-01	M201	2021-08-30 00:45:40.817298
655	97	MARLENE SIDNEI RICARDO CASAL	2005-06-20	Feminino	269038164	26999981424	\N	(54)3291-2554	3291-3418	\N	Ensino superior Completo	\N	Ensino médio Incomplento	Brancos	Nenhuma	Moto	10 Km	Não	Pendente	Pendente	2021-01-30	M201	2021-08-30 00:45:40.817298
656	98	ADELAR JUNIOR CANALE	2005-02-28	Masculino	121556130	21062873094	\N	(54)3291-1786	32913073	\N	Ensino fundamental Completo	\N	Ensino médio Incomplento	Brancos	Nenhuma	Ônibus	10 Km	Não	Aprovado	Concluida	2021-02-07	M201	2021-08-30 00:45:40.817298
657	140	ANDERSON DA SILVA OLIVEIRA	2005-06-20	Masculino	163992425	83815932114	\N	(54)9111-2416	(54)3291-1103	\N	Ensino médio Incomplento	\N	Ensino fundamental Completo	Brancos	Nenhuma	A pé	1 Km	Não	Pendente	Concluida	2021-02-05	M201	2021-08-30 00:45:40.817298
658	152	SUELEN RODRIGUES DE OLIVEIRA	2005-06-05	Feminino	194892794	42438798702	\N	(54)9608-4250	(54)3291-4603	\N	Ensino Técnico Incompleto	\N	Ensino médio Completo	Indígenas	Nenhuma	Carro	15 Km	Sim	Aprovado	Concluida	2021-01-10	M201	2021-08-30 00:45:40.817298
659	197	JOÃO PEDRO SCODRO MICHELON	2005-09-13	Masculino	491378575	83566039658	\N	(54)9112-1100	(54)3291-4961	\N	Ensino Técnico Completo	\N	Ensino superior Incompleto	Brancos	Nenhuma	Carro	15 Km	Não	Aprovado	Pendente	2021-01-23	M201	2021-08-30 00:45:40.817298
660	222	MICKEL DE LIMA	2005-05-14	Masculino	365125145	24090786774	\N	(54)3291-1867	(54)3291-5304	\N	Ensino fundamental Completo	\N	Ensino fundamental Incomplento	Indígenas	Deficiência motora	Bicicleta	5 Km	Sim	Aprovado	Concluida	2021-01-17	M201	2021-08-30 00:45:40.817298
661	274	MARLON DAROS	2005-01-28	Masculino	446440553	74909886182	\N	(54)9909-8040	91788920	\N	Ensino fundamental Completo	\N	Ensino médio Completo	Amarelos	Nenhuma	Carro	20 Km	Não	Pendente	Concluida	2021-01-21	M201	2021-08-30 00:45:40.817298
662	307	VAGNER DALAGNO	2005-04-29	Masculino	143631216	33884505624	\N	(54)9216-0867	(54)9157-5066	\N	Ensino superior Completo	\N	Ensino Técnico Completo	Pardos	Nenhuma	Ônibus	1 Km	Não	Reprovou	Concluida	2021-01-16	M201	2021-08-30 00:45:40.817298
663	325	ROSSELI MÜLLER DA SILVA	2005-10-20	Feminino	277245325	56969767100	\N	(54)8147-7848	(54)3291-9009	\N	Ensino Técnico Incompleto	\N	Ensino superior Completo	Brancos	Nenhuma	A pé	15 Km	Não	Aprovado	Concluida	2021-01-13	M201	2021-08-30 00:45:40.817298
664	339	NICOLE CECATTO FONTANA DINIZ	2005-01-08	Feminino	973806770	21222601726	\N	(54)9960-5967	(54)9667-8063	\N	Ensino fundamental Completo	\N	Ensino Técnico Incompleto	Pretos	Nenhuma	Carro	30 Km	Sim	Aprovado	Pendente	2021-01-19	M201	2021-08-30 00:45:40.817298
665	352	CRISTIAN DA CRUZ	2005-04-24	Masculino	501321687	94423686042	\N	(11)1111-1111	(54)3291-3554	\N	Ensino superior Incompleto	\N	Ensino Técnico Incompleto	Amarelos	Nenhuma	Ônibus	10 Km	Não	Aprovado	Pendente	2021-01-21	M201	2021-08-30 00:45:40.817298
666	360	MICAEL GUZZON	2005-04-10	Masculino	178745180	88250774238	\N	(54)9182-8976	(54)9166-1393	\N	Ensino fundamental Incomplento	\N	Ensino fundamental Incomplento	Pardos	Nenhuma	Ônibus	30 Km	Sim	Aprovado	Concluida	2021-01-28	M201	2021-08-30 00:45:40.817298
667	378	LEIVA APARECIDA CASTIHOS DOS REIS	2005-11-02	Feminino	520034482	30745372841	\N	(54)9140-9252	(54)9944-8972	\N	Ensino fundamental Incomplento	\N	Ensino Técnico Completo	Pretos	Nenhuma	Bicicleta	1 Km	Não	Aprovado	Concluida	2021-01-12	M201	2021-08-30 00:45:40.817298
668	398	ANA CRISTINA PEGORARO	2005-07-24	Feminino	268327604	50244317064	\N	(54)9109-7141	(54)9949-5834	\N	Ensino superior Incompleto	\N	Ensino médio Completo	Amarelos	Nenhuma	A pé	5 Km	Não	Aprovado	Concluida	2021-02-05	M201	2021-08-30 00:45:40.817298
669	403	YURI POLO	2005-05-25	Masculino	323865971	46963741879	\N	(54)9934-8889	(54)9642-8090	\N	Ensino Técnico Completo	\N	Ensino fundamental Incomplento	Pardos	Nenhuma	Carro	5 Km	Sim	Aprovado	Pendente	2021-02-05	M201	2021-08-30 00:45:40.817298
670	412	CARINA FEREEIRA DE OLIVEIRA	2005-11-15	Feminino	817696523	83822988065	\N	(99)8341-54	(54)9167-7137	\N	Ensino Técnico Completo	\N	Ensino médio Incomplento	Brancos	Nenhuma	A pé	1 Km	Não	Aprovado	Concluida	2021-01-23	M202	2021-08-30 00:45:40.817298
671	456	GLAUCIA FRANCISCHINI	2005-09-15	Feminino	627302025	59400094861	\N	(54)9995-9215	32911310	\N	Ensino médio Completo	\N	Ensino fundamental Completo	Brancos	Nenhuma	Carro	15 Km	Sim	Aprovado	Concluida	2021-01-11	M202	2021-08-30 00:45:40.817298
672	466	RODRIGO CIOATO PASINATO	2005-08-08	Masculino	479776656	80487141445	\N	(11)1111-1111	(54)3291-3404	\N	Ensino médio Incomplento	\N	Ensino Técnico Incompleto	Brancos	Nenhuma	Ônibus	5 Km	Não	Pendente	Concluida	2021-01-21	M202	2021-08-30 00:45:40.817298
673	467	GABRIEL COELHO DOS SANTOS	2005-01-11	Feminino	861999652	54755694480	\N	(11)1111-1111	(54)9945-1620	\N	Ensino superior Completo	\N	Ensino superior Incompleto	Pretos	Nenhuma	Ônibus	30 Km	Não	Aprovado	Concluida	2021-02-06	M202	2021-08-30 00:45:40.817298
674	482	ELIZABETE DAL LAGO	2005-02-08	Feminino	438112773	88982526563	\N	(54)9180-9156	(54)9119-0744	\N	Ensino superior Completo	\N	Ensino médio Completo	Pardos	Nenhuma	Carro	15 Km	Não	Aprovado	Concluida	2021-01-11	M202	2021-08-30 00:45:40.817298
675	507	FERNABNDO LUIZ REC	2005-07-08	Masculino	453502611	80971879743	\N	(54)9969-1537	(54)9603-5690	\N	Ensino superior Completo	\N	Ensino médio Incomplento	Amarelos	Nenhuma	Carro	50 Km	Não	Aprovado	Concluida	2021-01-19	M202	2021-08-30 00:45:40.817298
676	534	JOCELAINE PELIZZARI	2005-12-20	Feminino	409779219	28022677089	\N	(54)9623-7510	(54)3291-3696	\N	Ensino superior Incompleto	\N	Ensino fundamental Completo	Pardos	Nenhuma	Ônibus	5 Km	Não	Aprovado	Concluida	2021-02-07	M202	2021-08-30 00:45:40.817298
677	562	LAIS CASTAGNA BREZOLIN	2005-01-23	Feminino	376231652	10047962152	\N	(54)3291-1202	(54)9926-8721	\N	Ensino médio Incomplento	\N	Ensino superior Incompleto	Pardos	Nenhuma	Ônibus	20 Km	Não	Pendente	Concluida	2021-01-13	M202	2021-08-30 00:45:40.817298
678	568	ELIAS FELICIO	2005-12-03	Masculino	562652012	16403576101	\N	(54)9909-5082	(54)9968-4857	\N	Ensino superior Incompleto	\N	Ensino médio Completo	Indígenas	Nenhuma	Ônibus	5 Km	Não	Aprovado	Concluida	2021-01-19	M202	2021-08-30 00:45:40.817298
679	572	STEFANIE CARVALHO PEREIRA	2005-08-29	Feminino	787176583	77593498081	\N	(54)3291-2420	(54)9122-5141	\N	Ensino fundamental Completo	\N	Ensino superior Completo	Pardos	Nenhuma	Carro	1 Km	Não	Aprovado	Concluida	2021-01-14	M202	2021-08-30 00:45:40.817298
680	574	GERMANO CASTILHOS DOS REIS	2005-12-27	Masculino	460104479	58951172418	\N	(54)9983-2265	(54)9195-6246	\N	Ensino Técnico Completo	\N	Ensino fundamental Completo	Brancos	Nenhuma	Moto	30 Km	Não	Reprovou	Concluida	2021-01-22	M202	2021-08-30 00:45:40.817298
681	596	PALOMA DA ROSA NUNES	2005-03-14	Feminino	667852548	83237992819	\N	(54)9639-8548	(54)3291-2868	\N	Ensino médio Completo	\N	Ensino médio Completo	Brancos	Nenhuma	A pé	15 Km	Não	Aprovado	Pendente	2021-02-07	M202	2021-08-30 00:45:40.817298
682	602	LUANA VIEIRA BOEIRA	2005-04-22	Feminino	424660035	14056979696	\N	(54)3291-7479	(54)9104-4525	\N	Ensino superior Completo	\N	Ensino fundamental Completo	Amarelos	Nenhuma	Carro	10 Km	Não	Aprovado	Concluida	2021-01-21	M202	2021-08-30 00:45:40.817298
683	603	AMANDA DE MORAIS FOCHESATO	2005-09-28	Feminino	470478740	80810385015	\N	(54)9664-5107	(54)9106-5307	\N	Ensino fundamental Incomplento	\N	Ensino médio Incomplento	Brancos	Nenhuma	Carro	1 Km	Não	Pendente	Pendente	2021-01-24	M202	2021-08-30 00:45:40.817298
684	629	 ROSELENE DOS PASSOS DOS SANTOS	2005-08-10	Feminino	109112106	23627447656	\N	(54)9161-3327	(54)9988-0569	\N	Ensino médio Incomplento	\N	Ensino superior Completo	Indígenas	Nenhuma	Ônibus	15 Km	Não	Aprovado	Concluida	2021-01-24	M202	2021-08-30 00:45:40.817298
685	663	 CRISTIANE RIBEIRO DE PAULA	2005-04-18	Feminino	941438959	19652201552	\N	\N	(54)3235-1167	\N	Ensino fundamental Completo	\N	Ensino médio Incomplento	Amarelos	Nenhuma	A pé	15 Km	Não	Aprovado	Concluida	2021-01-27	M202	2021-08-30 00:45:40.817298
686	668	 LEONARDO RECH POLETO	2005-03-13	Masculino	540797896	59503012113	\N	(54)9949-4410	(54)9987-9221	\N	Ensino Técnico Completo	\N	Ensino superior Incompleto	Pardos	Nenhuma	Moto	20 Km	Não	Aprovado	Concluida	2021-01-22	M202	2021-08-30 00:45:40.817298
687	716	VANESSA SALVADOR CASTAGNA	2005-01-06	Feminino	326141828	61846247998	\N	(54)3291-2974	(54)9945-2629	\N	Ensino médio Incomplento	\N	Ensino fundamental Incomplento	Brancos	Nenhuma	Carro	30 Km	Não	Aprovado	Concluida	2021-01-15	M202	2021-08-30 00:45:40.817298
688	765	GABRIEL CASSOL	2005-11-22	Masculino	581206231	97574386897	\N	(11)1111-1111	(54)9641-3822	\N	Ensino fundamental Incomplento	\N	Ensino médio Incomplento	Pardos	Nenhuma	Carro	15 Km	Não	Pendente	Concluida	2021-02-02	M202	2021-08-30 00:45:40.817298
689	802	LUANA MAGRIN	2005-05-03	Feminino	363532684	34150392960	\N	(54)9202-7544	(54)9621-8371	\N	Ensino médio Incomplento	\N	Ensino fundamental Completo	Amarelos	Nenhuma	Carro	1 Km	Não	Aprovado	Concluida	2021-01-31	M202	2021-08-30 00:45:40.817298
690	806	MARCOS VINICIUS RASADOR	2005-08-29	Masculino	467769525	35041005001	\N	(54)9972-6872	(54)9193-5093	\N	Ensino superior Incompleto	\N	Ensino médio Incomplento	Brancos	Nenhuma	A pé	20 Km	Não	Aprovado	Concluida	2021-01-27	M202	2021-08-30 00:45:40.817298
691	823	ERIKA ZANARDI PARIZOTTO	2005-04-24	Feminino	875967626	83401304256	\N	(54)9965-4045	(54)3291-2604	\N	Ensino Técnico Completo	\N	Ensino superior Completo	Brancos	Nenhuma	A pé	20 Km	Não	Aprovado	Concluida	2021-02-06	M202	2021-08-30 00:45:40.817298
692	828	ANA LUCIA DOS SANTOS	2005-05-20	Feminino	791043882	93218044755	\N	(54)9157-6488	(54)3291-7409	\N	Ensino superior Completo	\N	Ensino fundamental Completo	Brancos	Deficiência visual	A pé	10 Km	Não	Aprovado	Concluida	2021-01-30	M202	2021-08-30 00:45:40.817298
693	850	CATIA POSSO	2005-06-21	Feminino	971310686	67364766998	\N	(11)1111-1111	(54)9992-5551	\N	Ensino Técnico Completo	\N	Ensino superior Completo	Pardos	Nenhuma	Carro	20 Km	Não	Aprovado	Concluida	2021-01-11	M202	2021-08-30 00:45:40.817298
694	868	MARIA DA SILVA SANTOS	2005-03-04	Feminino	369349781	54524940256	\N	(54)9958-5735	(54)3291-1258	\N	Ensino Técnico Incompleto	\N	Ensino médio Incomplento	Pardos	Nenhuma	Ônibus	10 Km	Não	Pendente	Concluida	2021-01-24	M202	2021-08-30 00:45:40.817298
696	893	PRISCILA VARGAS PARIZOTTO	2005-02-08	Feminino	868408402	61236754446	\N	(54)9193-9693	(54)8134-8881	\N	Ensino fundamental Incomplento	\N	Ensino superior Incompleto	Brancos	Nenhuma	Ônibus	10 Km	Não	Pendente	Concluida	2021-02-03	M202	2021-08-30 00:45:40.817298
697	930	BRUNA DAL'LAGO	2005-11-04	Feminino	733684312	37712597146	\N	(54)9949-4018	(54)3267-8259	\N	Ensino superior Completo	\N	Ensino Técnico Incompleto	Brancos	Nenhuma	A pé	10 Km	Não	Aprovado	Pendente	2021-01-17	M202	2021-08-30 00:45:40.817298
698	936	CAROLINE BOEIRA DA SILVA	2005-12-08	Feminino	898410072	84124265478	\N	(54)9122-6535	(54)9134-5868	\N	Ensino médio Incomplento	\N	Ensino Técnico Completo	Brancos	Nenhuma	Carro	30 Km	Não	Aprovado	Pendente	2021-01-14	M202	2021-08-30 00:45:40.817298
699	942	SUZETE SOLDERA CECHINATO	2005-02-02	Feminino	717844370	40065994407	\N	(54)9676-3434	(54)9103-6425	\N	Ensino fundamental Completo	\N	Ensino médio Completo	Pretos	Deficiência auditiva	Ônibus	5 Km	Sim	Pendente	Concluida	2021-02-05	M202	2021-08-30 00:45:40.817298
700	984	PAULINE GOMES DE BITENCOURT	2005-05-07	Feminino	249374816	62888760444	\N	3291,1033	(54)9158-6369	\N	Ensino médio Incomplento	\N	Ensino Técnico Completo	Brancos	Nenhuma	Carro	10 Km	Não	Pendente	Pendente	2021-01-30	M202	2021-08-30 00:45:40.817298
701	3	LAIS DE AZEVEDO	2003-01-16	Feminino	606335377	41289660422	\N	(54)3280-1178	(54)3291-3386	\N	Ensino superior Completo	\N	Ensino superior Completo	Brancos	Nenhuma	Ônibus	1 Km	Não	Aprovado	Pendente	2021-01-11	M301	2021-08-30 00:45:40.817298
702	4	ESTÉFANI BOFFE DA COSTA	2004-10-19	Feminino	639935821	25785291118	\N	(54)3291-1286	(54)9113-3037	\N	Ensino Técnico Completo	\N	Ensino superior Incompleto	Pardos	Nenhuma	Ônibus	15 Km	Não	Aprovado	Concluida	2021-01-20	M301	2021-08-30 00:45:40.817298
703	8	GESSICA RASADOR	2002-03-01	Feminino	723650622	84191055865	\N	(54)9694-8205	\N	\N	Ensino Técnico Completo	\N	Ensino médio Incomplento	Brancos	Nenhuma	A pé	30 Km	Não	Aprovado	Concluida	2021-01-12	M301	2021-08-30 00:45:40.817298
704	11	ALINE FABBRO	2004-09-08	Feminino	356448020	85784240977	\N	91821366	(54)3267-8052	\N	Ensino superior Completo	\N	Ensino médio Incomplento	Amarelos	Nenhuma	A pé	5 Km	Não	Aprovado	Concluida	2021-01-31	M301	2021-08-30 00:45:40.817298
705	13	MARINES APARECIDA CHINELATO	2003-01-10	Feminino	581264387	49335653810	\N	(54)3291-1056	\N	\N	Ensino médio Completo	\N	Ensino fundamental Completo	Pardos	Nenhuma	A pé	1 Km	Sim	Aprovado	Concluida	2021-02-07	M301	2021-08-30 00:45:40.817298
706	21	TEREZINHA MACHADO DA SILVEIRA	2003-03-08	Feminino	536941715	97229290866	\N	(54)3291-4462	(54)9688-1394	\N	Ensino médio Incomplento	\N	Ensino médio Incomplento	Indígenas	Nenhuma	A pé	1 Km	Não	Aprovado	Concluida	2021-01-27	M301	2021-08-30 00:45:40.817298
707	22	BERNARDO TOLARDO	2002-11-29	Masculino	711636694	63140247121	\N	(54)3291-3572	(54)3235-5133	\N	Ensino Técnico Incompleto	\N	Ensino fundamental Incomplento	Indígenas	Nenhuma	Ônibus	5 Km	Não	Aprovado	Pendente	2021-01-17	M301	2021-08-30 00:45:40.817298
708	23	SARAH PEREIRA	2000-10-27	Feminino	129056665	54943366026	\N	(54)9647-9642	(54)3267-8001	\N	Ensino fundamental Completo	\N	Ensino Técnico Completo	Amarelos	Nenhuma	Ônibus	5 Km	Não	Aprovado	Concluida	2021-01-30	M301	2021-08-30 00:45:40.817298
709	25	MARCO ANTONIO G. CIOATO	2000-09-12	Masculino	287802809	84568420322	\N	(54)9188-2631	(54)9995-4043	\N	Ensino fundamental Completo	\N	Ensino médio Incomplento	Brancos	Nenhuma	A pé	5 Km	Não	Aprovado	Pendente	2021-01-11	M301	2021-08-30 00:45:40.817298
710	33	MARLENE GORETTI CASSÃO DALSOTTO	2003-09-25	Feminino	662440567	41923435056	\N	3291-3380	(54)9706-6113	\N	Ensino superior Incompleto	\N	Ensino superior Completo	Amarelos	Nenhuma	Ônibus	15 Km	Não	Aprovado	Concluida	2021-01-27	M301	2021-08-30 00:45:40.817298
711	35	MARINES SCARMIN SPIGOLON	2004-04-29	Feminino	202471726	94427422255	\N	99299628	(54)3291-5340	\N	Ensino médio Completo	\N	Ensino Técnico Incompleto	Pretos	Nenhuma	Carro	5 Km	Não	Pendente	Pendente	2021-02-08	M301	2021-08-30 00:45:40.817298
712	36	LENIR EVA FONGARO	2002-09-04	Masculino	961734399	72110296266	\N	(54)9126-1172	(54)9187-2328	\N	Ensino médio Completo	\N	Ensino superior Completo	Amarelos	Deficiência visual	Carro	1 Km	Não	Aprovado	Concluida	2021-02-01	M301	2021-08-30 00:45:40.817298
713	37	ANDRÉ BRESOLIN	2003-06-11	Masculino	229333010	80947153464	\N	(54)3291-1406	(55)9911-8386	\N	Ensino fundamental Completo	\N	Ensino fundamental Incomplento	Amarelos	Nenhuma	Ônibus	10 Km	Sim	Aprovado	Concluida	2021-01-21	M301	2021-08-30 00:45:40.817298
714	39	LEONARDO GOBI	2002-04-09	Masculino	959209566	54471590969	\N	(54)3291-4264	96087998	\N	Ensino Técnico Completo	\N	Ensino Técnico Completo	Indígenas	Nenhuma	Ônibus	5 Km	Não	Aprovado	Pendente	2021-02-04	M301	2021-08-30 00:45:40.817298
715	44	FABIANO REZER	2002-10-10	Masculino	522771299	64097909430	\N	(54)9152-5666	3291-5115	\N	Ensino Técnico Incompleto	\N	Ensino Técnico Completo	Brancos	Nenhuma	A pé	30 Km	Não	Pendente	Concluida	2021-01-11	M301	2021-08-30 00:45:40.817298
716	45	ELIANE MASCARELLO BALARDIN	2001-01-11	Feminino	983354446	46333000288	\N	(54)3291-9162	91103885	\N	Ensino Técnico Incompleto	\N	Ensino fundamental Incomplento	Amarelos	Nenhuma	A pé	15 Km	Não	Pendente	Concluida	2021-01-30	M301	2021-08-30 00:45:40.817298
717	51	LUCAS CAMPOS DA SILVA	2004-03-15	Masculino	473017944	10250803153	\N	3291-4124	32913990	\N	Ensino fundamental Completo	\N	Ensino superior Incompleto	Pardos	Nenhuma	Ônibus	15 Km	Não	Aprovado	Pendente	2021-02-04	M301	2021-08-30 00:45:40.817298
718	52	MARCOS FELIPE ZAMPIROLO	2001-12-07	Masculino	489682018	78890528444	\N	(54)3291-1643	96042521	\N	Ensino superior Incompleto	\N	Ensino Técnico Incompleto	Pardos	Nenhuma	Carro	15 Km	Não	Aprovado	Concluida	2021-01-21	M301	2021-08-30 00:45:40.817298
719	53	GABRIEL CASAROTTO	2000-12-26	Masculino	234757356	78939663422	\N	(54)3291-9049	(54)9964-0807	\N	Ensino Técnico Completo	\N	Ensino fundamental Incomplento	Brancos	Nenhuma	A pé	5 Km	Não	Aprovado	Concluida	2021-01-24	M301	2021-08-30 00:45:40.817298
720	57	ENZO BALLARDIN ARCARO	2002-06-24	Masculino	680493853	77685748363	\N	(54)3291-2359	3291-7253	\N	Ensino fundamental Completo	\N	Ensino médio Completo	Pretos	Nenhuma	Ônibus	15 Km	Não	Aprovado	Concluida	2021-01-13	M301	2021-08-30 00:45:40.817298
721	61	SALETE FORTUNATTI TORRESAN	2000-11-30	Feminino	708561557	64986066985	\N	(54)3291-3842	(54)3291-1011	\N	Ensino médio Incomplento	\N	Ensino fundamental Completo	Pardos	Nenhuma	Ônibus	5 Km	Não	Aprovado	Concluida	2021-02-04	M301	2021-08-30 00:45:40.817298
722	64	CLEIDE MARTA FRANCESCHINI	2004-03-07	Feminino	306174661	67272111047	\N	(54)3291-1654	32678109	\N	Ensino médio Incomplento	\N	Ensino fundamental Completo	Amarelos	Nenhuma	Carro	15 Km	Não	Aprovado	Concluida	2021-02-08	M301	2021-08-30 00:45:40.817298
723	78	WILSON ALVES PEREIRA	2000-05-01	Masculino	805819503	73147496120	\N	(54)9941-5564	32914402	\N	Ensino médio Completo	\N	Ensino fundamental Incomplento	Pretos	Nenhuma	Carro	1 Km	Não	Aprovado	Pendente	2021-01-26	M301	2021-08-30 00:45:40.817298
724	85	FELIPE CAPELETTI MICHELLON	2004-07-28	Masculino	944017411	78822290779	\N	(54)9124-1057	(54)9159-4399	\N	Ensino Técnico Incompleto	\N	Ensino fundamental Incomplento	Brancos	Nenhuma	Ônibus	15 Km	Sim	Pendente	Concluida	2021-01-21	M301	2021-08-30 00:45:40.817298
725	87	EDUARDO DA ROSA FONGARO	2001-06-16	Masculino	295352157	95156921473	\N	(54)9910-8055	3291-2731	\N	Ensino fundamental Incomplento	\N	Ensino fundamental Incomplento	Brancos	Nenhuma	Moto	1 Km	Não	Aprovado	Pendente	2021-01-30	M301	2021-08-30 00:45:40.817298
726	89	ROSANE P. GALLIO BAZZI	2003-09-12	Feminino	375036328	35546507941	\N	(54)3291-2227	32914402	\N	Ensino fundamental Incomplento	\N	Ensino fundamental Completo	Brancos	Nenhuma	Ônibus	50 Km	Não	Aprovado	Pendente	2021-01-21	M301	2021-08-30 00:45:40.817298
727	92	ARILDE MARIA CIOATO MASCARELLO	2001-08-04	Feminino	562631193	13086249305	\N	(54)9148-8737	91826816	\N	Ensino Técnico Completo	\N	Ensino médio Completo	Pardos	Nenhuma	A pé	1 Km	Não	Aprovado	Concluida	2021-01-17	M302	2021-08-30 00:45:40.817298
728	93	JOSE ANTONIO LOPES	2002-12-24	Masculino	489021386	14123442489	\N	(54)3291-1120	32912991	\N	Ensino fundamental Completo	\N	Ensino médio Completo	Pretos	Nenhuma	Ônibus	50 Km	Sim	Reprovou	Concluida	2021-01-29	M302	2021-08-30 00:45:40.817298
729	95	VALDOIR VILMAR PELLIZZONI	2002-10-14	Masculino	813310897	31472635861	\N	(54)9641-1225	91628397	\N	Ensino Técnico Completo	\N	Ensino fundamental Completo	Brancos	Nenhuma	Ônibus	1 Km	Não	Aprovado	Concluida	2021-01-29	M302	2021-08-30 00:45:40.817298
730	104	BRUNA BONELLA	2001-09-27	Feminino	177197799	12783866823	\N	(54)3291-8200	(54)3291-3208	\N	Ensino médio Completo	\N	Ensino Técnico Incompleto	Amarelos	Nenhuma	Ônibus	10 Km	Não	Aprovado	Concluida	2021-02-04	M302	2021-08-30 00:45:40.817298
731	108	ROBINSON CLEI RIBEIRO	2003-05-14	Masculino	985328330	42546573659	\N	(54)3291-9848	(54)9991-7097	\N	Ensino médio Completo	\N	Ensino fundamental Incomplento	Pretos	Nenhuma	A pé	1 Km	Não	Aprovado	Concluida	2021-01-30	M302	2021-08-30 00:45:40.817298
732	113	ANDERSON MARQUES BOEIRA SANTOS	2000-12-23	Masculino	868321220	42823656114	\N	(54)3291-1113	32912180	\N	Ensino fundamental Incomplento	\N	Ensino superior Completo	Pardos	Nenhuma	Carro	1 Km	Não	Pendente	Concluida	2021-01-22	M302	2021-08-30 00:45:40.817298
733	114	ANDREZA RIZZON	2002-06-04	Feminino	849325015	55074067917	\N	(54)3291-4096	32913194	\N	Ensino médio Completo	\N	Ensino médio Completo	Brancos	Nenhuma	Carro	30 Km	Não	Aprovado	Pendente	2021-01-18	M302	2021-08-30 00:45:40.817298
734	115	ROSANE SIMIONI	2004-04-06	Feminino	574985300	79523872520	\N	(54)3291-9802	(54)9156-3700	\N	Ensino superior Completo	\N	Ensino fundamental Incomplento	Brancos	Nenhuma	Ônibus	1 Km	Não	Pendente	Pendente	2021-01-15	M302	2021-08-30 00:45:40.817298
735	118	ROSVALDO MARIA BONI	2000-12-31	Masculino	825367777	66596889291	\N	(54)9146-4854	(54)3291-3886	\N	Ensino superior Incompleto	\N	Ensino superior Incompleto	Amarelos	Nenhuma	Carro	1 Km	Não	Reprovou	Concluida	2021-01-16	M302	2021-08-30 00:45:40.817298
736	119	ROSELEI  MODESTO CARARO BONI	2000-05-05	Feminino	299148987	65703663246	\N	(54)9605-2397	(54)9200-3892	\N	Ensino fundamental Completo	\N	Ensino médio Completo	Amarelos	Nenhuma	A pé	10 Km	Sim	Aprovado	Pendente	2021-01-21	M302	2021-08-30 00:45:40.817298
737	120	SEBASTIÃO OSNI MACHADO	2001-07-25	Masculino	979500173	24150807561	\N	(54)9988-3469	(54)3291-5096	\N	Ensino médio Completo	\N	Ensino fundamental Incomplento	Brancos	Nenhuma	Bicicleta	5 Km	Não	Aprovado	Concluida	2021-01-16	M302	2021-08-30 00:45:40.817298
738	125	ILZA SUZANA CORSO	2002-07-14	Feminino	796571314	24942280705	\N	(54)3291-3402	32911427	\N	Ensino superior Incompleto	\N	Ensino médio Completo	Pardos	Nenhuma	Ônibus	5 Km	Não	Aprovado	Concluida	2021-01-31	M302	2021-08-30 00:45:40.817298
739	129	DEOVACIR CHINELATO	2004-11-28	Masculino	497020533	82820897238	\N	(54)9909-5012	(54)3291-3563	\N	Ensino médio Incomplento	\N	Ensino médio Completo	Amarelos	Nenhuma	A pé	5 Km	Não	Aprovado	Concluida	2021-01-28	M302	2021-08-30 00:45:40.817298
740	133	RODRIGO SUSIN PELLIZZARI	2003-05-31	Masculino	836986009	86543671301	\N	(54)3291-5245	(54)3291-1627	\N	Ensino superior Incompleto	\N	Ensino médio Completo	Brancos	Nenhuma	A pé	1 Km	Sim	Aprovado	Concluida	2021-01-22	M302	2021-08-30 00:45:40.817298
741	136	MARIA EDUARDA GULART	2003-05-12	Feminino	842721228	20198324730	\N	(54)9920-8653	3291-5321	\N	Ensino médio Incomplento	\N	Ensino superior Completo	Indígenas	Deficiência auditiva	Carro	5 Km	Sim	Aprovado	Concluida	2021-02-01	M302	2021-08-30 00:45:40.817298
742	138	AMANDA ALMEIDA RAMOS	2004-03-15	Feminino	821425377	73888808738	\N	(54)9131-7241	(54)9634-3915	\N	Ensino fundamental Incomplento	\N	Ensino médio Completo	Pardos	Nenhuma	A pé	20 Km	Não	Aprovado	Pendente	2021-02-05	M302	2021-08-30 00:45:40.817298
743	145	MARIA CLARA SLONGO	2004-03-02	Feminino	326391283	66291680737	\N	(54)9236-3617	(54)3291-2638	\N	Ensino médio Completo	\N	Ensino médio Completo	Pardos	Nenhuma	A pé	30 Km	Não	Aprovado	Concluida	2021-01-29	M302	2021-08-30 00:45:40.817298
744	155	VITORIA LEMOS TREIN	2003-04-05	Feminino	154863521	42087066484	\N	(54)9923-0905	(54)9125-1832	\N	Ensino médio Completo	\N	Ensino superior Incompleto	Brancos	Nenhuma	A pé	1 Km	Sim	Aprovado	Concluida	2021-02-05	M302	2021-08-30 00:45:40.817298
745	158	MARCOS VINÍCIUS DE OLIVEIRA	2001-11-19	Masculino	983654539	46514008979	\N	(54)9134-3295	(54)9929-6494	\N	Ensino Técnico Completo	\N	Ensino fundamental Incomplento	Indígenas	Deficiência motora	A pé	5 Km	Não	Pendente	Concluida	2021-01-31	M302	2021-08-30 00:45:40.817298
746	160	LEONARDO BIANCHI LAZZARETTI	2002-07-03	Masculino	638330239	13077886108	\N	(54)9998-4921	(54)9661-6315	\N	Ensino Técnico Completo	\N	Ensino superior Incompleto	Brancos	Nenhuma	A pé	15 Km	Não	Aprovado	Concluida	2021-01-20	M302	2021-08-30 00:45:40.817298
747	162	NAURA PRATES PERES	2000-12-03	Feminino	316825472	57178888538	\N	(54)9927-0238	(54)3291-1063	\N	Ensino superior Completo	\N	Ensino Técnico Incompleto	Pardos	Nenhuma	Ônibus	20 Km	Não	Reprovou	Concluida	2021-01-12	M302	2021-08-30 00:45:40.817298
748	167	MAURICIO PARIZZOTTO	2001-09-22	Masculino	742771068	89320061279	\N	(54)9158-7847	(54)3291-2575	\N	Ensino médio Completo	\N	Ensino Técnico Incompleto	Pardos	Nenhuma	A pé	10 Km	Não	Pendente	Concluida	2021-01-21	M302	2021-08-30 00:45:40.817298
749	169	FRANCIELE ROSELI DA SILVA	2004-08-02	Feminino	341091689	37530411634	\N	(54)9966-5301	32351603	\N	Ensino médio Completo	\N	Ensino superior Completo	Brancos	Nenhuma	A pé	20 Km	Não	Aprovado	Concluida	2021-02-07	M302	2021-08-30 00:45:40.817298
750	170	WILLIAN LEANDRO COUTINHO	2002-05-08	Masculino	513246268	36265141542	\N	(54)3291-4764	(54)9114-7626	\N	Ensino médio Incomplento	\N	Ensino fundamental Incomplento	Brancos	Nenhuma	A pé	15 Km	Não	Aprovado	Pendente	2021-01-14	M302	2021-08-30 00:45:40.817298
751	173	LURDES SCAIN FABRO	2000-02-15	Feminino	305546815	75187475098	\N	(54)9173-2696	32919071	\N	Ensino Técnico Completo	\N	Ensino médio Completo	Brancos	Nenhuma	Moto	5 Km	Não	Aprovado	Concluida	2021-01-29	M302	2021-08-30 00:45:40.817298
752	176	GECI DE FATIMA ZAITZ DA SILVA	2000-12-13	Feminino	604416284	46411497432	\N	(54)9619-7187	91131103	\N	Ensino fundamental Incomplento	\N	Ensino médio Completo	Brancos	Nenhuma	Carro	15 Km	Não	Aprovado	Concluida	2021-01-10	M302	2021-08-30 00:45:40.817298
753	184	ANGELA LOPES BONELLA	2001-05-19	Feminino	170012725	19345671534	\N	(54)9672-2421	(54)9144-3398	\N	Ensino fundamental Incomplento	\N	Ensino superior Completo	Pretos	Nenhuma	A pé	1 Km	Não	Pendente	Concluida	2021-01-15	M302	2021-08-30 00:45:40.817298
754	188	MARIA EMILIA SOLDATELLI BORGHETTI	2001-02-17	Feminino	416392493	16816291324	\N	(54)9672-2421	32912729	\N	Ensino superior Incompleto	\N	Ensino superior Completo	Pardos	Nenhuma	Carro	15 Km	Não	Aprovado	Concluida	2021-01-18	M303	2021-08-30 00:45:40.817298
755	189	NALANDA DE MARAFIGO	2000-09-09	Feminino	254817789	83166516607	\N	(54)9143-1175	3291-3023	\N	Ensino Técnico Incompleto	\N	Ensino fundamental Incomplento	Pardos	Nenhuma	Ônibus	5 Km	Não	Aprovado	Concluida	2021-01-23	M303	2021-08-30 00:45:40.817298
756	191	LEONARDO FONGARO PEZZI	2000-05-28	Masculino	218294777	43538960805	\N	(54)9984-9222	91605865	\N	Ensino Técnico Completo	\N	Ensino fundamental Incomplento	Pretos	Nenhuma	A pé	5 Km	Não	Aprovado	Pendente	2021-01-13	M303	2021-08-30 00:45:40.817298
757	192	EMANUEL RICARDO FERNANDES	2002-10-18	Masculino	459270198	29713165911	\N	(54)9112-8021	32916003	\N	Ensino Técnico Completo	\N	Ensino Técnico Incompleto	Pardos	Deficiência auditiva	A pé	15 Km	Não	Aprovado	Concluida	2021-01-30	M303	2021-08-30 00:45:40.817298
758	194	ROGER LUIZ DE AZEVEDO	2001-05-09	Masculino	880194910	40803234295	\N	(54)9912-3405	32913766	\N	Ensino superior Completo	\N	Ensino superior Completo	Indígenas	Deficiência auditiva	Ônibus	1 Km	Não	Pendente	Concluida	2021-01-17	M303	2021-08-30 00:45:40.817298
759	198	MARIA CRISTINA SCODRO MICHELON	2002-02-11	Feminino	622548976	34488343640	\N	(54)9711-0222	(54)3291-2527	\N	Ensino médio Incomplento	\N	Ensino médio Completo	Pardos	Nenhuma	Ônibus	1 Km	Não	Reprovou	Concluida	2021-01-27	M303	2021-08-30 00:45:40.817298
760	202	GUSTAVO ASCARI STEDILE	2004-02-17	Masculino	723015365	26774344798	\N	(54)9646-2969	(54)3291-4425	\N	Ensino médio Incomplento	\N	Ensino fundamental Completo	Brancos	Nenhuma	Bicicleta	20 Km	Não	Aprovado	Concluida	2021-01-11	M303	2021-08-30 00:45:40.817298
761	203	PEDRO ASCARI PEREIRA	2004-09-24	Masculino	191966776	81947351067	\N	(54)9618-2718	(54)9166-5307	\N	Ensino Técnico Completo	\N	Ensino superior Incompleto	Pardos	Nenhuma	Ônibus	15 Km	Não	Aprovado	Pendente	2021-02-04	M303	2021-08-30 00:45:40.817298
762	204	FERNANDA CAMATTI	2000-07-13	Feminino	411597203	45118226730	\N	(54)9178-4490	(54)9673-1692	\N	Ensino Técnico Incompleto	\N	Ensino Técnico Incompleto	Pardos	Nenhuma	Carro	1 Km	Sim	Aprovado	Concluida	2021-02-01	M303	2021-08-30 00:45:40.817298
763	206	OTÁVIO DEBOVI RECH	2002-07-20	Masculino	499564312	74987168314	\N	(54)9944-8589	(54)9611-6238	\N	Ensino fundamental Completo	\N	Ensino superior Incompleto	Pardos	Nenhuma	A pé	15 Km	Sim	Aprovado	Pendente	2021-01-17	M303	2021-08-30 00:45:40.817298
764	209	ALEXANDRE MENEGUZZO	2001-01-23	Masculino	612616110	41902725293	\N	(54)3291-7534	3291-1762	\N	Ensino superior Completo	\N	Ensino fundamental Completo	Pardos	Nenhuma	A pé	5 Km	Não	Aprovado	Pendente	2021-01-18	M303	2021-08-30 00:45:40.817298
765	211	 WILLIAM MENEGAZ PEIXOTO	2003-04-25	Masculino	360358593	78392677812	\N	(54)9124-4390	(54)3291-9004	\N	Ensino Técnico Completo	\N	Ensino médio Completo	Amarelos	Deficiência auditiva	Moto	15 Km	Não	Aprovado	Concluida	2021-01-24	M303	2021-08-30 00:45:40.817298
766	218	INES A. MACEDO	2001-12-03	Feminino	976712537	40975248241	\N	(54)9145-7409	32912952	\N	Ensino médio Incomplento	\N	Ensino médio Completo	Brancos	Nenhuma	Carro	30 Km	Não	Aprovado	Concluida	2021-02-08	M303	2021-08-30 00:45:40.817298
767	219	BRUNA DE OLIVEIRA	2000-07-08	Feminino	277641442	31010263854	\N	(54)9619-7187	32913628	\N	Ensino fundamental Incomplento	\N	Ensino Técnico Incompleto	Pardos	Nenhuma	A pé	1 Km	Não	Pendente	Concluida	2021-02-07	M303	2021-08-30 00:45:40.817298
768	223	GABRIEL DEBOVI LISBOA	2004-05-13	Masculino	156707261	88821884501	\N	(54)3291-1089	(54)3291-3696	\N	Ensino Técnico Incompleto	\N	Ensino fundamental Completo	Pretos	Nenhuma	A pé	1 Km	Não	Reprovou	Concluida	2021-02-08	M303	2021-08-30 00:45:40.83278
769	228	GUILHERME DE CASTILHOS MORAES	2004-04-10	Feminino	754836424	31199441821	\N	(54)9908-2143	(54)9207-4379	\N	Ensino Técnico Completo	\N	Ensino médio Incomplento	Brancos	Nenhuma	A pé	1 Km	Não	Aprovado	Concluida	2021-02-08	M303	2021-08-30 00:45:40.83278
770	229	MARINA PESSINI	2002-03-19	Feminino	372347261	19966666314	\N	(11)1111-1111	(54)9632-9888	\N	Ensino médio Incomplento	\N	Ensino superior Incompleto	Amarelos	Nenhuma	A pé	15 Km	Não	Aprovado	Pendente	2021-01-17	M303	2021-08-30 00:45:40.83278
771	231	LUCAS VANELLI TORRES	2000-10-06	Masculino	771178513	95838638773	\N	(54)9120-2867	(54)3280-1121	\N	Ensino médio Incomplento	\N	Ensino fundamental Incomplento	Brancos	Nenhuma	A pé	30 Km	Não	Aprovado	Concluida	2021-01-10	M303	2021-08-30 00:45:40.83278
772	237	NEILA TÉLES RAMOS	2001-07-31	Feminino	182785670	70695690225	\N	(54)9184-9162	(54)3291-2951	\N	Ensino superior Incompleto	\N	Ensino superior Completo	Pardos	Nenhuma	Ônibus	1 Km	Não	Aprovado	Concluida	2021-01-29	M303	2021-08-30 00:45:40.83278
773	238	MAURÍCIO VIEIRA VARGAS	2001-01-12	Masculino	649660987	19808342808	\N	(54)9924-7774	(54)3291-1480	\N	Ensino superior Incompleto	\N	Ensino médio Incomplento	Pretos	Nenhuma	A pé	10 Km	Não	Aprovado	Concluida	2021-01-29	M303	2021-08-30 00:45:40.83278
774	239	RAFAELA RODRIGUES DE ANDRADE	2002-12-08	Feminino	373201266	49071864853	\N	(54)3291-4573	(54)3291-6334	\N	Ensino superior Completo	\N	Ensino superior Completo	Indígenas	Nenhuma	Bicicleta	30 Km	Sim	Aprovado	Concluida	2021-01-16	M303	2021-08-30 00:45:40.83278
775	242	MATHEUS MASCARELLO	2000-03-29	Masculino	910269345	41484818369	\N	(54)9198-9824	(54)9940-5532	\N	Ensino superior Completo	\N	Ensino superior Incompleto	Brancos	Nenhuma	Carro	10 Km	Não	Aprovado	Concluida	2021-01-11	M303	2021-08-30 00:45:40.83278
776	247	FABIO HENRIQUE ESPELOCIM	2003-02-02	Masculino	640133265	59658432570	\N	(48)9664-2736	(54)3291-4108	\N	Ensino Técnico Completo	\N	Ensino fundamental Incomplento	Indígenas	Nenhuma	Ônibus	15 Km	Sim	Aprovado	Concluida	2021-01-25	M303	2021-08-30 00:45:40.83278
777	248	CATHARINA MAGRINI FERREIRA	2004-01-03	Feminino	271998249	50993182344	\N	(54)9215-2120	(54)9986-9124	\N	Ensino superior Completo	\N	Ensino fundamental Incomplento	Pretos	Nenhuma	Ônibus	15 Km	Não	Pendente	Concluida	2021-01-19	M303	2021-08-30 00:45:40.83278
778	249	CASSIANO SANDI DE CASTILHOS	2003-01-26	Masculino	354640179	95740387181	\N	(54)9980-3834	(54)9152-5666	\N	Ensino Técnico Completo	\N	Ensino médio Completo	Pardos	Deficiência visual	A pé	1 Km	Não	Aprovado	Concluida	2021-01-10	M303	2021-08-30 00:45:40.83278
779	258	MICHELLI SINSEN TURMINA	2003-06-17	Masculino	604915624	62072171314	\N	(54)9112-9256	(54)8144-2892	\N	Ensino fundamental Completo	\N	Ensino Técnico Incompleto	Amarelos	Nenhuma	Carro	5 Km	Não	Aprovado	Concluida	2021-01-23	M303	2021-08-30 00:45:40.83278
780	259	MOISÉS GOZZI	2003-10-07	Masculino	651406310	32226239079	\N	(54)9643-0153	(54)9608-2878	\N	Ensino superior Incompleto	\N	Ensino médio Incomplento	Brancos	Deficiência auditiva	Carro	30 Km	Não	Aprovado	Concluida	2021-01-13	M303	2021-08-30 00:45:40.83278
781	261	PEDRO HENRIQUE RONCEN VIER	2016-06-25	Masculino	328710457	45247289364	\N	(54)9109-5382	(00)0000-0000	\N	Ensino médio Incomplento	\N	Ensino fundamental Incomplento	Brancos	Deficiência auditiva	A pé	20 Km	Não	Aprovado	Concluida	2021-01-12	Pr04	2021-08-30 00:45:40.83278
782	262	WILLIAM RIBEIRO DE SOUZA	2016-11-11	Masculino	753293205	26953319270	\N	(54)9660-5993	(54)9184-2832	\N	Ensino médio Incomplento	\N	Ensino superior Completo	Pardos	Nenhuma	Carro	1 Km	Sim	Reprovou	Concluida	2021-01-15	Pr04	2021-08-30 00:45:40.83278
783	270	MAURICIO ALBERTO CASAGRANDA BOLZAN	2016-07-06	Masculino	393718388	23866430650	\N	(54)3291-2376	91383922	\N	Ensino Técnico Incompleto	\N	Ensino Técnico Completo	Amarelos	Nenhuma	A pé	15 Km	Não	Aprovado	Concluida	2021-02-04	Pr04	2021-08-30 00:45:40.83278
784	272	VANDERLEI DE CASTILHOS FILHO	2016-05-27	Masculino	396882912	59063403666	\N	(54)3291-1310	3291-1862	\N	Ensino médio Completo	\N	Ensino Técnico Incompleto	Pardos	Nenhuma	Carro	20 Km	Não	Aprovado	Concluida	2021-01-29	Pr04	2021-08-30 00:45:40.83278
785	283	ELISA FATIMA GUERRA	2016-02-08	Feminino	313789617	72099019177	\N	(54)9698-5318	32911763	\N	Ensino superior Incompleto	\N	Ensino Técnico Incompleto	Brancos	Nenhuma	Ônibus	5 Km	Sim	Reprovou	Concluida	2021-01-13	Pr04	2021-08-30 00:45:40.83278
786	291	ALINE LAIS DONBROWSKI	2016-12-19	Feminino	496429013	76255382548	\N	(54)3291-3822	(54)9633-3723	\N	Ensino superior Incompleto	\N	Ensino médio Incomplento	Pardos	Nenhuma	Ônibus	15 Km	Não	Aprovado	Concluida	2021-02-03	Pr04	2021-08-30 00:45:40.83278
787	293	JHIOVANA FONSECA MATAURO	2016-09-06	Feminino	257800841	56043214030	\N	(54)3291-4102	(54)3504-1247	\N	Ensino superior Incompleto	\N	Ensino Técnico Incompleto	Pardos	Nenhuma	Ônibus	5 Km	Não	Aprovado	Concluida	2021-01-26	Pr04	2021-08-30 00:45:40.83278
788	296	BRUNA VANIN VIEIRA	2016-09-04	Feminino	493647519	29652642045	\N	(54)3291-4223	(54)3291-4357	\N	Ensino médio Incomplento	\N	Ensino superior Completo	Amarelos	Nenhuma	Ônibus	5 Km	Não	Aprovado	Concluida	2021-02-04	Pr04	2021-08-30 00:45:40.83278
789	297	LAIS EDUARDA BARBOSA PICETTI	2016-08-07	Feminino	819869174	66668676998	\N	(54)8144-2892	(54)3291-9011	\N	Ensino Técnico Completo	\N	Ensino Técnico Completo	Pardos	Deficiência auditiva	Ônibus	5 Km	Não	Aprovado	Concluida	2021-01-20	Pr04	2021-08-30 00:45:40.83278
790	299	ANA LARA MIOTTO JUNQUEIRA	2016-07-14	Feminino	915768273	14795381266	\N	(54)3291-2852	(54)3280-1228	\N	Ensino Técnico Completo	\N	Ensino Técnico Completo	Brancos	Nenhuma	A pé	50 Km	Não	Reprovou	Concluida	2021-02-06	Pr04	2021-08-30 00:45:40.83278
791	300	FERNANDO LUIZ RECH	2016-03-16	Masculino	534812304	64373378941	\N	(54)3291-4598	(54)3291-1081	\N	Ensino superior Incompleto	\N	Ensino médio Completo	Pardos	Nenhuma	Ônibus	15 Km	Não	Aprovado	Concluida	2021-01-27	Pr04	2021-08-30 00:45:40.83278
792	301	RAFAEL RIZZON	2016-12-08	Masculino	411031636	17589400820	\N	3291-2664	(54)9614-4765	\N	Ensino fundamental Incomplento	\N	Ensino Técnico Completo	Pretos	Nenhuma	Carro	15 Km	Não	Pendente	Concluida	2021-01-17	Pr04	2021-08-30 00:45:40.83278
793	302	VITORIA CAETANO FERRARI BIBERG	2016-10-08	Feminino	932003042	46333465188	\N	99322231	(54)9617-3698	\N	Ensino Técnico Completo	\N	Ensino superior Incompleto	Pardos	Nenhuma	A pé	1 Km	Não	Aprovado	Concluida	2021-01-19	Pr04	2021-08-30 00:45:40.83278
794	304	ALEXANDRE DAVI DE JESUS DE OLIVEIRA	2016-07-31	Masculino	262938113	47296105751	\N	(54)9646-7796	(54)9175-5073	\N	Ensino superior Incompleto	\N	Ensino Técnico Incompleto	Brancos	Nenhuma	Ônibus	20 Km	Não	Aprovado	Concluida	2021-01-15	Pr04	2021-08-30 00:45:40.83278
795	308	CHAIANE SULIANI EVES	2016-03-25	Feminino	614121175	97859971626	\N	(54)9944-8589	(54)3291-1821	\N	Ensino superior Completo	\N	Ensino fundamental Incomplento	Pardos	Nenhuma	Ônibus	5 Km	Não	Aprovado	Pendente	2021-01-18	Pr04	2021-08-30 00:45:40.83278
796	309	STEFANI DE CASTILHOS	2016-02-07	Feminino	773728115	57995271644	\N	3291-3919	(54)3291-6500	\N	Ensino Técnico Completo	\N	Ensino fundamental Completo	Pardos	Deficiência visual	A pé	10 Km	Sim	Reprovou	Concluida	2021-02-01	Pr04	2021-08-30 00:45:40.83278
797	318	GISELE MARTINS DA COSTA	2015-09-12	Feminino	138870311	32196800014	\N	(54)3291-3821	(54)3291-2559	\N	Ensino fundamental Incomplento	\N	Ensino Técnico Incompleto	Pretos	Nenhuma	Ônibus	1 Km	Não	Aprovado	Pendente	2021-01-11	104	2021-08-30 00:45:40.83278
798	319	ISADORA BROCHETTO	2015-12-08	Feminino	821520968	39269719087	\N	(54)8448-6282	(54)3291-6505	\N	Ensino superior Incompleto	\N	Ensino superior Completo	Pardos	Nenhuma	Ônibus	20 Km	Não	Aprovado	Pendente	2021-02-03	104	2021-08-30 00:45:40.83278
799	326	RODRIGO TOMIELO	2015-12-05	Masculino	250608236	27252362119	\N	(54)9187-4882	(54)3291-5302	\N	Ensino Técnico Incompleto	\N	Ensino fundamental Incomplento	Pardos	Nenhuma	Bicicleta	1 Km	Não	Aprovado	Concluida	2021-01-10	104	2021-08-30 00:45:40.83278
800	327	JOICI RIZZO	2015-11-08	Feminino	384463948	82397914902	\N	(54)3291-6399	(54)3291-2246	\N	Ensino superior Incompleto	\N	Ensino Técnico Incompleto	Pardos	Nenhuma	A pé	15 Km	Não	Aprovado	Concluida	2021-01-21	104	2021-08-30 00:45:40.83278
801	330	FELIPE DAL PRA	2015-10-31	Masculino	715578635	42670694950	\N	(54)9980-1450	(54)9130-4871	\N	Ensino Técnico Completo	\N	Ensino fundamental Incomplento	Amarelos	Nenhuma	Ônibus	30 Km	Não	Aprovado	Concluida	2021-01-15	104	2021-08-30 00:45:40.83278
802	334	DANRLEI PREBIANCA LEITE	2015-06-10	Masculino	650576678	17811670369	\N	(54)9657-8636	(54)3291-3821	\N	Ensino superior Incompleto	\N	Ensino fundamental Incomplento	Indígenas	Nenhuma	Ônibus	5 Km	Não	Aprovado	Concluida	2021-02-08	104	2021-08-30 00:45:40.83278
803	336	JONI MATEUS FOCHESATO	2015-02-21	Masculino	525406554	75640603052	\N	\N	(54)9115-7283	\N	Ensino superior Incompleto	\N	Ensino fundamental Completo	Brancos	Nenhuma	Carro	20 Km	Não	Reprovou	Pendente	2021-01-21	104	2021-08-30 00:45:40.83278
804	341	LEONARDO SOBOLESWKI FLORES	2015-11-06	Masculino	973427781	65663209113	\N	(54)9197-9015	(  )    -	\N	Ensino superior Completo	\N	Ensino fundamental Completo	Indígenas	Nenhuma	Moto	1 Km	Não	Aprovado	Concluida	2021-01-31	104	2021-08-30 00:45:40.83278
805	347	MARIA EDUARDA DE JESUS	2015-04-14	Feminino	202219218	84053131201	\N	(54)3280-1235	(54)9984-4473	\N	Ensino Técnico Completo	\N	Ensino médio Incomplento	Pardos	Deficiência visual	Ônibus	15 Km	Não	Aprovado	Concluida	2021-02-08	104	2021-08-30 00:45:40.83278
806	349	RAQUEL SOGARI	2015-09-16	Feminino	886861630	92823391436	\N	(54)9967-5026	(54)9946-4957	\N	Ensino fundamental Incomplento	\N	Ensino médio Completo	Pardos	Nenhuma	A pé	30 Km	Não	Aprovado	Concluida	2021-01-24	104	2021-08-30 00:45:40.83278
807	357	VANESSA COUSSEAU	2015-09-15	Feminino	510474654	69173158494	\N	(54)9600-0808	(54)9144-2543	\N	Ensino fundamental Completo	\N	Ensino fundamental Incomplento	Indígenas	Nenhuma	Ônibus	15 Km	Sim	Pendente	Concluida	2021-01-25	104	2021-08-30 00:45:40.83278
808	364	ALICE TERESA DA SILVA	2015-06-08	Feminino	547675630	10807519275	\N	(54)3291-2833	\N	\N	Ensino superior Incompleto	\N	Ensino superior Incompleto	Brancos	Nenhuma	Carro	15 Km	Não	Reprovou	Concluida	2021-01-14	104	2021-08-30 00:45:40.83278
809	366	MIRELA CECILIA SOLDERA	2015-10-09	Feminino	457375317	86001024931	\N	99225519	(54)3291-6334	\N	Ensino fundamental Completo	\N	Ensino Técnico Incompleto	Pretos	Nenhuma	Carro	1 Km	Não	Aprovado	Concluida	2021-01-10	104	2021-08-30 00:45:40.83278
810	367	RICARDO BURATTI	2015-04-13	Masculino	489195710	57956399099	\N	(54)9939-3427	(54)9209-5725	\N	Ensino Técnico Incompleto	\N	Ensino fundamental Completo	Brancos	Nenhuma	Moto	10 Km	Não	Aprovado	Pendente	2021-02-01	104	2021-08-30 00:45:40.83278
811	370	ROSANA DE FÁTIMA PIRES	2015-11-20	Feminino	718567026	22503994279	\N	(54)9102-7368	(54)3291-2248	\N	Ensino fundamental Completo	\N	Ensino médio Incomplento	Brancos	Nenhuma	Carro	1 Km	Não	Aprovado	Concluida	2021-02-07	104	2021-08-30 00:45:40.83278
812	371	VIVIANE DE SOUZA MOTA DE ALMEIDA PAZ	2015-03-04	Feminino	312747304	55157430943	\N	(54)9148-9083	(54)9120-8314	\N	Ensino Técnico Incompleto	\N	Ensino fundamental Completo	Brancos	Nenhuma	A pé	15 Km	Não	Pendente	Pendente	2021-02-03	104	2021-08-30 00:45:40.83278
813	374	JUSIANE CASAGRANDA	2014-09-30	Feminino	929253734	79682807806	\N	(54)9642-9391	(54)9971-3239	\N	Ensino Técnico Completo	\N	Ensino fundamental Incomplento	Brancos	Paralisia cerebral	Moto	20 Km	Sim	Aprovado	Concluida	2021-01-25	203	2021-08-30 00:45:40.83278
814	375	EVELYN TREVISAN	2014-06-06	Feminino	176304481	61515987537	\N	(54)9977-8364	(54)3291-6104	\N	Ensino fundamental Completo	\N	Ensino médio Completo	Brancos	Nenhuma	Ônibus	10 Km	Não	Aprovado	Concluida	2021-01-15	203	2021-08-30 00:45:40.83278
815	376	THIAGO EDSON DE MELLO POZZO	2014-10-07	Masculino	701521336	27752239906	\N	(54)9135-4818	(54)3291-6104	\N	Ensino médio Incomplento	\N	Ensino Técnico Completo	Pardos	Nenhuma	Ônibus	30 Km	Não	Aprovado	Pendente	2021-01-22	203	2021-08-30 00:45:40.83278
816	391	KAUAN VARELA ZANELA	2014-04-29	Masculino	332739460	11854657858	\N	(54)9999-5783	(54)9941-9604	\N	Ensino médio Incomplento	\N	Ensino fundamental Completo	Brancos	Nenhuma	Ônibus	15 Km	Não	Pendente	Concluida	2021-02-06	203	2021-08-30 00:45:40.83278
817	393	TIAGO ZULIAN DALLAGNOL	2014-01-16	Masculino	419711178	47623149645	\N	(54)9953-3134	(54)3267-8061	\N	Ensino Técnico Completo	\N	Ensino médio Completo	Pardos	Deficiência auditiva	Ônibus	5 Km	Não	Aprovado	Concluida	2021-01-31	203	2021-08-30 00:45:40.83278
818	394	LUCAS DA SILVA SANTOS	2014-03-18	Masculino	105480046	81498847250	\N	(54)9996-1381	(54)9119-6270	\N	Ensino Técnico Completo	\N	Ensino Técnico Incompleto	Amarelos	Nenhuma	A pé	30 Km	Não	Aprovado	Concluida	2021-01-12	203	2021-08-30 00:45:40.83278
819	399	ANTONIO AUGUSTO DE MACEDO	2014-04-28	Masculino	554287705	72525500398	\N	(54)9695-3874	(54)9157-0079	\N	Ensino Técnico Incompleto	\N	Ensino fundamental Completo	Pretos	Nenhuma	Carro	15 Km	Não	Aprovado	Concluida	2021-01-22	203	2021-08-30 00:45:40.83278
820	400	LUCIA DE OLIVEIRA PAULA	2014-12-16	Feminino	707411881	92286455689	\N	(54)3291-6411	(54)8116-8716	\N	Ensino Técnico Incompleto	\N	Ensino fundamental Completo	Brancos	Paralisia cerebral	Ônibus	1 Km	Sim	Aprovado	Concluida	2021-01-17	203	2021-08-30 00:45:40.83278
821	402	AUGUSTO RIZZON BUGANÇA	2014-01-22	Masculino	860056235	90784407183	\N	(54)9682-1138	(54)3291-2420	\N	Ensino superior Completo	\N	Ensino fundamental Incomplento	Indígenas	Nenhuma	Carro	5 Km	Não	Pendente	Concluida	2021-02-08	203	2021-08-30 00:45:40.83278
822	406	LUIZA LORENTZ	2014-07-26	Feminino	762275311	19970110260	\N	(54)3280-1005	(54)3291-1331	\N	Ensino superior Incompleto	\N	Ensino Técnico Incompleto	Pardos	Nenhuma	A pé	20 Km	Não	Aprovado	Concluida	2021-01-17	203	2021-08-30 00:45:40.83278
823	418	REICARD PELIZZONI	2014-06-06	Masculino	224290314	58826564550	\N	(54)9607-8774	(54)9954-3168	\N	Ensino superior Incompleto	\N	Ensino superior Completo	Pardos	Nenhuma	Carro	10 Km	Não	Aprovado	Concluida	2021-01-25	203	2021-08-30 00:45:40.83278
824	422	KATIELE BORGES DE CAMARGO	2014-10-01	Feminino	871024891	44078342241	\N	(54)3291-3554	32911415	\N	Ensino fundamental Completo	\N	Ensino superior Incompleto	Brancos	Nenhuma	A pé	1 Km	Não	Aprovado	Concluida	2021-01-20	203	2021-08-30 00:45:40.83278
825	424	ADRIELI DA SILVA RODRIGUES	2014-07-25	Feminino	805567326	11847171750	\N	(54)3235-5099	(54)3291-2087	\N	Ensino superior Completo	\N	Ensino fundamental Incomplento	Brancos	Deficiência auditiva	Moto	1 Km	Não	Aprovado	Pendente	2021-02-05	203	2021-08-30 00:45:40.83278
826	428	MARIA TEREZINHA DRAGO CIOATO	2014-02-25	Feminino	182137303	99541182412	\N	(54)9960-7595	(54)3291-1638	\N	Ensino superior Incompleto	\N	Ensino fundamental Incomplento	Brancos	Nenhuma	Ônibus	20 Km	Não	Aprovado	Concluida	2021-01-23	203	2021-08-30 00:45:40.83278
827	430	TAÍNE FABRO MARTININGUI	2014-09-17	Feminino	877652083	23997472629	\N	(54)9645-0824	(54)3291-1364	\N	Ensino superior Incompleto	\N	Ensino superior Completo	Brancos	Nenhuma	A pé	5 Km	Não	Aprovado	Concluida	2021-01-16	203	2021-08-30 00:45:40.83278
828	431	FRANCO HENRIQUE GOZZI MARTINI	2014-02-03	Masculino	615611390	84062259320	\N	(54)9132-4493	(54)9138-4633	\N	Ensino médio Incomplento	\N	Ensino Técnico Incompleto	Amarelos	Nenhuma	Ônibus	1 Km	Não	Pendente	Concluida	2021-01-19	203	2021-08-30 00:45:40.83278
829	433	BRUNO VIEIRA DA SILVA	2013-04-22	Masculino	956392773	76860005255	\N	(54)9924-0026	(54)3291-3772	\N	Ensino Técnico Incompleto	\N	Ensino superior Completo	Pardos	Nenhuma	Carro	5 Km	Não	Reprovou	Pendente	2021-02-02	304	2021-08-30 00:45:40.83278
830	438	LUCIANA DE LIMA CARRARO	2013-06-12	Feminino	684098585	13382197736	\N	(54)9647-2502	(54)9111-9117	\N	Ensino Técnico Incompleto	\N	Ensino superior Completo	Brancos	Nenhuma	Ônibus	30 Km	Não	Aprovado	Concluida	2021-01-28	304	2021-08-30 00:45:40.83278
831	439	VITÓRIA FANTIN	2013-02-08	Feminino	899900620	63531828949	\N	(54)9668-8158	(54)9170-4670	\N	Ensino superior Completo	\N	Ensino superior Incompleto	Amarelos	Nenhuma	Ônibus	30 Km	Não	Pendente	Concluida	2021-02-08	304	2021-08-30 00:45:40.83278
832	442	ANDERSON RIZZO	2013-11-01	Masculino	904022282	23031784076	\N	(54)9676-6597	(54)9949-6496	\N	Ensino superior Completo	\N	Ensino Técnico Incompleto	Brancos	Nenhuma	Carro	20 Km	Não	Pendente	Pendente	2021-01-29	304	2021-08-30 00:45:40.83278
833	443	LAURA ESTÉFANI R. DOS SANTOS	2013-12-30	Feminino	612223957	80999785998	\N	(54)3291-2927	3280-1119	\N	Ensino Técnico Incompleto	\N	Ensino fundamental Incomplento	Pardos	Nenhuma	Carro	5 Km	Não	Aprovado	Pendente	2021-02-01	304	2021-08-30 00:45:40.83278
834	445	ISADORA MAGRIN	2013-10-21	Feminino	456796550	71854042336	\N	(54)9955-5722	32914627	\N	Ensino médio Completo	\N	Ensino médio Completo	Amarelos	Nenhuma	Carro	1 Km	Sim	Reprovou	Concluida	2021-01-15	304	2021-08-30 00:45:40.83278
835	451	VITORIA GOMES LINS	2013-04-11	Feminino	573911841	66319161806	\N	(54)9214-3666	3291-6318	\N	Ensino Técnico Incompleto	\N	Ensino superior Incompleto	Indígenas	Nenhuma	Ônibus	30 Km	Sim	Aprovado	Pendente	2021-02-07	304	2021-08-30 00:45:40.83278
836	452	GUSTAVO DE L. LOURENÇO	2013-04-24	Masculino	354042513	74831337894	\N	(54)9602-5463	(54)9922-3101	\N	Ensino médio Incomplento	\N	Ensino fundamental Completo	Amarelos	Nenhuma	Moto	10 Km	Não	Pendente	Concluida	2021-01-10	304	2021-08-30 00:45:40.83278
837	453	JOÃO PEDRO BOLZAN CAPELLETI	2013-09-30	Feminino	873932458	46160218748	\N	(54)9101-7040	(54)9177-2667	\N	Ensino Técnico Completo	\N	Ensino superior Incompleto	Pretos	Nenhuma	A pé	1 Km	Não	Aprovado	Concluida	2021-02-06	304	2021-08-30 00:45:40.83278
838	457	PAMELA DOS SANTOS RIBEIRO	2013-05-26	Feminino	318010165	90474657054	\N	(54)9600-0133	(54)3291-2596	\N	Ensino superior Completo	\N	Ensino superior Completo	Brancos	Nenhuma	A pé	5 Km	Não	Aprovado	Concluida	2021-01-13	304	2021-08-30 00:45:40.83278
839	458	CAROLINE ZAMPIERI	2013-09-05	Feminino	554508069	97040693105	\N	(54)3291-6142	32678231	\N	Ensino médio Incomplento	\N	Ensino superior Completo	Brancos	Nenhuma	A pé	1 Km	Sim	Aprovado	Concluida	2021-01-14	304	2021-08-30 00:45:40.83278
840	459	RENATA ROMEIRO DOS SANTOS	2013-02-16	Feminino	662957138	70975541577	\N	(54)3291-1092	3291-1479	\N	Ensino Técnico Incompleto	\N	Ensino Técnico Incompleto	Brancos	Nenhuma	Carro	1 Km	Não	Aprovado	Concluida	2021-01-25	304	2021-08-30 00:45:40.83278
841	468	PATRICIA MACIEL BROCHETTO	2013-04-04	Feminino	787707429	73505560868	\N	(11)1111-1111	32914316	\N	Ensino médio Incomplento	\N	Ensino superior Incompleto	Brancos	Nenhuma	Carro	15 Km	Não	Aprovado	Concluida	2021-01-31	304	2021-08-30 00:45:40.83278
842	473	ANDREIA BOFF	2013-07-24	Feminino	968959470	17348934655	\N	(54)9650-9898	32913514	\N	Ensino médio Completo	\N	Ensino fundamental Completo	Pardos	Nenhuma	Carro	5 Km	Não	Aprovado	Concluida	2021-01-24	304	2021-08-30 00:45:40.83278
843	478	JOÃO EDUARDO CECHINATO	2013-04-03	Feminino	496331902	58249225092	\N	(54)9150-4245	(54)3291-7550	\N	Ensino superior Incompleto	\N	Ensino Técnico Incompleto	Brancos	Deficiência motora	Ônibus	10 Km	Não	Aprovado	Pendente	2021-01-14	304	2021-08-30 00:45:40.83278
844	485	JANAINA LOPES PERES	2013-01-13	Feminino	624227069	68767450053	\N	91256911	(54)3291-6361	\N	Ensino médio Incomplento	\N	Ensino Técnico Incompleto	Amarelos	Nenhuma	A pé	1 Km	Não	Aprovado	Concluida	2021-02-02	304	2021-08-30 00:45:40.83278
845	489	FLAVIANO FABBRIS	2012-11-27	Feminino	358810394	82371016745	\N	(54)3291-2266	(54)3291-7519	\N	Ensino superior Incompleto	\N	Ensino Técnico Incompleto	Brancos	Nenhuma	Ônibus	10 Km	Não	Aprovado	Concluida	2021-01-19	404	2021-08-30 00:45:40.83278
846	490	GISELA PAIM LIPOSKI	2012-09-16	Masculino	201613074	64880031285	\N	(54)9180-8809	(54)9611-1147	\N	Ensino médio Incomplento	\N	Ensino fundamental Completo	Pardos	Deficiência visual	A pé	5 Km	Não	Aprovado	Concluida	2021-01-24	404	2021-08-30 00:45:40.83278
847	492	NATANIEL CHAVEZ PEREIRA	2012-11-12	Feminino	613718146	12691829953	\N	(54)9923-3833	(54)9941-2734	\N	Ensino Técnico Completo	\N	Ensino Técnico Completo	Brancos	Nenhuma	Bicicleta	10 Km	Não	Reprovou	Concluida	2021-01-28	404	2021-08-30 00:45:40.83278
848	501	ELISA PEGORARO SOTORIVA	2012-01-09	Feminino	320295089	73977393503	\N	(54)9914-1520	(54)9671-3253	\N	Ensino médio Incomplento	\N	Ensino superior Completo	Amarelos	Nenhuma	Carro	15 Km	Não	Aprovado	Concluida	2021-01-31	404	2021-08-30 00:45:40.83278
849	505	LAIS GENTIL	2012-11-02	Feminino	695506150	53683671127	\N	(54)3291-7422	(54)9631-6087	\N	Ensino médio Incomplento	\N	Ensino fundamental Incomplento	Brancos	Nenhuma	Ônibus	20 Km	Não	Aprovado	Concluida	2021-01-20	404	2021-08-30 00:45:40.83278
850	506	LEONARDO ARTUR BALARDIN SANDRI	2012-09-22	Masculino	310105564	32177510728	\N	32916020	(54)9921-9264	\N	Ensino Técnico Completo	\N	Ensino médio Incomplento	Pardos	Nenhuma	Moto	15 Km	Não	Reprovou	Pendente	2021-01-27	404	2021-08-30 00:45:40.83278
851	509	LORENZO STICH BIASOTTO	2012-12-16	Masculino	486118433	62890518655	\N	(54)9181-5533	(54)3291-1718	\N	Ensino fundamental Incomplento	\N	Ensino Técnico Incompleto	Pretos	Nenhuma	A pé	15 Km	Não	Aprovado	Concluida	2021-01-12	404	2021-08-30 00:45:40.83278
852	513	PATRÍCIA MARTININGHI	2012-12-26	Feminino	854139925	92832778804	\N	(54)3291-1962	(54)8407-9950	\N	Ensino Técnico Incompleto	\N	Ensino médio Incomplento	Brancos	Nenhuma	A pé	10 Km	Sim	Aprovado	Concluida	2021-01-11	404	2021-08-30 00:45:40.83278
853	514	GISELE CORREIA DE BRITO	2012-08-27	Feminino	488996148	61761958869	\N	(54)9186-9873	(54)3291-7493	\N	Ensino Técnico Completo	\N	Ensino superior Completo	Pretos	Deficiência visual	A pé	5 Km	Não	Aprovado	Concluida	2021-01-26	404	2021-08-30 00:45:40.83278
854	515	ALINE FREDREZ	2012-10-14	Feminino	836893273	92474797787	\N	(54)3291-6233	(54)9918-8990	\N	Ensino Técnico Completo	\N	Ensino superior Incompleto	Amarelos	Nenhuma	Ônibus	10 Km	Não	Aprovado	Concluida	2021-01-17	404	2021-08-30 00:45:40.83278
855	516	ISADORA SCAIN	2012-01-20	Feminino	570052603	78191359676	\N	(54)3291-2060	(54)9206-1075	\N	Ensino médio Completo	\N	Ensino médio Completo	Brancos	Nenhuma	Carro	15 Km	Não	Aprovado	Concluida	2021-02-01	404	2021-08-30 00:45:40.83278
856	517	THAÍS SANDRI BROCHETTO	2012-08-29	Feminino	783967051	52038402004	\N	(54)8124-4659	(54)3291-2802	\N	Ensino fundamental Completo	\N	Ensino Técnico Completo	Brancos	Nenhuma	Carro	15 Km	Não	Reprovou	Concluida	2021-02-02	404	2021-08-30 00:45:40.83278
857	522	GUILHERME WILLIAM BITENCOURT MACIEL	2012-11-27	Masculino	228247344	47581266573	\N	(54)9971-6798	(54)9674-3257	\N	Ensino fundamental Incomplento	\N	Ensino médio Incomplento	Brancos	Nenhuma	Ônibus	5 Km	Não	Pendente	Pendente	2021-01-16	404	2021-08-30 00:45:40.83278
858	533	MAICON CAMAZZOLA DOS SANTOS	2012-05-22	Masculino	642625757	82408345511	\N	(54)9912-8017	(54)3291-3954	\N	Ensino médio Incomplento	\N	Ensino fundamental Incomplento	Pretos	Nenhuma	Carro	5 Km	Sim	Aprovado	Concluida	2021-01-31	404	2021-08-30 00:45:40.83278
859	537	SAMARA BRESOLIN	2012-03-18	Feminino	511045221	14369942281	\N	(54)9207-4853	(54)3291-3234	\N	Ensino superior Incompleto	\N	Ensino Técnico Completo	Brancos	Nenhuma	Ônibus	10 Km	Sim	Aprovado	Concluida	2021-02-02	404	2021-08-30 00:45:40.83278
860	543	LEOMAR CARARO	2012-07-14	Masculino	474318315	14061788555	\N	(54)3291-6334	(54)9178-9852	\N	Ensino Técnico Completo	\N	Ensino médio Incomplento	Pardos	Nenhuma	Ônibus	15 Km	Não	Aprovado	Concluida	2021-02-05	404	2021-08-30 00:45:40.83278
861	550	LUCAS DE ARAÚJO CASTILHOS	2011-11-15	Masculino	978021501	50490554621	\N	(54)9613-4042	(54)3291-2248	\N	Ensino fundamental Completo	\N	Ensino superior Incompleto	Brancos	Nenhuma	Ônibus	15 Km	Não	Pendente	Concluida	2021-01-16	503	2021-08-30 00:45:40.83278
862	552	NATHALIA VITORIA SANTOS SILVA	2011-08-02	Feminino	160956928	68327877274	\N	(54)9186-7600	(54)3291-2848	\N	Ensino superior Completo	\N	Ensino superior Incompleto	Pretos	Nenhuma	Moto	5 Km	Não	Pendente	Concluida	2021-01-22	503	2021-08-30 00:45:40.83278
863	553	EMILLY LIPOSKI LOPES DOS SANTOS	2011-01-10	Feminino	112882070	15528672179	\N	(54)8145-8401	(54)3504-1358	\N	Ensino superior Incompleto	\N	Ensino médio Completo	Brancos	Nenhuma	A pé	10 Km	Não	Aprovado	Concluida	2021-01-23	503	2021-08-30 00:45:40.83278
864	561	LUANA DA SILVA SANTOS	2011-06-29	Feminino	774770417	17623442363	\N	(54)9164-2921	(54)3291-3291	\N	Ensino superior Incompleto	\N	Ensino superior Incompleto	Amarelos	Nenhuma	Carro	5 Km	Não	Aprovado	Concluida	2021-01-30	503	2021-08-30 00:45:40.83278
865	565	EDUARDA DA SILVA PERDONA	2011-11-18	Feminino	302485129	85662011700	\N	(54)3291-2820	(54)3291-7539	\N	Ensino fundamental Incomplento	\N	Ensino Técnico Incompleto	Brancos	Nenhuma	Ônibus	15 Km	Não	Reprovou	Concluida	2021-01-31	503	2021-08-30 00:45:40.83278
866	566	LUCAS DA SILVA	2011-07-31	Masculino	431245861	68536243121	\N	(54)9180-0930	(54)3267-8160	\N	Ensino fundamental Completo	\N	Ensino médio Incomplento	Indígenas	Deficiência visual	A pé	5 Km	Não	Reprovou	Concluida	2021-01-26	503	2021-08-30 00:45:40.83278
867	567	DIEGO HENRIQUE RIBEIRO	2011-06-01	Masculino	470384166	15888282967	\N	(54)9154-8746	(54)9652-5801	\N	Ensino médio Incomplento	\N	Ensino Técnico Completo	Brancos	Nenhuma	A pé	15 Km	Não	Aprovado	Pendente	2021-01-15	503	2021-08-30 00:45:40.83278
868	570	PATRYCK SCARIOT LIRA	2011-06-24	Masculino	595341437	77086679482	\N	(54)9107-1042	(54)3291-6026	\N	Ensino superior Incompleto	\N	Ensino superior Incompleto	Brancos	Nenhuma	A pé	10 Km	Não	Aprovado	Concluida	2021-02-05	503	2021-08-30 00:45:40.83278
869	576	DANIELE APARECIDA DELFES DOS SANTOS	2011-09-11	Feminino	945380903	31641530215	\N	(54)9661-0384	(54)9212-1864	\N	Ensino médio Completo	\N	Ensino fundamental Incomplento	Brancos	Nenhuma	A pé	20 Km	Não	Aprovado	Concluida	2021-01-28	503	2021-08-30 00:45:40.83278
870	577	YASMIN DOS REIS PARIZOTE	2011-06-08	Feminino	299417581	44254848958	\N	(54)9187-0508	(54)9697-7921	\N	Ensino médio Incomplento	\N	Ensino médio Incomplento	Brancos	Nenhuma	A pé	20 Km	Não	Aprovado	Concluida	2021-01-27	503	2021-08-30 00:45:40.83278
871	578	GABRIELA CARARO BONI	2011-06-03	Feminino	562218209	40764784377	\N	(54)9646-1871	(54)8164-2013	\N	Ensino Técnico Incompleto	\N	Ensino médio Completo	Brancos	Deficiência auditiva	A pé	50 Km	Não	Aprovado	Concluida	2021-02-08	503	2021-08-30 00:45:40.83278
872	581	GLAUCIA DE CAMPOS RIZZON	2011-10-15	Feminino	717617621	35423397483	\N	(54)9148-1191	(54)9953-5277	\N	Ensino superior Completo	\N	Ensino fundamental Completo	Brancos	Nenhuma	A pé	10 Km	Não	Pendente	Concluida	2021-02-08	503	2021-08-30 00:45:40.83278
873	583	VAGNER PEREIRA DOS SANTOS	2011-12-27	Masculino	410391544	32272470983	\N	(54)9929-1107	(54)9949-6094	\N	Ensino superior Incompleto	\N	Ensino Técnico Completo	Amarelos	Deficiência visual	A pé	1 Km	Não	Pendente	Concluida	2021-02-07	503	2021-08-30 00:45:40.83278
874	584	GABRIELE DAL'LAGO	2011-09-13	Feminino	990674514	47142971613	\N	(54)9705-4445	(54)3291-3515	\N	Ensino superior Incompleto	\N	Ensino médio Incomplento	Brancos	Nenhuma	Moto	20 Km	Sim	Aprovado	Concluida	2021-01-21	503	2021-08-30 00:45:40.83278
875	585	ANGELICA MENDES	2011-06-25	Feminino	944718866	91377903743	\N	(54)3291-1572	(54)3291-2337	\N	Ensino médio Incomplento	\N	Ensino médio Completo	Pretos	Nenhuma	Ônibus	30 Km	Não	Pendente	Pendente	2021-02-02	503	2021-08-30 00:45:40.83278
876	589	ALISSON FERNANDO BOEIRA	2010-03-26	Masculino	146843483	29647524839	\N	(54)9202-1947	(54)9931-3134	\N	Ensino Técnico Completo	\N	Ensino médio Completo	Brancos	Nenhuma	Ônibus	10 Km	Não	Reprovou	Concluida	2021-01-17	604	2021-08-30 00:45:40.83278
877	590	MARIA ISABEL DEBOVI	2010-11-15	Feminino	262650634	35291460580	\N	(54)9206-9897	(54)9137-7848	\N	Ensino Técnico Incompleto	\N	Ensino médio Completo	Indígenas	Nenhuma	Ônibus	15 Km	Não	Pendente	Concluida	2021-01-15	604	2021-08-30 00:45:40.83278
878	591	RUDINEI RODRIGUES DE CANDIDO	2010-07-10	Masculino	701874168	20674361780	\N	(54)9971-9989	(54)3291-3295	\N	Ensino fundamental Incomplento	\N	Ensino superior Completo	Pardos	Nenhuma	Ônibus	15 Km	Não	Aprovado	Concluida	2021-02-05	604	2021-08-30 00:45:40.83278
879	592	BRUNO LICRECIO DA SILVA	2010-09-23	Masculino	752398157	40719941027	\N	(54)3291-4067	(54)8151-7350	\N	Ensino fundamental Completo	\N	Ensino Técnico Completo	Pretos	Nenhuma	A pé	5 Km	Sim	Pendente	Concluida	2021-01-29	604	2021-08-30 00:45:40.83278
880	595	SANDRA APARECIDA DE JESUS	2010-08-09	Feminino	885571317	66559159873	\N	(54)9175-2669	(54)9683-8179	\N	Ensino superior Incompleto	\N	Ensino médio Incomplento	Brancos	Nenhuma	A pé	5 Km	Não	Aprovado	Concluida	2021-02-04	604	2021-08-30 00:45:40.83278
881	597	RHAIRA CASTILHOS	2010-07-20	Feminino	915080676	67756318698	\N	(54)9954-3259	(54)9152-2263	\N	Ensino superior Incompleto	\N	Ensino Técnico Completo	Brancos	Nenhuma	Ônibus	10 Km	Não	Aprovado	Concluida	2021-02-02	604	2021-08-30 00:45:40.83278
882	598	NATÁLIA DA SILVA NEVES	2010-07-13	Feminino	849862242	33042255716	\N	(54)9919-1150	(54)3291-4021	\N	Ensino Técnico Incompleto	\N	Ensino superior Incompleto	Brancos	Nenhuma	Ônibus	1 Km	Não	Aprovado	Concluida	2021-01-26	604	2021-08-30 00:45:40.83278
883	599	VERA SLONGO FONGARO	2010-05-06	Feminino	711344678	97510083272	\N	(54)9105-3252	(54)3291-4021	\N	Ensino médio Incomplento	\N	Ensino superior Completo	Brancos	Deficiência auditiva	Ônibus	15 Km	Sim	Aprovado	Concluida	2021-01-30	604	2021-08-30 00:45:40.83278
884	608	VANESSA PEGORARO CAMELO	2010-10-16	Feminino	655454452	71375509536	\N	(54)3291-2820	(54)9927-4518	\N	Ensino Técnico Incompleto	\N	Ensino fundamental Incomplento	Amarelos	Nenhuma	Carro	5 Km	Não	Aprovado	Concluida	2021-02-08	604	2021-08-30 00:45:40.83278
885	609	CAROLINA TOZZETTO POLONI	2010-05-15	Feminino	386082901	69423330897	\N	(54)9615-7851	(54)9209-9944	\N	Ensino superior Incompleto	\N	Ensino superior Incompleto	Pardos	Nenhuma	A pé	5 Km	Não	Pendente	Concluida	2021-01-21	604	2021-08-30 00:45:40.83278
886	610	CAMILA DE MOURA DOS REIS	2010-10-24	Feminino	523367212	60689563720	\N	(54)9944-3371	(54)9664-0885	\N	Ensino médio Completo	\N	Ensino Técnico Incompleto	Pardos	Nenhuma	Ônibus	5 Km	Não	Aprovado	Concluida	2021-01-15	604	2021-08-30 00:45:40.83278
887	611	GUILHERME JOSIAS DENQUE	2010-01-09	Masculino	693963626	21039837954	\N	3291-2787	(54)9144-2543	\N	Ensino superior Incompleto	\N	Ensino superior Incompleto	Pardos	Nenhuma	Carro	5 Km	Não	Pendente	Concluida	2021-01-19	604	2021-08-30 00:45:40.83278
888	613	ZILMA DA COSTA LOPES	2010-11-25	Feminino	397129979	48028601120	\N	(54)9623-7475	(54)9674-6849	\N	Ensino Técnico Completo	\N	Ensino Técnico Incompleto	Pardos	Nenhuma	A pé	5 Km	Sim	Aprovado	Concluida	2021-02-06	604	2021-08-30 00:45:40.83278
889	616	RAFAEL SOLDATELLI DA ROSA	2010-09-26	Masculino	940838977	55442806029	\N	(54)3291-2491	(54)3291-1777	\N	Ensino fundamental Completo	\N	Ensino médio Completo	Brancos	Deficiência visual	Carro	5 Km	Sim	Aprovado	Concluida	2021-01-24	604	2021-08-30 00:45:40.83278
890	617	FABIANA MARCHESI	2010-07-21	Feminino	899720914	11263455019	\N	(54)3291-2398	(54)9993-6118	\N	Ensino superior Completo	\N	Ensino médio Incomplento	Pardos	Nenhuma	Ônibus	15 Km	Não	Aprovado	Pendente	2021-01-19	604	2021-08-30 00:45:40.83278
891	620	 TAISE RODRIGUES	2010-04-24	Feminino	196603733	28980398773	\N	(54)9989-9168	(54)3291-4634	\N	Ensino superior Incompleto	\N	Ensino superior Completo	Amarelos	Nenhuma	A pé	20 Km	Não	Aprovado	Concluida	2021-01-29	604	2021-08-30 00:45:40.83278
892	622	 CRISTIANE FERNANDES FONTANA	2009-06-06	Feminino	105995372	85889683284	\N	(54)9953-2548	(54)3291-4079	\N	Ensino médio Completo	\N	Ensino fundamental Completo	Pretos	Nenhuma	Carro	5 Km	Não	Aprovado	Pendente	2021-02-02	703	2021-08-30 00:45:40.83278
893	624	 SILVANA MARCIA FANTIN	2009-07-21	Feminino	438799808	87777093708	\N	(54)9192-5775	(54)3291-3434	\N	Ensino médio Incomplento	\N	Ensino fundamental Completo	Brancos	Nenhuma	Carro	15 Km	Não	Pendente	Concluida	2021-01-11	703	2021-08-30 00:45:40.83278
894	631	 TATIANE ROMEIRO DOS SANTOS	2009-03-16	Feminino	711143781	24906147308	\N	(54)9644-2285	(54)9906-9218	\N	Ensino Técnico Incompleto	\N	Ensino Técnico Incompleto	Pardos	Nenhuma	A pé	5 Km	Sim	Pendente	Concluida	2021-01-28	703	2021-08-30 00:45:40.83278
895	632	 MATEUS MOLON SANDI	2009-09-22	Masculino	556672795	84851730933	\N	(54)9957-0034	(54)3291-2537	\N	Ensino fundamental Incomplento	\N	Ensino superior Incompleto	Pardos	Nenhuma	Ônibus	20 Km	Não	Aprovado	Concluida	2021-01-31	703	2021-08-30 00:45:40.83278
896	638	 MARINES APARECIDA CHINELATO	2009-07-10	Feminino	619898061	35898845710	\N	(54)3816-1810	32919107	\N	Ensino superior Completo	\N	Ensino Técnico Completo	Amarelos	Deficiência visual	Carro	5 Km	Não	Aprovado	Pendente	2021-02-06	703	2021-08-30 00:45:40.83278
897	640	 GIOVANI BRUCE DA SILVA	2009-09-16	Masculino	590213997	69794209399	\N	(54)9614-7370	(54)3291-7487	\N	Ensino Técnico Incompleto	\N	Ensino médio Incomplento	Pardos	Nenhuma	Ônibus	20 Km	Não	Aprovado	Concluida	2021-01-21	703	2021-08-30 00:45:40.83278
898	647	 OTTAVIO AUGUSTO FRANSCESCHINI	2009-07-26	Masculino	600445388	13523904050	\N	(54)3291-2683	(54)3291-1725	\N	Ensino médio Completo	\N	Ensino fundamental Incomplento	Pardos	Nenhuma	A pé	1 Km	Não	Aprovado	Concluida	2021-01-14	703	2021-08-30 00:45:40.83278
899	648	 BRUNA VANIN VIEIRA	2009-06-05	Feminino	706543262	13595044425	\N	(54)3291-3306	(54)9115-7223	\N	Ensino médio Completo	\N	Ensino Técnico Completo	Brancos	Nenhuma	Carro	15 Km	Não	Reprovou	Pendente	2021-01-14	703	2021-08-30 00:45:40.83278
900	652	 FRANCIELI F. CASAGRANDA	2009-04-14	Feminino	364456807	97863343135	\N	(54)9242-1155	(54)3291-3263	\N	Ensino Técnico Incompleto	\N	Ensino médio Incomplento	Pardos	Nenhuma	Ônibus	15 Km	Não	Pendente	Concluida	2021-01-19	703	2021-08-30 00:45:40.83278
901	653	 VERA SLONGO FONGARO	2009-05-19	Feminino	568970184	95942630176	\N	(54)9196-1976	(54)3291-2769	\N	Ensino Técnico Completo	\N	Ensino médio Completo	Amarelos	Nenhuma	Ônibus	30 Km	Não	Aprovado	Concluida	2021-01-18	703	2021-08-30 00:45:40.83278
902	655	 JEAN FRANCISCO PEROZZO MARCARELLO	2009-12-22	Masculino	479922967	98526101454	\N	(54)9184-0492	(54)3291-3459	\N	Ensino fundamental Completo	\N	Ensino Técnico Completo	Brancos	Deficiência visual	Carro	15 Km	Sim	Aprovado	Concluida	2021-01-28	703	2021-08-30 00:45:40.83278
903	667	 EDIANE REGINA DE SOUZA	2009-03-07	Feminino	378265341	79259302085	\N	(54)9949-6094	(54)3291-7071	\N	Ensino Técnico Completo	\N	Ensino fundamental Incomplento	Indígenas	Deficiência motora	Ônibus	5 Km	Não	Aprovado	Concluida	2021-01-20	703	2021-08-30 00:45:40.83278
904	672	 MORGANA CARDOSO ALVES	2009-04-25	Feminino	896192522	38355304921	\N	(54)9673-9703	(54)9602-5601	\N	Ensino superior Incompleto	\N	Ensino Técnico Incompleto	Pardos	Deficiência auditiva	Ônibus	15 Km	Não	Reprovou	Concluida	2021-01-20	703	2021-08-30 00:45:40.83278
905	677	 GIOVANI CARDOSO	2009-10-14	Masculino	304872033	81478978744	\N	(11)1111-1111	(54)9990-6956	\N	Ensino superior Completo	\N	Ensino Técnico Incompleto	Pardos	Deficiência auditiva	A pé	5 Km	Não	Aprovado	Pendente	2021-01-31	703	2021-08-30 00:45:40.83278
906	679	 MARCOS JOÃO RIZZON	2009-02-09	Masculino	541178201	45759694302	\N	(54)3291-3292	(54)9659-0789	\N	Ensino médio Completo	\N	Ensino superior Completo	Brancos	Nenhuma	A pé	15 Km	Não	Aprovado	Concluida	2021-01-16	703	2021-08-30 00:45:40.83278
907	682	 NUBIA TELES PEDROSO	2009-05-11	Feminino	824736696	88287178724	\N	(54)9601-1873	(54)9672-0530	\N	Ensino médio Incomplento	\N	Ensino médio Completo	Pardos	Nenhuma	Ônibus	20 Km	Não	Aprovado	Concluida	2021-01-15	703	2021-08-30 00:45:40.83278
908	684	 CAROLINA RODRIGUES BIASUZ	2009-07-05	Feminino	275114374	90454810479	\N	(54)9931-8929	\N	\N	Ensino Técnico Incompleto	\N	Ensino Técnico Completo	Pardos	Deficiência visual	Carro	10 Km	Não	Reprovou	Concluida	2021-01-26	703	2021-08-30 00:45:40.83278
909	690	 JOÃO PEDRO DA FONSECA MOTA	2008-09-21	Masculino	844937953	44107151465	\N	(54)8103-3183	(54)9666-6188	\N	Ensino Técnico Completo	\N	Ensino fundamental Completo	Brancos	Nenhuma	Carro	10 Km	Não	Aprovado	Concluida	2021-01-17	803	2021-08-30 00:45:40.83278
910	691	 GREICE MACIEL DA ROSA	2008-01-15	Feminino	729030872	69719121318	\N	(54)9616-5655	(54)9694-5598	\N	Ensino Técnico Completo	\N	Ensino fundamental Incomplento	Amarelos	Nenhuma	Ônibus	20 Km	Não	Aprovado	Pendente	2021-01-28	803	2021-08-30 00:45:40.83278
911	697	 DIOGO GOULARTE POSSA	2008-05-17	Masculino	292816384	75242524659	\N	(54)9912-6124	(54)3235-1653	\N	Ensino fundamental Incomplento	\N	Ensino superior Completo	Indígenas	Nenhuma	Carro	5 Km	Não	Aprovado	Concluida	2021-01-24	803	2021-08-30 00:45:40.83278
912	699	 ROSANE MARIA BONI	2008-05-16	Masculino	411556324	47538031561	\N	(54)9153-9190	(54)9108-6786	\N	Ensino fundamental Completo	\N	Ensino superior Completo	Brancos	Nenhuma	A pé	20 Km	Não	Aprovado	Concluida	2021-01-27	803	2021-08-30 00:45:40.83278
913	700	 STEFANIE CARVALHO PEREIRA	2008-05-09	Feminino	392535955	92793337962	\N	(54)9153-9190	(54)3280-1125	\N	Ensino Técnico Completo	\N	Ensino fundamental Incomplento	Brancos	Nenhuma	Carro	10 Km	Não	Pendente	Concluida	2021-01-29	803	2021-08-30 00:45:40.83278
914	713	ANTENOR ADAO PAIM	2008-01-31	Masculino	668571177	24860190691	\N	(54)9620-0621	(54)9667-8483	\N	Ensino superior Incompleto	\N	Ensino médio Completo	Brancos	Nenhuma	Moto	20 Km	Não	Pendente	Concluida	2021-01-20	803	2021-08-30 00:45:40.83278
915	714	EMANUEL MASCARELLO	2008-04-22	Masculino	584826285	14287926049	\N	(54)3291-7478	(54)9209-2838	\N	Ensino superior Completo	\N	Ensino Técnico Incompleto	Pardos	Nenhuma	Ônibus	20 Km	Não	Aprovado	Concluida	2021-02-05	803	2021-08-30 00:45:40.83278
916	715	EDUARDO COMIOTTO	2008-01-12	Masculino	617748398	48652802758	\N	(54)9944-8972	(54)3280-1040	\N	Ensino médio Incomplento	\N	Ensino fundamental Completo	Pretos	Deficiência motora	Bicicleta	30 Km	Não	Aprovado	Concluida	2021-02-04	803	2021-08-30 00:45:40.83278
917	719	OTÁVIO NUNES	2008-04-03	Masculino	383237309	45308655519	\N	(54)9629-1372	(54)9698-8688	\N	Ensino superior Incompleto	\N	Ensino fundamental Incomplento	Brancos	Nenhuma	Carro	1 Km	Não	Aprovado	Concluida	2021-01-14	803	2021-08-30 00:45:40.83278
918	720	ARTHUR HENRIQUE SIQUEIRA DUARTE	2008-02-22	Masculino	202379870	80229197623	\N	(54)3267-8032	\N	\N	Ensino superior Incompleto	\N	Ensino superior Incompleto	Pardos	Nenhuma	Ônibus	1 Km	Não	Aprovado	Concluida	2021-02-03	803	2021-08-30 00:45:40.83278
919	722	EMILI DAL'LAGO	2008-02-22	Feminino	170959195	31124242210	\N	(54)9171-9172	(54)9704-1158	\N	Ensino superior Incompleto	\N	Ensino superior Incompleto	Pretos	Nenhuma	Carro	1 Km	Sim	Aprovado	Concluida	2021-01-27	803	2021-08-30 00:45:40.83278
920	730	KELLY CARRARO	2008-02-01	Feminino	172362473	75253269444	\N	(54)9138-0088	(54)9921-0298	\N	Ensino superior Incompleto	\N	Ensino superior Completo	Brancos	Nenhuma	A pé	10 Km	Não	Aprovado	Concluida	2021-01-26	803	2021-08-30 00:45:40.83278
921	733	ADRIANA SARTORI	2008-07-24	Feminino	463139962	35827185601	\N	(54)9251-8920	(54)9130-6005	\N	Ensino superior Incompleto	\N	Ensino Técnico Incompleto	Brancos	Nenhuma	Ônibus	1 Km	Não	Reprovou	Concluida	2021-02-04	803	2021-08-30 00:45:40.83278
922	736	GUSTAVO PENCA	2008-10-01	Masculino	801835136	78859503535	\N	(54)9125-2782	(  )    -	\N	Ensino médio Completo	\N	Ensino médio Completo	Brancos	Nenhuma	Bicicleta	30 Km	Sim	Aprovado	Pendente	2021-01-11	803	2021-08-30 00:45:40.83278
923	737	MARIA EDUARDA FABBRIS	2008-09-16	Feminino	875090804	61385662486	\N	(54)9658-1833	(54)9176-3971	\N	Ensino Técnico Completo	\N	Ensino Técnico Incompleto	Pretos	Deficiência visual	Ônibus	15 Km	Não	Aprovado	Concluida	2021-01-10	803	2021-08-30 00:45:40.83278
924	740	ARTHUR ASTOLFI RODRIGUES	2008-07-25	Masculino	763971554	42717895612	\N	(54)3291-2030	(54)9671-8029	\N	Ensino Técnico Completo	\N	Ensino fundamental Incomplento	Brancos	Nenhuma	Ônibus	30 Km	Sim	Aprovado	Concluida	2021-01-17	803	2021-08-30 00:45:40.83278
925	747	MISAEL BORGES ZUANAZZI	2007-02-12	Masculino	863672262	44960212196	\N	(54)3291-2661	(54)9641-3822	\N	Ensino Técnico Incompleto	\N	Ensino médio Completo	Pretos	Nenhuma	Carro	15 Km	Sim	Aprovado	Concluida	2021-01-16	903	2021-08-30 00:45:40.83278
926	751	CAROLINA PIMEMENTEL SILVA	2007-01-16	Feminino	270238451	91589455821	\N	(54)3291-7195	(54)9197-1955	\N	Ensino médio Incomplento	\N	Ensino fundamental Completo	Amarelos	Nenhuma	Ônibus	20 Km	Não	Aprovado	Pendente	2021-01-30	903	2021-08-30 00:45:40.83278
927	752	CARLOS EDUARDO MICHELLIN	2007-04-03	Masculino	229559399	30009527298	\N	(54)9602-5505	(54)3291-3721	\N	Ensino superior Completo	\N	Ensino médio Incomplento	Amarelos	Nenhuma	A pé	1 Km	Não	Aprovado	Concluida	2021-01-14	903	2021-08-30 00:45:40.83278
928	757	LUIZ FERNANDO PEROZZO MASCARELLO	2007-07-30	Masculino	889932686	25287536195	\N	(54)9989-9168	(54)9193-2300	\N	Ensino fundamental Completo	\N	Ensino fundamental Incomplento	Brancos	Nenhuma	A pé	1 Km	Não	Aprovado	Concluida	2021-01-23	903	2021-08-30 00:45:40.83278
929	758	VAGNER DALL'AGNO	2007-05-29	Masculino	440922638	70867738351	\N	(54)8127-2304	(54)9671-8029	\N	Ensino fundamental Completo	\N	Ensino Técnico Completo	Brancos	Nenhuma	Ônibus	10 Km	Não	Aprovado	Concluida	2021-01-16	903	2021-08-30 00:45:40.83278
930	760	ANA SÁRA PARIZZOTTO DA SILVA	2007-10-18	Masculino	322675933	41457660110	\N	(54)9195-0947	(54)9182-9947	\N	Ensino Técnico Completo	\N	Ensino Técnico Completo	Brancos	Nenhuma	Moto	30 Km	Não	Reprovou	Concluida	2021-01-14	903	2021-08-30 00:45:40.83278
931	762	GABRIEL ANTÔNIO DOS REIS SILVA	2007-04-30	Masculino	802142967	54768660392	\N	(54)9669-8782	(54)9133-5631	\N	Ensino médio Incomplento	\N	Ensino fundamental Incomplento	Brancos	Deficiência motora	Ônibus	20 Km	Não	Pendente	Concluida	2021-01-11	903	2021-08-30 00:45:40.83278
932	763	EDUARDA CASTILHOS DE ALMEIDA	2007-08-11	Feminino	586290584	53504139280	\N	(54)9658-1833	(54)9111-2416	\N	Ensino superior Incompleto	\N	Ensino fundamental Incomplento	Pardos	Deficiência auditiva	A pé	30 Km	Não	Aprovado	Concluida	2021-01-28	903	2021-08-30 00:45:40.83278
933	779	ALEXANDRE RIZZON MENEGUZZO	2007-05-09	Masculino	450637948	82931756621	\N	(58)8128-9684	(54)3291-1421	\N	Ensino fundamental Incomplento	\N	Ensino médio Incomplento	Brancos	Nenhuma	A pé	10 Km	Não	Aprovado	Concluida	2021-01-16	903	2021-08-30 00:45:40.83278
934	785	ANDREI GIOTTI	2007-01-28	Masculino	964392971	53723187863	\N	(54)9959-2094	(54)9638-0031	\N	Ensino Técnico Incompleto	\N	Ensino superior Incompleto	Brancos	Deficiência auditiva	Carro	10 Km	Não	Pendente	Pendente	2021-01-18	903	2021-08-30 00:45:40.83278
935	789	VICENTE BORGHETTI SBABO	2007-06-05	Masculino	371644862	33686352349	\N	(54)3291-4303	(54)9959-5123	\N	Ensino Técnico Completo	\N	Ensino fundamental Incomplento	Pardos	Nenhuma	Ônibus	30 Km	Não	Aprovado	Concluida	2021-01-26	903	2021-08-30 00:45:40.83278
936	793	LUANA CAROLINE BACK	2007-11-24	Feminino	248789056	88819248719	\N	(54)9602-4110	(54)3291-3688	\N	Ensino Técnico Incompleto	\N	Ensino Técnico Completo	Brancos	Nenhuma	Ônibus	20 Km	Não	Aprovado	Concluida	2021-02-07	903	2021-08-30 00:45:40.83278
937	795	CAROLINE ONZI GOMES	2007-11-02	Feminino	566566419	53569983516	\N	(54)9603-2677	(54)9922-1272	\N	Ensino superior Completo	\N	Ensino superior Incompleto	Indígenas	Nenhuma	A pé	1 Km	Não	Aprovado	Concluida	2021-01-20	903	2021-08-30 00:45:40.83278
938	796	ARIANE BRUNELLO	2007-10-05	Masculino	913201250	37269815497	\N	(54)9134-4156	(54)9997-9784	\N	Ensino fundamental Completo	\N	Ensino fundamental Completo	Brancos	Nenhuma	A pé	10 Km	Não	Reprovou	Pendente	2021-01-18	903	2021-08-30 00:45:40.83278
939	798	GISELA PASIN	2007-12-03	Feminino	329385500	23351563649	\N	(54)8151-1209	(54)9705-5579	\N	Ensino fundamental Completo	\N	Ensino médio Incomplento	Pardos	Deficiência auditiva	A pé	15 Km	Não	Aprovado	Concluida	2021-01-17	903	2021-08-30 00:45:40.83278
940	799	EDER DE OLIVEIRA SOARES	2007-10-30	Masculino	307950233	49946294180	\N	(54)9911-0259	(54)9633-6702	\N	Ensino fundamental Incomplento	\N	Ensino superior Completo	Pardos	Deficiência visual	Carro	15 Km	Não	Pendente	Concluida	2021-01-14	903	2021-08-30 00:45:40.83278
941	807	BARBARA DA FONSECA	2006-01-09	Feminino	723721672	40870850705	\N	(54)9902-9293	(54)9197-7596	\N	Ensino Técnico Completo	\N	Ensino Técnico Incompleto	Indígenas	Deficiência mental	Ônibus	15 Km	Sim	Pendente	Concluida	2021-01-16	M104	2021-08-30 00:45:40.83278
942	809	ROGÉRIO JÚNIOR RIZZON	2006-11-08	Masculino	262230785	70488873087	\N	(54)9157-8338	(54)3291-5166	\N	Ensino médio Incomplento	\N	Ensino superior Incompleto	Pardos	Nenhuma	A pé	5 Km	Não	Aprovado	Concluida	2021-01-16	M104	2021-08-30 00:45:40.83278
943	810	TIÉRI TELLES PEDROSO	2006-09-29	Feminino	169303676	76873473707	\N	(54)9903-0613	(54)9947-7456	\N	Ensino Técnico Completo	\N	Ensino Técnico Completo	Brancos	Nenhuma	A pé	10 Km	Não	Aprovado	Concluida	2021-01-12	M104	2021-08-30 00:45:40.83278
944	812	GRACIELE SCOPEL	2006-09-18	Feminino	505696402	29218083782	\N	(54)9244-5604	(54)9928-0407	\N	Ensino Técnico Completo	\N	Ensino fundamental Incomplento	Brancos	Nenhuma	Ônibus	15 Km	Sim	Pendente	Concluida	2021-01-24	M104	2021-08-30 00:45:40.83278
945	821	AUGUSTO PESSINI	2006-01-20	Masculino	732566869	40374789523	\N	(54)3291-1913	(54)3291-3374	\N	Ensino médio Completo	\N	Ensino médio Incomplento	Pretos	Nenhuma	Ônibus	20 Km	Não	Aprovado	Pendente	2021-01-24	M104	2021-08-30 00:45:40.83278
946	825	CHRISTIAN POSSO DA SILVA	2006-10-16	Feminino	916676188	43219385441	\N	(54)9992-8969	(54)3291-5190	\N	Ensino médio Incomplento	\N	Ensino fundamental Incomplento	Amarelos	Nenhuma	Moto	10 Km	Não	Pendente	Concluida	2021-01-26	M104	2021-08-30 00:45:40.83278
947	832	ADALBERTO ANDRÉ DOS SANTOS JUNIOR	2006-03-11	Feminino	536553883	93388240715	\N	32913437	(54)9611-2906	\N	Ensino superior Completo	\N	Ensino Técnico Incompleto	Pretos	Nenhuma	A pé	1 Km	Não	Pendente	Concluida	2021-02-06	M104	2021-08-30 00:45:40.83278
948	837	CAROLINA SIMIONI BORGES	2006-08-08	Feminino	691831639	78222693510	\N	(54)9980-8528	(54)3267-8011	\N	Ensino médio Completo	\N	Ensino fundamental Completo	Pardos	Nenhuma	Carro	20 Km	Não	Reprovou	Concluida	2021-01-14	M104	2021-08-30 00:45:40.83278
949	839	EZEQUIEL DA SILVA SOARES MINICH	2006-11-23	Feminino	819877473	82505519086	\N	(11)1111-1111	(54)3291-2688	\N	Ensino Técnico Completo	\N	Ensino Técnico Incompleto	Brancos	Nenhuma	A pé	5 Km	Não	Aprovado	Concluida	2021-01-15	M104	2021-08-30 00:45:40.83278
950	845	MEL FERREIRA	2006-06-08	Feminino	291557386	12631108017	\N	(54)9010-5357	(54)9600-0808	\N	Ensino superior Incompleto	\N	Ensino Técnico Completo	Indígenas	Nenhuma	A pé	10 Km	Não	Aprovado	Concluida	2021-01-21	M104	2021-08-30 00:45:40.83278
951	848	TAYANE PERES GONÇAVES	2006-06-11	Feminino	410377410	64750668367	\N	(54)9928-6331	(54)3291-7561	\N	Ensino superior Incompleto	\N	Ensino Técnico Incompleto	Pardos	Nenhuma	Ônibus	1 Km	Não	Aprovado	Concluida	2021-02-01	M104	2021-08-30 00:45:40.83278
952	851	RENATA CORSO PANASSOL	2006-05-22	Feminino	612885781	67663829355	\N	(54)9126-5959	(54)3291-3731	\N	Ensino superior Incompleto	\N	Ensino Técnico Incompleto	Pardos	Nenhuma	Carro	1 Km	Não	Aprovado	Concluida	2021-02-03	M104	2021-08-30 00:45:40.83278
953	857	KATIELE ZARDO	2006-03-19	Feminino	889972203	36949945826	\N	(54)3291-4084	(54)9101-1644	\N	Ensino médio Completo	\N	Ensino Técnico Completo	Pardos	Nenhuma	Carro	15 Km	Sim	Aprovado	Pendente	2021-01-22	M104	2021-08-30 00:45:40.83278
954	860	BRENDA BIONDO	2006-10-14	Feminino	254779153	12689821307	\N	(54)9634-8623	(54)3291-3362	\N	Ensino médio Completo	\N	Ensino fundamental Incomplento	Pardos	Nenhuma	Ônibus	10 Km	Não	Aprovado	Concluida	2021-01-20	M104	2021-08-30 00:45:40.83278
955	865	ELENA PELLIZZARI GUERRA	2006-05-26	Feminino	323570961	41624368530	\N	(54)3291-4257	(54)9998-2189	\N	Ensino médio Incomplento	\N	Ensino fundamental Completo	Brancos	Deficiência visual	Carro	50 Km	Não	Aprovado	Concluida	2021-02-03	M104	2021-08-30 00:45:40.83278
956	869	NOELCI MARIA ZUANAZZI SCODRO	2006-02-22	Feminino	865670937	66612337994	\N	(54)9961-9194	(54)9132-4763	\N	Ensino Técnico Completo	\N	Ensino superior Incompleto	Pretos	Nenhuma	Ônibus	15 Km	Não	Pendente	Concluida	2021-01-30	M104	2021-08-30 00:45:40.83278
957	874	MARIA LUCIA DOS SANTOS CORRÊA	2005-12-21	Feminino	618952767	75636785934	\N	(54)9187-7745	(54)3291-4865	\N	Ensino fundamental Incomplento	\N	Ensino médio Incomplento	Pretos	Nenhuma	A pé	15 Km	Não	Pendente	Pendente	2021-02-03	M203	2021-08-30 00:45:40.83278
958	879	VITALINA ALVES POSSO	2005-11-07	Feminino	911355086	89100654289	\N	(54)9196-1753	(54)9967-2063	\N	Ensino Técnico Incompleto	\N	Ensino fundamental Completo	Brancos	Nenhuma	Moto	1 Km	Não	Reprovou	Concluida	2021-01-23	M203	2021-08-30 00:45:40.83278
959	883	HENRIQUE RECH GRISON	2005-11-08	Masculino	295100890	36022509315	\N	(54)3291-2819	(54)9241-7978	\N	Ensino Técnico Completo	\N	Ensino Técnico Completo	Brancos	Deficiência visual	Ônibus	20 Km	Não	Aprovado	Concluida	2021-02-02	M203	2021-08-30 00:45:40.83278
960	885	SUELI RODRIGUES DE SOUZA SILVA	2005-03-06	Feminino	517714686	58566867286	\N	(54)9197-2339	(54)9603-3600	\N	Ensino médio Incomplento	\N	Ensino superior Completo	Pardos	Nenhuma	A pé	1 Km	Não	Aprovado	Concluida	2021-01-21	M203	2021-08-30 00:45:40.83278
961	886	MURILO DOS REIS GUERRA	2005-07-24	Masculino	941044010	48506006506	\N	(54)3280-1258	(54)3291-1227	\N	Ensino médio Incomplento	\N	Ensino fundamental Incomplento	Pretos	Nenhuma	A pé	1 Km	Não	Aprovado	Concluida	2021-01-13	M203	2021-08-30 00:45:40.83278
962	889	LAURA ZANARDI SCAIN	2005-12-29	Feminino	689137244	93891181995	\N	(54)3291-6537	(54)3291-3246	\N	Ensino Técnico Completo	\N	Ensino fundamental Incomplento	Amarelos	Nenhuma	A pé	50 Km	Não	Aprovado	Concluida	2021-01-11	M203	2021-08-30 00:45:40.83278
963	894	CAROLINE HENDGES DURANTE	2005-08-03	Feminino	574669051	82657552375	\N	(54)3291-3423	(54)9686-0306	\N	Ensino superior Incompleto	\N	Ensino Técnico Completo	Pardos	Nenhuma	Bicicleta	5 Km	Não	Aprovado	Concluida	2021-01-13	M203	2021-08-30 00:45:40.83278
964	897	ANA ZANELLA CHEMELLO	2005-12-20	Feminino	988960994	27089587698	\N	(54)9619-8125	(54)9901-0834	\N	Ensino superior Incompleto	\N	Ensino médio Completo	Amarelos	Nenhuma	A pé	5 Km	Não	Aprovado	Concluida	2021-01-18	M203	2021-08-30 00:45:40.83278
965	907	CARLOS GABRIEL CARDOSO HENRIQUE	2005-05-01	Masculino	378569262	37664240904	\N	(54)9658-9963	(54)3291-2548	\N	Ensino Técnico Incompleto	\N	Ensino Técnico Incompleto	Amarelos	Nenhuma	A pé	15 Km	Sim	Aprovado	Concluida	2021-01-26	M203	2021-08-30 00:45:40.83278
966	909	RAFAEL BRANCHINI	2005-07-30	Masculino	926791676	69296000940	\N	(54)3291-5159	(54)9612-8138	\N	Ensino Técnico Completo	\N	Ensino médio Incomplento	Brancos	Nenhuma	Carro	50 Km	Não	Aprovado	Pendente	2021-02-03	M203	2021-08-30 00:45:40.83278
967	910	LEONARDO SCODRO	2005-09-28	Masculino	858253003	13395950108	\N	(54)3291-5159	(54)9983-8372	\N	Ensino fundamental Completo	\N	Ensino Técnico Completo	Brancos	Nenhuma	A pé	20 Km	Sim	Aprovado	Concluida	2021-01-16	M203	2021-08-30 00:45:40.83278
968	912	LUCIANO DOLIZETE ZANCHETTA	2005-07-25	Masculino	277536647	20581879511	\N	\N	(54)9168-4004	\N	Ensino Técnico Incompleto	\N	Ensino superior Incompleto	Brancos	Nenhuma	A pé	15 Km	Não	Pendente	Concluida	2021-01-12	M203	2021-08-30 00:45:40.83278
969	913	ARIEL CZICHOCKI	2005-02-07	Masculino	736854225	94727503333	\N	(54)3291-8200	(51)9903-2854	\N	Ensino médio Completo	\N	Ensino fundamental Incomplento	Pretos	Nenhuma	A pé	5 Km	Não	Aprovado	Pendente	2021-01-20	M203	2021-08-30 00:45:40.83278
970	916	MARIA DE LURDES MORESCO	2005-08-29	Feminino	431827283	90795503493	\N	(54)9144-1280	(54)3291-5075	\N	Ensino Técnico Incompleto	\N	Ensino superior Incompleto	Pardos	Deficiência motora	Moto	15 Km	Sim	Aprovado	Pendente	2021-02-06	M203	2021-08-30 00:45:40.83278
971	917	AMANDA SANDI	2005-01-16	Feminino	148551909	23681077431	\N	(54)9161-4960	(54)3291-3417	\N	Ensino fundamental Completo	\N	Ensino médio Incomplento	Amarelos	Nenhuma	Moto	5 Km	Não	Aprovado	Concluida	2021-01-13	M203	2021-08-30 00:45:40.83278
972	918	ANA PAULA CECHINATO SOTORIVA	2005-06-11	Feminino	768187000	14981651016	\N	(54)3291-3347	(54)3291-1081	\N	Ensino Técnico Completo	\N	Ensino fundamental Incomplento	Indígenas	Nenhuma	A pé	1 Km	Não	Aprovado	Concluida	2021-01-25	M203	2021-08-30 00:45:40.83278
973	920	FERNANDA UEZ CASARA	2005-09-09	Feminino	414532420	39048320484	\N	(54)9147-8907	(54)3291-7555	\N	Ensino fundamental Completo	\N	Ensino Técnico Incompleto	Pretos	Nenhuma	Carro	5 Km	Sim	Aprovado	Concluida	2021-01-19	M203	2021-08-30 00:45:40.83278
974	925	ANA JULIA TOMIELLO	2005-02-12	Feminino	435421286	76099818588	\N	(54)9618-7508	(54)3291-3382	\N	Ensino Técnico Completo	\N	Ensino superior Incompleto	Brancos	Nenhuma	Moto	10 Km	Não	Aprovado	Concluida	2021-01-14	M203	2021-08-30 00:45:40.83278
975	932	JOSIANE ASCARI TELES	2005-01-29	Feminino	809485609	55160459679	\N	(54)9236-3617	(54)3291-3552	\N	Ensino superior Completo	\N	Ensino fundamental Incomplento	Pardos	Nenhuma	Ônibus	1 Km	Não	Pendente	Concluida	2021-02-03	M203	2021-08-30 00:45:40.83278
976	933	SARAH COELHO RIZZON	2004-03-21	Feminino	825374279	38467655504	\N	(54)3291-6255	(54)9636-2620	\N	Ensino Técnico Completo	\N	Ensino superior Incompleto	Pardos	Deficiência motora	Ônibus	30 Km	Não	Aprovado	Concluida	2021-01-24	M304	2021-08-30 00:45:40.83278
977	934	JOÃO VITOR SOARES PEREIRA	2004-03-07	Masculino	714909565	56557400615	\N	(54)9115-3737	(54)9436-3044	\N	Ensino fundamental Completo	\N	Ensino fundamental Incomplento	Brancos	Nenhuma	Ônibus	15 Km	Não	Aprovado	Concluida	2021-01-12	M304	2021-08-30 00:45:40.83278
978	939	MARINA GABRIELA DUTRA DOS REIS	2004-02-16	Feminino	153027930	62271664305	\N	(54)9668-4014	(54)9602-4110	\N	Ensino superior Incompleto	\N	Ensino médio Completo	Brancos	Nenhuma	Carro	5 Km	Não	Aprovado	Concluida	2021-02-03	M304	2021-08-30 00:45:40.83278
979	944	GIOVANA POLETO	2004-04-14	Feminino	382634411	75639829533	\N	(54)9167-3111	(54)9173-2696	\N	Ensino Técnico Completo	\N	Ensino superior Incompleto	Brancos	Nenhuma	Carro	10 Km	Não	Pendente	Concluida	2021-01-12	M304	2021-08-30 00:45:40.83278
980	946	LUCAS FOCHESATO SANDRI	2004-12-23	Masculino	991969362	75560310811	\N	(54)3280-1103	(54)9709-2838	\N	Ensino Técnico Completo	\N	Ensino médio Incomplento	Pardos	Nenhuma	A pé	30 Km	Não	Aprovado	Pendente	2021-01-12	M304	2021-08-30 00:45:40.83278
981	947	GUILHERME PEREIRA	2004-03-30	Masculino	862308632	96254135119	\N	(54)3291-4528	(54)3291-4208	\N	Ensino Técnico Incompleto	\N	Ensino fundamental Incomplento	Brancos	Nenhuma	Moto	15 Km	Não	Aprovado	Pendente	2021-01-11	M304	2021-08-30 00:45:40.83278
982	952	GIOVANI FRANCESCHINI	2004-07-03	Masculino	798235844	92763018476	\N	32914890	(54)3291-3242	\N	Ensino superior Incompleto	\N	Ensino fundamental Incomplento	Brancos	Nenhuma	Carro	15 Km	Não	Aprovado	Concluida	2021-01-21	M304	2021-08-30 00:45:40.83278
983	957	MARLON SCAIN	2004-04-29	Masculino	890827058	69026801390	\N	99266027	(54)9166-3113	\N	Ensino Técnico Incompleto	\N	Ensino fundamental Completo	Brancos	Nenhuma	A pé	1 Km	Não	Pendente	Pendente	2021-01-25	M304	2021-08-30 00:45:40.83278
984	960	FABIANO RIZZON	2004-01-26	Masculino	703213914	74670867666	\N	32912760	(54)9208-5162	\N	Ensino Técnico Completo	\N	Ensino Técnico Completo	Pardos	Nenhuma	Carro	5 Km	Não	Aprovado	Concluida	2021-01-30	M304	2021-08-30 00:45:40.83278
985	962	CRISTINE DE ANDRADE MONTANARI	2004-03-20	Feminino	199741256	11375176499	\N	32912267	(54)9175-0209	\N	Ensino Técnico Completo	\N	Ensino superior Completo	Brancos	Nenhuma	Ônibus	1 Km	Não	Aprovado	Concluida	2021-02-08	M304	2021-08-30 00:45:40.83278
986	966	CLAITON JOSÉ ALVES	2004-11-18	Masculino	781900975	23517002426	\N	32801236	(54)9969-2941	\N	Ensino superior Completo	\N	Ensino superior Completo	Pardos	Nenhuma	Carro	20 Km	Não	Aprovado	Concluida	2021-01-13	M304	2021-08-30 00:45:40.83278
987	968	CAROLINE CARDOSO	2004-12-13	Feminino	630568616	85311597123	\N	(54)3291-6124	(54)9999-4318	\N	Ensino médio Incomplento	\N	Ensino médio Completo	Brancos	Deficiência auditiva	Ônibus	1 Km	Não	Reprovou	Concluida	2021-01-22	M304	2021-08-30 00:45:40.83278
988	971	GESIEL CARDOSO DE OLIVEIRA	2004-04-15	Masculino	624191625	96344906277	\N	(54)9168-9426	(54)9603-6005	\N	Ensino médio Incomplento	\N	Ensino Técnico Completo	Pardos	Nenhuma	A pé	15 Km	Não	Aprovado	Concluida	2021-01-17	M304	2021-08-30 00:45:40.83278
989	975	MARQUES PEREIRA	2004-03-16	Masculino	675630401	24059734760	\N	32913478	(54)3291-9172	\N	Ensino médio Completo	\N	Ensino médio Incomplento	Brancos	Nenhuma	A pé	5 Km	Não	Aprovado	Pendente	2021-01-28	M304	2021-08-30 00:45:40.83278
990	976	FRANCINE BUCKELL	2004-07-15	Feminino	674128946	91381716242	\N	91762322	(54)9662-2121	\N	Ensino fundamental Incomplento	\N	Ensino superior Incompleto	Pardos	Nenhuma	Ônibus	1 Km	Não	Aprovado	Concluida	2021-01-27	M304	2021-08-30 00:45:40.83278
991	977	JÉSSICA DOS PASSOS	2004-06-07	Feminino	652712574	57458764691	\N	(54)3291-1763	(54)9208-6212	\N	Ensino Técnico Incompleto	\N	Ensino fundamental Completo	Pardos	Nenhuma	A pé	50 Km	Sim	Aprovado	Concluida	2021-02-07	M304	2021-08-30 00:45:40.83278
992	980	ANDERSON RONEI BRITO CASTILHOS	2004-09-13	Masculino	459952450	69514283517	\N	(54)9979-3744	(54)9900-2185	\N	Ensino Técnico Completo	\N	Ensino médio Incomplento	Brancos	Nenhuma	Ônibus	30 Km	Não	Pendente	Concluida	2021-01-27	M304	2021-08-30 00:45:40.83278
993	982	LAIANE FONGARO	2004-03-14	Feminino	945317414	52953037651	\N	32913051	(54)9929-1790	\N	Ensino médio Completo	\N	Ensino Técnico Incompleto	Indígenas	Deficiência visual	A pé	10 Km	Não	Pendente	Pendente	2021-02-08	M304	2021-08-30 00:45:40.83278
994	989	MAIKON CAMILO PAGNA	2004-06-28	Masculino	942380251	58035315057	\N	(54)9129-6196	(54)9680-8004	\N	Ensino fundamental Incomplento	\N	Ensino superior Completo	Pretos	Nenhuma	Ônibus	5 Km	Não	Pendente	Concluida	2021-01-29	M304	2021-08-30 00:45:40.83278
995	990	ALANA DOS PASSOS	2004-06-05	Feminino	489138622	43508787357	\N	(54)3291-2330	(54)9112-2719	\N	Ensino superior Completo	\N	Ensino Técnico Incompleto	Brancos	Nenhuma	Ônibus	30 Km	Não	Aprovado	Pendente	2021-01-20	M304	2021-08-30 00:45:40.83278
996	992	UALESSON DALL AGNO	2004-02-02	Masculino	780083821	35370997597	\N	(54)3291-4781	(54)3291-1896	\N	Ensino médio Incomplento	\N	Ensino Técnico Incompleto	Brancos	Nenhuma	Ônibus	1 Km	Não	Aprovado	Concluida	2021-02-07	M304	2021-08-30 00:45:40.83278
997	997	RENATO MONTANARI POSSA	2004-05-19	Masculino	579237979	31907153083	\N	(54)9128-2425	(54)9107-8454	\N	Ensino médio Completo	\N	Ensino Técnico Incompleto	Brancos	Nenhuma	A pé	5 Km	Não	Aprovado	Pendente	2021-02-02	M304	2021-08-30 00:45:40.83278
\.


--
-- TOC entry 2927 (class 0 OID 32908)
-- Dependencies: 206
-- Data for Name: tb_deficiencia; Type: TABLE DATA; Schema: relacional; Owner: postgres
--

COPY relacional.tb_deficiencia (id_deficiencia, deficiencia) FROM stdin;
1	Deficiência visual
2	Deficiência mental
3	Deficiência motora
4	Deficiência auditiva
5	Paralisia cerebral
6	Nenhuma
\.


--
-- TOC entry 2939 (class 0 OID 41155)
-- Dependencies: 218
-- Data for Name: tb_matriculas; Type: TABLE DATA; Schema: relacional; Owner: postgres
--

COPY relacional.tb_matriculas (id_matricula, id_aluno, matricula, veio_outra_escola, situacao_anterior, status_matricula, dat_matricula, turma, dat_carga) FROM stdin;
1	200	240	2	3	2	2021-01-23	1	2021-08-30 00:45:40.763983
2	201	244	2	3	2	2021-01-11	1	2021-08-30 00:45:40.763983
3	203	323	2	3	2	2021-01-23	1	2021-08-30 00:45:40.763983
4	204	329	2	3	2	2021-02-06	1	2021-08-30 00:45:40.763983
5	205	340	2	3	2	2021-01-11	1	2021-08-30 00:45:40.763983
6	206	346	2	3	2	2021-01-22	1	2021-08-30 00:45:40.763983
7	207	355	2	3	2	2021-01-29	1	2021-08-30 00:45:40.763983
8	208	387	2	3	2	2021-01-26	1	2021-08-30 00:45:40.763983
9	209	401	2	3	1	2021-01-31	1	2021-08-30 00:45:40.763983
10	211	434	2	3	2	2021-01-29	1	2021-08-30 00:45:40.763983
11	212	495	2	3	1	2021-02-07	1	2021-08-30 00:45:40.763983
12	213	518	2	3	1	2021-01-30	1	2021-08-30 00:45:40.763983
13	214	540	2	3	2	2021-01-12	1	2021-08-30 00:45:40.763983
14	215	547	2	3	1	2021-01-20	1	2021-08-30 00:45:40.763983
15	216	621	1	3	2	2021-01-28	1	2021-08-30 00:45:40.763983
16	217	635	2	3	2	2021-02-05	1	2021-08-30 00:45:40.763983
17	218	657	2	3	2	2021-01-16	1	2021-08-30 00:45:40.763983
18	210	429	2	2	2	2021-02-02	1	2021-08-30 00:45:40.763983
19	199	236	2	1	2	2021-01-31	1	2021-08-30 00:45:40.763983
20	202	275	1	1	2	2021-01-13	1	2021-08-30 00:45:40.763983
21	863	553	2	3	2	2021-01-23	2	2021-08-30 00:45:40.83278
22	864	561	2	3	2	2021-01-30	2	2021-08-30 00:45:40.83278
23	867	567	2	3	1	2021-01-15	2	2021-08-30 00:45:40.83278
24	868	570	2	3	2	2021-02-05	2	2021-08-30 00:45:40.83278
25	869	576	2	3	2	2021-01-28	2	2021-08-30 00:45:40.83278
26	870	577	2	3	2	2021-01-27	2	2021-08-30 00:45:40.83278
27	871	578	2	3	2	2021-02-08	2	2021-08-30 00:45:40.83278
28	874	584	1	3	2	2021-01-21	2	2021-08-30 00:45:40.83278
29	861	550	2	2	2	2021-01-16	2	2021-08-30 00:45:40.83278
30	862	552	2	2	2	2021-01-22	2	2021-08-30 00:45:40.83278
31	872	581	2	2	2	2021-02-08	2	2021-08-30 00:45:40.83278
32	873	583	2	2	2	2021-02-07	2	2021-08-30 00:45:40.83278
33	875	585	2	2	1	2021-02-02	2	2021-08-30 00:45:40.83278
34	865	565	2	1	2	2021-01-31	2	2021-08-30 00:45:40.83278
35	866	566	2	1	2	2021-01-26	2	2021-08-30 00:45:40.83278
36	701	3	2	3	1	2021-01-11	3	2021-08-30 00:45:40.817298
37	702	4	2	3	2	2021-01-20	3	2021-08-30 00:45:40.817298
38	703	8	2	3	2	2021-01-12	3	2021-08-30 00:45:40.817298
39	704	11	2	3	2	2021-01-31	3	2021-08-30 00:45:40.817298
40	705	13	1	3	2	2021-02-07	3	2021-08-30 00:45:40.817298
41	706	21	2	3	2	2021-01-27	3	2021-08-30 00:45:40.817298
42	707	22	2	3	1	2021-01-17	3	2021-08-30 00:45:40.817298
43	708	23	2	3	2	2021-01-30	3	2021-08-30 00:45:40.817298
44	709	25	2	3	1	2021-01-11	3	2021-08-30 00:45:40.817298
45	710	33	2	3	2	2021-01-27	3	2021-08-30 00:45:40.817298
46	712	36	2	3	2	2021-02-01	3	2021-08-30 00:45:40.817298
47	713	37	1	3	2	2021-01-21	3	2021-08-30 00:45:40.817298
48	714	39	2	3	1	2021-02-04	3	2021-08-30 00:45:40.817298
49	717	51	2	3	1	2021-02-04	3	2021-08-30 00:45:40.817298
50	718	52	2	3	2	2021-01-21	3	2021-08-30 00:45:40.817298
51	719	53	2	3	2	2021-01-24	3	2021-08-30 00:45:40.817298
52	720	57	2	3	2	2021-01-13	3	2021-08-30 00:45:40.817298
53	721	61	2	3	2	2021-02-04	3	2021-08-30 00:45:40.817298
54	722	64	2	3	2	2021-02-08	3	2021-08-30 00:45:40.817298
55	723	78	2	3	1	2021-01-26	3	2021-08-30 00:45:40.817298
56	725	87	2	3	1	2021-01-30	3	2021-08-30 00:45:40.817298
57	726	89	2	3	1	2021-01-21	3	2021-08-30 00:45:40.817298
58	711	35	2	2	1	2021-02-08	3	2021-08-30 00:45:40.817298
59	715	44	2	2	2	2021-01-11	3	2021-08-30 00:45:40.817298
60	716	45	2	2	2	2021-01-30	3	2021-08-30 00:45:40.817298
61	724	85	1	2	2	2021-01-21	3	2021-08-30 00:45:40.817298
62	89	569	1	3	2	2021-01-17	4	2021-08-30 00:45:40.763983
63	91	594	2	3	1	2021-02-02	4	2021-08-30 00:45:40.763983
64	92	618	2	3	2	2021-01-23	4	2021-08-30 00:45:40.763983
65	93	649	2	3	1	2021-02-01	4	2021-08-30 00:45:40.763983
66	94	675	2	3	1	2021-01-24	4	2021-08-30 00:45:40.763983
67	95	681	2	3	2	2021-01-29	4	2021-08-30 00:45:40.763983
68	96	698	2	3	2	2021-01-13	4	2021-08-30 00:45:40.763983
69	98	705	2	3	2	2021-01-11	4	2021-08-30 00:45:40.763983
70	99	724	2	3	1	2021-01-21	4	2021-08-30 00:45:40.763983
71	100	755	2	3	2	2021-02-03	4	2021-08-30 00:45:40.763983
72	101	768	2	3	1	2021-01-19	4	2021-08-30 00:45:40.763983
73	102	781	1	3	2	2021-01-11	4	2021-08-30 00:45:40.763983
74	103	784	2	3	2	2021-01-21	4	2021-08-30 00:45:40.763983
75	104	786	2	3	1	2021-01-18	4	2021-08-30 00:45:40.763983
76	105	801	2	3	2	2021-02-04	4	2021-08-30 00:45:40.763983
77	106	803	2	3	2	2021-01-12	4	2021-08-30 00:45:40.763983
78	107	831	2	3	1	2021-02-06	4	2021-08-30 00:45:40.763983
79	108	876	2	3	2	2021-01-11	4	2021-08-30 00:45:40.763983
80	110	892	1	3	2	2021-01-28	4	2021-08-30 00:45:40.763983
81	111	901	2	3	2	2021-01-26	4	2021-08-30 00:45:40.763983
82	113	937	2	3	2	2021-02-07	4	2021-08-30 00:45:40.763983
83	114	941	2	3	1	2021-01-13	4	2021-08-30 00:45:40.763983
84	90	588	2	2	2	2021-02-07	4	2021-08-30 00:45:40.763983
85	97	704	2	2	1	2021-02-04	4	2021-08-30 00:45:40.763983
86	109	882	2	2	1	2021-02-06	4	2021-08-30 00:45:40.763983
87	112	903	2	2	1	2021-02-01	4	2021-08-30 00:45:40.763983
88	115	985	2	1	2	2021-01-13	4	2021-08-30 00:45:40.763983
89	878	591	2	3	2	2021-02-05	5	2021-08-30 00:45:40.83278
90	880	595	2	3	2	2021-02-04	5	2021-08-30 00:45:40.83278
91	881	597	2	3	2	2021-02-02	5	2021-08-30 00:45:40.83278
92	882	598	2	3	2	2021-01-26	5	2021-08-30 00:45:40.83278
93	883	599	1	3	2	2021-01-30	5	2021-08-30 00:45:40.83278
94	884	608	2	3	2	2021-02-08	5	2021-08-30 00:45:40.83278
95	886	610	2	3	2	2021-01-15	5	2021-08-30 00:45:40.83278
96	888	613	1	3	2	2021-02-06	5	2021-08-30 00:45:40.83278
97	889	616	1	3	2	2021-01-24	5	2021-08-30 00:45:40.83278
98	890	617	2	3	1	2021-01-19	5	2021-08-30 00:45:40.83278
99	891	620	2	3	2	2021-01-29	5	2021-08-30 00:45:40.83278
100	877	590	2	2	2	2021-01-15	5	2021-08-30 00:45:40.83278
101	879	592	1	2	2	2021-01-29	5	2021-08-30 00:45:40.83278
102	885	609	2	2	2	2021-01-21	5	2021-08-30 00:45:40.83278
103	887	611	2	2	2	2021-01-19	5	2021-08-30 00:45:40.83278
104	876	589	2	1	2	2021-01-17	5	2021-08-30 00:45:40.83278
105	309	351	2	3	2	2021-01-27	6	2021-08-30 00:45:40.803379
106	310	356	2	3	2	2021-01-18	6	2021-08-30 00:45:40.803379
107	311	385	1	3	2	2021-02-01	6	2021-08-30 00:45:40.803379
108	312	405	2	3	1	2021-01-26	6	2021-08-30 00:45:40.803379
109	313	447	2	3	2	2021-01-25	6	2021-08-30 00:45:40.803379
110	314	462	2	3	2	2021-01-17	6	2021-08-30 00:45:40.803379
111	315	474	2	3	2	2021-02-08	6	2021-08-30 00:45:40.803379
112	316	483	1	3	2	2021-01-27	6	2021-08-30 00:45:40.803379
113	317	491	2	3	2	2021-01-22	6	2021-08-30 00:45:40.803379
114	318	494	2	3	2	2021-01-29	6	2021-08-30 00:45:40.803379
115	319	503	2	3	2	2021-01-21	6	2021-08-30 00:45:40.803379
116	320	508	2	3	2	2021-01-12	6	2021-08-30 00:45:40.803379
117	321	512	2	3	2	2021-01-29	6	2021-08-30 00:45:40.803379
118	322	519	1	3	1	2021-01-15	6	2021-08-30 00:45:40.803379
119	323	523	2	3	2	2021-02-02	6	2021-08-30 00:45:40.803379
120	324	529	2	3	1	2021-01-27	6	2021-08-30 00:45:40.803379
121	327	542	2	3	2	2021-01-16	6	2021-08-30 00:45:40.803379
122	328	555	2	3	2	2021-02-04	6	2021-08-30 00:45:40.803379
123	326	536	1	2	1	2021-01-20	6	2021-08-30 00:45:40.803379
124	325	535	1	1	2	2021-02-02	6	2021-08-30 00:45:40.803379
125	781	261	2	3	2	2021-01-12	7	2021-08-30 00:45:40.83278
126	783	270	2	3	2	2021-02-04	7	2021-08-30 00:45:40.83278
127	784	272	2	3	2	2021-01-29	7	2021-08-30 00:45:40.83278
128	786	291	2	3	2	2021-02-03	7	2021-08-30 00:45:40.83278
129	787	293	2	3	2	2021-01-26	7	2021-08-30 00:45:40.83278
130	788	296	2	3	2	2021-02-04	7	2021-08-30 00:45:40.83278
131	789	297	2	3	2	2021-01-20	7	2021-08-30 00:45:40.83278
132	791	300	2	3	2	2021-01-27	7	2021-08-30 00:45:40.83278
133	793	302	2	3	2	2021-01-19	7	2021-08-30 00:45:40.83278
134	794	304	2	3	2	2021-01-15	7	2021-08-30 00:45:40.83278
135	795	308	2	3	1	2021-01-18	7	2021-08-30 00:45:40.83278
136	792	301	2	2	2	2021-01-17	7	2021-08-30 00:45:40.83278
137	782	262	1	1	2	2021-01-15	7	2021-08-30 00:45:40.83278
138	785	283	1	1	2	2021-01-13	7	2021-08-30 00:45:40.83278
139	790	299	2	1	2	2021-02-06	7	2021-08-30 00:45:40.83278
140	796	309	1	1	2	2021-02-01	7	2021-08-30 00:45:40.83278
141	670	412	2	3	2	2021-01-23	8	2021-08-30 00:45:40.817298
142	671	456	1	3	2	2021-01-11	8	2021-08-30 00:45:40.817298
143	673	467	2	3	2	2021-02-06	8	2021-08-30 00:45:40.817298
144	674	482	2	3	2	2021-01-11	8	2021-08-30 00:45:40.817298
145	675	507	2	3	2	2021-01-19	8	2021-08-30 00:45:40.817298
146	676	534	2	3	2	2021-02-07	8	2021-08-30 00:45:40.817298
147	678	568	2	3	2	2021-01-19	8	2021-08-30 00:45:40.817298
148	679	572	2	3	2	2021-01-14	8	2021-08-30 00:45:40.817298
149	681	596	2	3	1	2021-02-07	8	2021-08-30 00:45:40.817298
150	682	602	2	3	2	2021-01-21	8	2021-08-30 00:45:40.817298
151	684	629	2	3	2	2021-01-24	8	2021-08-30 00:45:40.817298
152	685	663	2	3	2	2021-01-27	8	2021-08-30 00:45:40.817298
153	686	668	2	3	2	2021-01-22	8	2021-08-30 00:45:40.817298
154	687	716	2	3	2	2021-01-15	8	2021-08-30 00:45:40.817298
155	689	802	2	3	2	2021-01-31	8	2021-08-30 00:45:40.817298
156	690	806	2	3	2	2021-01-27	8	2021-08-30 00:45:40.817298
157	691	823	2	3	2	2021-02-06	8	2021-08-30 00:45:40.817298
158	692	828	2	3	2	2021-01-30	8	2021-08-30 00:45:40.817298
159	693	850	2	3	2	2021-01-11	8	2021-08-30 00:45:40.817298
160	695	881	2	3	2	2021-01-15	8	2021-08-30 00:45:40.817298
161	697	930	2	3	1	2021-01-17	8	2021-08-30 00:45:40.817298
162	698	936	2	3	1	2021-01-14	8	2021-08-30 00:45:40.817298
163	672	466	2	2	2	2021-01-21	8	2021-08-30 00:45:40.817298
164	677	562	2	2	2	2021-01-13	8	2021-08-30 00:45:40.817298
165	683	603	2	2	1	2021-01-24	8	2021-08-30 00:45:40.817298
166	688	765	2	2	2	2021-02-02	8	2021-08-30 00:45:40.817298
167	694	868	2	2	2	2021-01-24	8	2021-08-30 00:45:40.817298
168	696	893	2	2	2	2021-02-03	8	2021-08-30 00:45:40.817298
169	699	942	1	2	2	2021-02-05	8	2021-08-30 00:45:40.817298
170	700	984	2	2	1	2021-01-30	8	2021-08-30 00:45:40.817298
171	680	574	2	1	2	2021-01-22	8	2021-08-30 00:45:40.817298
172	959	883	2	3	2	2021-02-02	9	2021-08-30 00:45:40.83278
173	960	885	2	3	2	2021-01-21	9	2021-08-30 00:45:40.83278
174	961	886	2	3	2	2021-01-13	9	2021-08-30 00:45:40.83278
175	962	889	2	3	2	2021-01-11	9	2021-08-30 00:45:40.83278
176	963	894	2	3	2	2021-01-13	9	2021-08-30 00:45:40.83278
177	964	897	2	3	2	2021-01-18	9	2021-08-30 00:45:40.83278
178	965	907	1	3	2	2021-01-26	9	2021-08-30 00:45:40.83278
179	966	909	2	3	1	2021-02-03	9	2021-08-30 00:45:40.83278
180	967	910	1	3	2	2021-01-16	9	2021-08-30 00:45:40.83278
181	969	913	2	3	1	2021-01-20	9	2021-08-30 00:45:40.83278
182	970	916	1	3	1	2021-02-06	9	2021-08-30 00:45:40.83278
183	971	917	2	3	2	2021-01-13	9	2021-08-30 00:45:40.83278
184	972	918	2	3	2	2021-01-25	9	2021-08-30 00:45:40.83278
185	973	920	1	3	2	2021-01-19	9	2021-08-30 00:45:40.83278
186	974	925	2	3	2	2021-01-14	9	2021-08-30 00:45:40.83278
187	957	874	2	2	1	2021-02-03	9	2021-08-30 00:45:40.83278
188	968	912	2	2	2	2021-01-12	9	2021-08-30 00:45:40.83278
189	975	932	2	2	2	2021-02-03	9	2021-08-30 00:45:40.83278
190	958	879	2	1	2	2021-01-23	9	2021-08-30 00:45:40.83278
191	437	580	2	3	2	2021-02-04	10	2021-08-30 00:45:40.803379
192	439	646	1	3	1	2021-01-17	10	2021-08-30 00:45:40.803379
193	440	664	2	3	2	2021-01-23	10	2021-08-30 00:45:40.803379
194	442	692	2	3	2	2021-01-14	10	2021-08-30 00:45:40.803379
195	443	696	2	3	2	2021-01-21	10	2021-08-30 00:45:40.803379
196	444	706	2	3	1	2021-02-04	10	2021-08-30 00:45:40.803379
197	445	709	1	3	2	2021-01-29	10	2021-08-30 00:45:40.803379
198	446	723	2	3	2	2021-01-20	10	2021-08-30 00:45:40.803379
199	447	734	2	3	2	2021-01-27	10	2021-08-30 00:45:40.803379
200	448	754	2	3	1	2021-01-21	10	2021-08-30 00:45:40.803379
201	451	800	1	3	2	2021-01-24	10	2021-08-30 00:45:40.803379
202	452	804	2	3	1	2021-01-15	10	2021-08-30 00:45:40.803379
203	453	805	2	3	2	2021-01-15	10	2021-08-30 00:45:40.803379
204	454	816	2	3	2	2021-01-26	10	2021-08-30 00:45:40.803379
205	455	830	2	3	1	2021-01-13	10	2021-08-30 00:45:40.803379
206	456	840	1	3	2	2021-01-16	10	2021-08-30 00:45:40.803379
207	457	842	2	3	2	2021-01-24	10	2021-08-30 00:45:40.803379
208	458	853	1	3	2	2021-01-27	10	2021-08-30 00:45:40.803379
209	461	875	2	3	1	2021-01-22	10	2021-08-30 00:45:40.803379
210	462	878	2	3	2	2021-01-30	10	2021-08-30 00:45:40.803379
211	464	923	2	3	2	2021-01-15	10	2021-08-30 00:45:40.803379
212	465	931	2	3	2	2021-01-27	10	2021-08-30 00:45:40.803379
213	466	993	2	3	1	2021-01-28	10	2021-08-30 00:45:40.803379
214	467	996	2	3	1	2021-01-16	10	2021-08-30 00:45:40.803379
215	435	546	1	2	2	2021-01-10	10	2021-08-30 00:45:40.803379
216	436	557	2	2	1	2021-01-15	10	2021-08-30 00:45:40.803379
217	438	637	2	2	2	2021-01-21	10	2021-08-30 00:45:40.803379
218	441	685	1	2	2	2021-01-26	10	2021-08-30 00:45:40.803379
219	459	859	2	2	2	2021-02-03	10	2021-08-30 00:45:40.803379
220	463	915	2	2	2	2021-02-05	10	2021-08-30 00:45:40.803379
221	449	756	1	1	2	2021-01-24	10	2021-08-30 00:45:40.803379
222	450	783	2	1	2	2021-01-14	10	2021-08-30 00:45:40.803379
223	460	873	1	1	1	2021-01-29	10	2021-08-30 00:45:40.803379
224	797	318	2	3	1	2021-01-11	11	2021-08-30 00:45:40.83278
225	798	319	2	3	1	2021-02-03	11	2021-08-30 00:45:40.83278
226	799	326	2	3	2	2021-01-10	11	2021-08-30 00:45:40.83278
227	800	327	2	3	2	2021-01-21	11	2021-08-30 00:45:40.83278
228	801	330	2	3	2	2021-01-15	11	2021-08-30 00:45:40.83278
229	802	334	2	3	2	2021-02-08	11	2021-08-30 00:45:40.83278
230	804	341	2	3	2	2021-01-31	11	2021-08-30 00:45:40.83278
231	805	347	2	3	2	2021-02-08	11	2021-08-30 00:45:40.83278
232	806	349	2	3	2	2021-01-24	11	2021-08-30 00:45:40.83278
233	809	366	2	3	2	2021-01-10	11	2021-08-30 00:45:40.83278
234	810	367	2	3	1	2021-02-01	11	2021-08-30 00:45:40.83278
235	811	370	2	3	2	2021-02-07	11	2021-08-30 00:45:40.83278
236	807	357	1	2	2	2021-01-25	11	2021-08-30 00:45:40.83278
237	812	371	2	2	1	2021-02-03	11	2021-08-30 00:45:40.83278
238	803	336	2	1	1	2021-01-21	11	2021-08-30 00:45:40.83278
239	808	364	2	1	2	2021-01-14	11	2021-08-30 00:45:40.83278
240	410	15	2	3	1	2021-01-14	12	2021-08-30 00:45:40.803379
241	411	30	2	3	2	2021-01-13	12	2021-08-30 00:45:40.803379
242	413	111	1	3	1	2021-02-04	12	2021-08-30 00:45:40.803379
243	414	126	2	3	2	2021-02-06	12	2021-08-30 00:45:40.803379
244	415	141	2	3	2	2021-01-31	12	2021-08-30 00:45:40.803379
245	416	142	2	3	2	2021-01-20	12	2021-08-30 00:45:40.803379
246	417	227	2	3	2	2021-01-16	12	2021-08-30 00:45:40.803379
247	419	250	2	3	1	2021-01-16	12	2021-08-30 00:45:40.803379
248	420	268	2	3	2	2021-02-03	12	2021-08-30 00:45:40.803379
249	421	276	1	3	2	2021-02-04	12	2021-08-30 00:45:40.803379
250	424	338	2	3	2	2021-01-21	12	2021-08-30 00:45:40.803379
251	425	345	2	3	2	2021-01-12	12	2021-08-30 00:45:40.803379
252	426	348	2	3	2	2021-01-18	12	2021-08-30 00:45:40.803379
253	427	358	2	3	2	2021-01-13	12	2021-08-30 00:45:40.803379
254	428	373	2	3	1	2021-01-11	12	2021-08-30 00:45:40.803379
255	429	432	2	3	1	2021-01-10	12	2021-08-30 00:45:40.803379
256	432	497	1	3	2	2021-01-30	12	2021-08-30 00:45:40.803379
257	433	511	1	3	1	2021-01-13	12	2021-08-30 00:45:40.803379
258	418	232	2	2	2	2021-01-18	12	2021-08-30 00:45:40.803379
259	423	331	2	2	2	2021-01-26	12	2021-08-30 00:45:40.803379
260	430	448	2	2	2	2021-01-26	12	2021-08-30 00:45:40.803379
261	431	493	2	2	2	2021-01-18	12	2021-08-30 00:45:40.803379
262	412	55	2	1	2	2021-01-18	12	2021-08-30 00:45:40.803379
263	422	306	2	1	2	2021-01-21	12	2021-08-30 00:45:40.803379
264	434	545	2	1	2	2021-01-20	12	2021-08-30 00:45:40.803379
265	329	558	2	3	2	2021-01-13	13	2021-08-30 00:45:40.803379
266	330	571	2	3	2	2021-01-18	13	2021-08-30 00:45:40.803379
267	332	614	1	3	2	2021-01-17	13	2021-08-30 00:45:40.803379
268	333	626	2	3	2	2021-01-24	13	2021-08-30 00:45:40.803379
269	334	634	2	3	1	2021-01-27	13	2021-08-30 00:45:40.803379
270	335	643	1	3	2	2021-01-10	13	2021-08-30 00:45:40.803379
271	336	651	2	3	2	2021-01-16	13	2021-08-30 00:45:40.803379
272	337	673	2	3	2	2021-01-23	13	2021-08-30 00:45:40.803379
273	338	708	1	3	2	2021-02-01	13	2021-08-30 00:45:40.803379
274	339	710	2	3	2	2021-01-15	13	2021-08-30 00:45:40.803379
275	340	732	2	3	2	2021-02-05	13	2021-08-30 00:45:40.803379
276	341	790	2	3	2	2021-02-04	13	2021-08-30 00:45:40.803379
277	342	794	2	3	2	2021-01-12	13	2021-08-30 00:45:40.803379
278	343	833	2	3	1	2021-02-01	13	2021-08-30 00:45:40.803379
279	345	861	2	3	2	2021-01-22	13	2021-08-30 00:45:40.803379
280	348	938	2	3	2	2021-01-31	13	2021-08-30 00:45:40.803379
281	349	959	2	3	1	2021-01-24	13	2021-08-30 00:45:40.803379
282	331	587	2	2	2	2021-01-22	13	2021-08-30 00:45:40.803379
283	347	928	1	2	2	2021-01-16	13	2021-08-30 00:45:40.803379
284	344	843	1	1	2	2021-01-13	13	2021-08-30 00:45:40.803379
285	346	891	2	1	2	2021-02-06	13	2021-08-30 00:45:40.803379
286	350	974	2	1	2	2021-02-07	13	2021-08-30 00:45:40.803379
287	351	995	2	1	2	2021-01-25	13	2021-08-30 00:45:40.803379
288	265	481	2	3	2	2021-01-23	14	2021-08-30 00:45:40.803379
289	266	504	2	3	2	2021-01-11	14	2021-08-30 00:45:40.803379
290	267	521	2	3	1	2021-01-27	14	2021-08-30 00:45:40.803379
291	268	559	2	3	2	2021-01-30	14	2021-08-30 00:45:40.803379
292	272	656	2	3	1	2021-01-16	14	2021-08-30 00:45:40.803379
293	273	659	2	3	2	2021-01-30	14	2021-08-30 00:45:40.803379
294	278	858	1	3	2	2021-01-20	14	2021-08-30 00:45:40.803379
295	279	862	2	3	2	2021-01-30	14	2021-08-30 00:45:40.803379
296	281	905	2	3	1	2021-01-23	14	2021-08-30 00:45:40.803379
297	282	906	2	3	2	2021-02-04	14	2021-08-30 00:45:40.803379
298	283	911	2	3	2	2021-01-20	14	2021-08-30 00:45:40.803379
299	285	988	2	3	1	2021-02-03	14	2021-08-30 00:45:40.803379
300	263	449	2	2	2	2021-02-01	14	2021-08-30 00:45:40.803379
301	264	465	2	2	2	2021-02-07	14	2021-08-30 00:45:40.803379
302	270	606	2	2	2	2021-01-14	14	2021-08-30 00:45:40.803379
303	275	693	2	2	2	2021-02-07	14	2021-08-30 00:45:40.803379
304	280	895	2	2	2	2021-01-15	14	2021-08-30 00:45:40.803379
305	262	444	2	1	2	2021-02-06	14	2021-08-30 00:45:40.803379
306	269	601	2	1	1	2021-01-14	14	2021-08-30 00:45:40.803379
307	271	633	2	1	1	2021-01-31	14	2021-08-30 00:45:40.803379
308	274	666	2	1	2	2021-01-27	14	2021-08-30 00:45:40.803379
309	276	759	2	1	2	2021-01-25	14	2021-08-30 00:45:40.803379
310	277	780	2	1	2	2021-01-19	14	2021-08-30 00:45:40.803379
311	284	945	2	1	1	2021-01-25	14	2021-08-30 00:45:40.803379
312	116	28	2	3	2	2021-01-29	15	2021-08-30 00:45:40.763983
313	117	58	2	3	2	2021-02-01	15	2021-08-30 00:45:40.763983
314	119	91	2	3	2	2021-01-13	15	2021-08-30 00:45:40.763983
315	120	102	2	3	2	2021-01-26	15	2021-08-30 00:45:40.763983
316	122	139	2	3	2	2021-01-30	15	2021-08-30 00:45:40.763983
317	123	150	2	3	2	2021-02-01	15	2021-08-30 00:45:40.763983
318	125	178	1	3	1	2021-02-01	15	2021-08-30 00:45:40.763983
319	126	200	2	3	2	2021-02-05	15	2021-08-30 00:45:40.763983
320	130	255	2	3	2	2021-02-02	15	2021-08-30 00:45:40.763983
321	131	266	2	3	2	2021-01-11	15	2021-08-30 00:45:40.763983
322	135	292	2	3	2	2021-02-04	15	2021-08-30 00:45:40.763983
323	118	76	2	2	2	2021-01-23	15	2021-08-30 00:45:40.763983
324	121	106	2	2	2	2021-01-25	15	2021-08-30 00:45:40.763983
325	127	214	1	2	2	2021-01-13	15	2021-08-30 00:45:40.763983
326	128	215	2	2	2	2021-01-31	15	2021-08-30 00:45:40.763983
327	133	287	2	2	2	2021-01-10	15	2021-08-30 00:45:40.763983
328	136	311	2	2	2	2021-02-01	15	2021-08-30 00:45:40.763983
329	124	159	1	1	2	2021-01-27	15	2021-08-30 00:45:40.763983
330	129	230	2	1	2	2021-01-28	15	2021-08-30 00:45:40.763983
331	132	267	2	1	1	2021-02-06	15	2021-08-30 00:45:40.763983
332	134	288	1	1	2	2021-01-31	15	2021-08-30 00:45:40.763983
333	137	312	2	1	2	2021-01-10	15	2021-08-30 00:45:40.763983
334	162	701	2	3	1	2021-01-31	16	2021-08-30 00:45:40.763983
335	163	744	2	3	2	2021-01-19	16	2021-08-30 00:45:40.763983
336	164	749	2	3	2	2021-01-25	16	2021-08-30 00:45:40.763983
337	168	808	2	3	2	2021-01-18	16	2021-08-30 00:45:40.763983
338	169	818	2	3	2	2021-01-15	16	2021-08-30 00:45:40.763983
339	170	836	2	3	2	2021-02-05	16	2021-08-30 00:45:40.763983
340	171	849	2	3	2	2021-01-18	16	2021-08-30 00:45:40.763983
341	174	929	2	3	2	2021-01-28	16	2021-08-30 00:45:40.763983
342	175	935	1	3	1	2021-02-07	16	2021-08-30 00:45:40.763983
343	176	950	2	3	2	2021-01-31	16	2021-08-30 00:45:40.763983
344	177	953	2	3	2	2021-01-17	16	2021-08-30 00:45:40.763983
345	160	676	2	2	1	2021-01-10	16	2021-08-30 00:45:40.763983
346	161	687	1	2	1	2021-02-04	16	2021-08-30 00:45:40.763983
347	165	775	2	2	2	2021-01-27	16	2021-08-30 00:45:40.763983
348	167	791	2	2	2	2021-02-03	16	2021-08-30 00:45:40.763983
349	172	854	2	2	2	2021-01-19	16	2021-08-30 00:45:40.763983
350	178	958	2	2	2	2021-01-20	16	2021-08-30 00:45:40.763983
351	166	777	2	1	2	2021-02-05	16	2021-08-30 00:45:40.763983
352	173	864	2	1	2	2021-01-19	16	2021-08-30 00:45:40.763983
353	179	970	1	1	2	2021-01-14	16	2021-08-30 00:45:40.763983
354	845	489	2	3	2	2021-01-19	17	2021-08-30 00:45:40.83278
355	846	490	2	3	2	2021-01-24	17	2021-08-30 00:45:40.83278
356	848	501	2	3	2	2021-01-31	17	2021-08-30 00:45:40.83278
357	849	505	2	3	2	2021-01-20	17	2021-08-30 00:45:40.83278
358	851	509	2	3	2	2021-01-12	17	2021-08-30 00:45:40.83278
359	852	513	1	3	2	2021-01-11	17	2021-08-30 00:45:40.83278
360	853	514	2	3	2	2021-01-26	17	2021-08-30 00:45:40.83278
361	854	515	2	3	2	2021-01-17	17	2021-08-30 00:45:40.83278
362	855	516	2	3	2	2021-02-01	17	2021-08-30 00:45:40.83278
363	858	533	1	3	2	2021-01-31	17	2021-08-30 00:45:40.83278
364	859	537	1	3	2	2021-02-02	17	2021-08-30 00:45:40.83278
365	860	543	2	3	2	2021-02-05	17	2021-08-30 00:45:40.83278
366	857	522	2	2	1	2021-01-16	17	2021-08-30 00:45:40.83278
367	847	492	2	1	2	2021-01-28	17	2021-08-30 00:45:40.83278
368	850	506	2	1	1	2021-01-27	17	2021-08-30 00:45:40.83278
369	856	517	2	1	2	2021-02-02	17	2021-08-30 00:45:40.83278
370	138	313	2	3	2	2021-01-31	18	2021-08-30 00:45:40.763983
371	142	365	2	3	2	2021-01-27	18	2021-08-30 00:45:40.763983
372	143	392	2	3	1	2021-01-14	18	2021-08-30 00:45:40.763983
373	144	426	2	3	1	2021-01-16	18	2021-08-30 00:45:40.763983
374	146	454	2	3	2	2021-01-23	18	2021-08-30 00:45:40.763983
375	147	455	1	3	1	2021-01-22	18	2021-08-30 00:45:40.763983
376	148	476	2	3	1	2021-01-14	18	2021-08-30 00:45:40.763983
377	149	498	2	3	1	2021-01-23	18	2021-08-30 00:45:40.763983
378	151	560	2	3	2	2021-01-26	18	2021-08-30 00:45:40.763983
379	152	563	2	3	2	2021-01-11	18	2021-08-30 00:45:40.763983
380	153	573	2	3	2	2021-01-11	18	2021-08-30 00:45:40.763983
381	154	582	2	3	2	2021-02-06	18	2021-08-30 00:45:40.763983
382	155	605	2	3	1	2021-01-24	18	2021-08-30 00:45:40.763983
383	156	607	2	3	1	2021-02-06	18	2021-08-30 00:45:40.763983
384	157	642	2	3	1	2021-01-11	18	2021-08-30 00:45:40.763983
385	158	650	2	3	1	2021-01-18	18	2021-08-30 00:45:40.763983
386	159	661	2	3	2	2021-02-05	18	2021-08-30 00:45:40.763983
387	139	317	2	2	2	2021-01-15	18	2021-08-30 00:45:40.763983
388	140	320	2	2	2	2021-02-05	18	2021-08-30 00:45:40.763983
389	141	335	2	2	2	2021-01-14	18	2021-08-30 00:45:40.763983
390	150	526	2	2	2	2021-01-18	18	2021-08-30 00:45:40.763983
391	145	441	2	1	2	2021-01-29	18	2021-08-30 00:45:40.763983
392	754	188	2	3	2	2021-01-18	19	2021-08-30 00:45:40.817298
393	755	189	2	3	2	2021-01-23	19	2021-08-30 00:45:40.817298
394	756	191	2	3	1	2021-01-13	19	2021-08-30 00:45:40.817298
395	757	192	2	3	2	2021-01-30	19	2021-08-30 00:45:40.817298
396	760	202	2	3	2	2021-01-11	19	2021-08-30 00:45:40.817298
397	761	203	2	3	1	2021-02-04	19	2021-08-30 00:45:40.817298
398	762	204	1	3	2	2021-02-01	19	2021-08-30 00:45:40.817298
399	763	206	1	3	1	2021-01-17	19	2021-08-30 00:45:40.817298
400	764	209	2	3	1	2021-01-18	19	2021-08-30 00:45:40.817298
401	765	211	2	3	2	2021-01-24	19	2021-08-30 00:45:40.817298
402	766	218	2	3	2	2021-02-08	19	2021-08-30 00:45:40.817298
403	769	228	2	3	2	2021-02-08	19	2021-08-30 00:45:40.83278
404	770	229	2	3	1	2021-01-17	19	2021-08-30 00:45:40.83278
405	771	231	2	3	2	2021-01-10	19	2021-08-30 00:45:40.83278
406	772	237	2	3	2	2021-01-29	19	2021-08-30 00:45:40.83278
407	773	238	2	3	2	2021-01-29	19	2021-08-30 00:45:40.83278
408	774	239	1	3	2	2021-01-16	19	2021-08-30 00:45:40.83278
409	775	242	2	3	2	2021-01-11	19	2021-08-30 00:45:40.83278
410	776	247	1	3	2	2021-01-25	19	2021-08-30 00:45:40.83278
411	778	249	2	3	2	2021-01-10	19	2021-08-30 00:45:40.83278
412	779	258	2	3	2	2021-01-23	19	2021-08-30 00:45:40.83278
413	780	259	2	3	2	2021-01-13	19	2021-08-30 00:45:40.83278
414	758	194	2	2	2	2021-01-17	19	2021-08-30 00:45:40.817298
415	767	219	2	2	2	2021-02-07	19	2021-08-30 00:45:40.817298
416	777	248	2	2	2	2021-01-19	19	2021-08-30 00:45:40.83278
417	759	198	2	1	2	2021-01-27	19	2021-08-30 00:45:40.817298
418	768	223	2	1	2	2021-02-08	19	2021-08-30 00:45:40.83278
419	646	5	2	3	2	2021-01-13	20	2021-08-30 00:45:40.817298
420	648	18	2	3	2	2021-01-26	20	2021-08-30 00:45:40.817298
421	649	20	2	3	1	2021-01-24	20	2021-08-30 00:45:40.817298
422	650	27	2	3	2	2021-01-30	20	2021-08-30 00:45:40.817298
423	651	32	1	3	2	2021-01-19	20	2021-08-30 00:45:40.817298
424	652	60	2	3	1	2021-01-18	20	2021-08-30 00:45:40.817298
425	653	63	2	3	2	2021-01-11	20	2021-08-30 00:45:40.817298
426	654	94	2	3	2	2021-02-01	20	2021-08-30 00:45:40.817298
427	656	98	2	3	2	2021-02-07	20	2021-08-30 00:45:40.817298
428	658	152	1	3	2	2021-01-10	20	2021-08-30 00:45:40.817298
429	659	197	2	3	1	2021-01-23	20	2021-08-30 00:45:40.817298
430	660	222	1	3	2	2021-01-17	20	2021-08-30 00:45:40.817298
431	663	325	2	3	2	2021-01-13	20	2021-08-30 00:45:40.817298
432	664	339	1	3	1	2021-01-19	20	2021-08-30 00:45:40.817298
433	665	352	2	3	1	2021-01-21	20	2021-08-30 00:45:40.817298
434	666	360	1	3	2	2021-01-28	20	2021-08-30 00:45:40.817298
435	667	378	2	3	2	2021-01-12	20	2021-08-30 00:45:40.817298
436	668	398	2	3	2	2021-02-05	20	2021-08-30 00:45:40.817298
437	669	403	1	3	1	2021-02-05	20	2021-08-30 00:45:40.817298
438	655	97	2	2	1	2021-01-30	20	2021-08-30 00:45:40.817298
439	657	140	2	2	2	2021-02-05	20	2021-08-30 00:45:40.817298
440	661	274	2	2	2	2021-01-21	20	2021-08-30 00:45:40.817298
441	647	9	2	1	2	2021-02-03	20	2021-08-30 00:45:40.817298
442	662	307	2	1	2	2021-01-16	20	2021-08-30 00:45:40.817298
443	909	690	2	3	2	2021-01-17	21	2021-08-30 00:45:40.83278
444	910	691	2	3	1	2021-01-28	21	2021-08-30 00:45:40.83278
445	911	697	2	3	2	2021-01-24	21	2021-08-30 00:45:40.83278
446	912	699	2	3	2	2021-01-27	21	2021-08-30 00:45:40.83278
447	915	714	2	3	2	2021-02-05	21	2021-08-30 00:45:40.83278
448	916	715	2	3	2	2021-02-04	21	2021-08-30 00:45:40.83278
449	917	719	2	3	2	2021-01-14	21	2021-08-30 00:45:40.83278
450	918	720	2	3	2	2021-02-03	21	2021-08-30 00:45:40.83278
451	919	722	1	3	2	2021-01-27	21	2021-08-30 00:45:40.83278
452	920	730	2	3	2	2021-01-26	21	2021-08-30 00:45:40.83278
453	922	736	1	3	1	2021-01-11	21	2021-08-30 00:45:40.83278
454	923	737	2	3	2	2021-01-10	21	2021-08-30 00:45:40.83278
455	924	740	1	3	2	2021-01-17	21	2021-08-30 00:45:40.83278
456	913	700	2	2	2	2021-01-29	21	2021-08-30 00:45:40.83278
457	914	713	2	2	2	2021-01-20	21	2021-08-30 00:45:40.83278
458	921	733	2	1	2	2021-02-04	21	2021-08-30 00:45:40.83278
459	942	809	2	3	2	2021-01-16	22	2021-08-30 00:45:40.83278
460	943	810	2	3	2	2021-01-12	22	2021-08-30 00:45:40.83278
461	945	821	2	3	1	2021-01-24	22	2021-08-30 00:45:40.83278
462	949	839	2	3	2	2021-01-15	22	2021-08-30 00:45:40.83278
463	950	845	2	3	2	2021-01-21	22	2021-08-30 00:45:40.83278
464	951	848	2	3	2	2021-02-01	22	2021-08-30 00:45:40.83278
465	952	851	2	3	2	2021-02-03	22	2021-08-30 00:45:40.83278
466	953	857	1	3	1	2021-01-22	22	2021-08-30 00:45:40.83278
467	954	860	2	3	2	2021-01-20	22	2021-08-30 00:45:40.83278
468	955	865	2	3	2	2021-02-03	22	2021-08-30 00:45:40.83278
469	941	807	1	2	2	2021-01-16	22	2021-08-30 00:45:40.83278
470	944	812	1	2	2	2021-01-24	22	2021-08-30 00:45:40.83278
471	946	825	2	2	2	2021-01-26	22	2021-08-30 00:45:40.83278
472	947	832	2	2	2	2021-02-06	22	2021-08-30 00:45:40.83278
473	956	869	2	2	2	2021-01-30	22	2021-08-30 00:45:40.83278
474	948	837	2	1	2	2021-01-14	22	2021-08-30 00:45:40.83278
475	286	7	2	3	2	2021-01-13	23	2021-08-30 00:45:40.803379
476	287	24	2	3	2	2021-01-11	23	2021-08-30 00:45:40.803379
477	288	34	2	3	2	2021-01-13	23	2021-08-30 00:45:40.803379
478	289	43	2	3	2	2021-01-15	23	2021-08-30 00:45:40.803379
479	292	62	2	3	2	2021-02-05	23	2021-08-30 00:45:40.803379
480	293	68	2	3	2	2021-01-30	23	2021-08-30 00:45:40.803379
481	295	88	2	3	2	2021-01-26	23	2021-08-30 00:45:40.803379
482	297	131	2	3	2	2021-01-27	23	2021-08-30 00:45:40.803379
483	298	147	2	3	2	2021-01-30	23	2021-08-30 00:45:40.803379
484	299	187	1	3	2	2021-01-12	23	2021-08-30 00:45:40.803379
485	300	190	2	3	2	2021-01-20	23	2021-08-30 00:45:40.803379
486	301	205	2	3	2	2021-02-05	23	2021-08-30 00:45:40.803379
487	302	260	2	3	2	2021-02-03	23	2021-08-30 00:45:40.803379
488	303	277	2	3	2	2021-01-21	23	2021-08-30 00:45:40.803379
489	306	295	2	3	2	2021-01-21	23	2021-08-30 00:45:40.803379
490	308	333	2	3	2	2021-01-28	23	2021-08-30 00:45:40.803379
491	291	59	2	2	2	2021-01-16	23	2021-08-30 00:45:40.803379
492	294	86	2	2	2	2021-01-30	23	2021-08-30 00:45:40.803379
493	296	117	2	2	2	2021-02-07	23	2021-08-30 00:45:40.803379
494	304	282	2	2	2	2021-01-29	23	2021-08-30 00:45:40.803379
495	305	289	2	2	1	2021-01-31	23	2021-08-30 00:45:40.803379
496	290	50	2	1	1	2021-01-10	23	2021-08-30 00:45:40.803379
497	307	328	2	1	1	2021-01-12	23	2021-08-30 00:45:40.803379
498	180	31	2	3	2	2021-01-18	24	2021-08-30 00:45:40.763983
499	181	42	1	3	2	2021-01-16	24	2021-08-30 00:45:40.763983
500	182	47	2	3	2	2021-01-12	24	2021-08-30 00:45:40.763983
501	183	49	2	3	2	2021-02-01	24	2021-08-30 00:45:40.763983
502	186	77	2	3	2	2021-02-05	24	2021-08-30 00:45:40.763983
503	189	116	2	3	2	2021-01-28	24	2021-08-30 00:45:40.763983
504	191	149	2	3	2	2021-01-16	24	2021-08-30 00:45:40.763983
505	192	151	1	3	2	2021-01-25	24	2021-08-30 00:45:40.763983
506	194	161	2	3	2	2021-02-06	24	2021-08-30 00:45:40.763983
507	195	172	2	3	2	2021-01-21	24	2021-08-30 00:45:40.763983
508	197	182	2	3	2	2021-02-04	24	2021-08-30 00:45:40.763983
509	198	213	1	3	1	2021-01-19	24	2021-08-30 00:45:40.763983
510	184	70	2	2	1	2021-01-17	24	2021-08-30 00:45:40.763983
511	185	71	2	2	2	2021-01-22	24	2021-08-30 00:45:40.763983
512	187	80	2	2	2	2021-01-17	24	2021-08-30 00:45:40.763983
513	188	84	2	2	1	2021-01-19	24	2021-08-30 00:45:40.763983
514	193	157	2	2	1	2021-01-23	24	2021-08-30 00:45:40.763983
515	196	181	2	2	1	2021-01-16	24	2021-08-30 00:45:40.763983
516	190	130	2	1	1	2021-01-24	24	2021-08-30 00:45:40.763983
517	527	54	2	3	2	2021-01-21	25	2021-08-30 00:45:40.817298
518	529	110	1	3	2	2021-01-17	25	2021-08-30 00:45:40.817298
519	530	124	2	3	2	2021-01-15	25	2021-08-30 00:45:40.817298
520	532	148	2	3	2	2021-02-05	25	2021-08-30 00:45:40.817298
521	535	183	2	3	2	2021-01-22	25	2021-08-30 00:45:40.817298
522	537	210	2	3	1	2021-01-20	25	2021-08-30 00:45:40.817298
523	538	217	2	3	1	2021-01-10	25	2021-08-30 00:45:40.817298
524	540	243	2	3	2	2021-01-20	25	2021-08-30 00:45:40.817298
525	541	281	1	3	1	2021-02-01	25	2021-08-30 00:45:40.817298
526	542	285	2	3	2	2021-01-20	25	2021-08-30 00:45:40.817298
527	531	127	2	2	2	2021-02-08	25	2021-08-30 00:45:40.817298
528	533	163	2	2	2	2021-01-28	25	2021-08-30 00:45:40.817298
529	534	180	2	2	1	2021-01-16	25	2021-08-30 00:45:40.817298
530	539	221	2	2	2	2021-01-20	25	2021-08-30 00:45:40.817298
531	528	74	2	1	2	2021-01-15	25	2021-08-30 00:45:40.817298
532	536	207	2	1	2	2021-01-17	25	2021-08-30 00:45:40.817298
533	830	438	2	3	2	2021-01-28	26	2021-08-30 00:45:40.83278
534	833	443	2	3	1	2021-02-01	26	2021-08-30 00:45:40.83278
535	835	451	1	3	1	2021-02-07	26	2021-08-30 00:45:40.83278
536	837	453	2	3	2	2021-02-06	26	2021-08-30 00:45:40.83278
537	838	457	2	3	2	2021-01-13	26	2021-08-30 00:45:40.83278
538	839	458	1	3	2	2021-01-14	26	2021-08-30 00:45:40.83278
539	840	459	2	3	2	2021-01-25	26	2021-08-30 00:45:40.83278
540	841	468	2	3	2	2021-01-31	26	2021-08-30 00:45:40.83278
541	842	473	2	3	2	2021-01-24	26	2021-08-30 00:45:40.83278
542	843	478	2	3	1	2021-01-14	26	2021-08-30 00:45:40.83278
543	844	485	2	3	2	2021-02-02	26	2021-08-30 00:45:40.83278
544	831	439	2	2	2	2021-02-08	26	2021-08-30 00:45:40.83278
545	832	442	2	2	1	2021-01-29	26	2021-08-30 00:45:40.83278
546	836	452	2	2	2	2021-01-10	26	2021-08-30 00:45:40.83278
547	829	433	2	1	1	2021-02-02	26	2021-08-30 00:45:40.83278
548	834	445	1	1	2	2021-01-15	26	2021-08-30 00:45:40.83278
549	242	29	2	3	2	2021-01-23	27	2021-08-30 00:45:40.763983
550	243	100	2	3	2	2021-01-18	27	2021-08-30 00:45:40.763983
551	244	107	2	3	2	2021-01-23	27	2021-08-30 00:45:40.763983
552	246	143	1	3	2	2021-01-10	27	2021-08-30 00:45:40.763983
553	247	153	2	3	2	2021-01-15	27	2021-08-30 00:45:40.763983
554	248	154	2	3	2	2021-01-30	27	2021-08-30 00:45:40.763983
555	249	175	2	3	1	2021-01-26	27	2021-08-30 00:45:40.763983
556	250	234	2	3	1	2021-01-18	27	2021-08-30 00:45:40.763983
557	251	271	2	3	2	2021-01-21	27	2021-08-30 00:45:40.763983
558	252	273	2	3	2	2021-01-21	27	2021-08-30 00:45:40.763983
559	254	284	2	3	2	2021-02-04	27	2021-08-30 00:45:40.763983
560	257	322	2	3	2	2021-01-21	27	2021-08-30 00:45:40.803379
561	258	382	2	3	2	2021-01-14	27	2021-08-30 00:45:40.803379
562	259	390	2	3	2	2021-01-18	27	2021-08-30 00:45:40.803379
563	260	395	2	3	2	2021-01-17	27	2021-08-30 00:45:40.803379
564	261	425	2	3	2	2021-02-07	27	2021-08-30 00:45:40.803379
565	245	132	2	2	2	2021-01-18	27	2021-08-30 00:45:40.763983
566	253	278	2	2	2	2021-02-06	27	2021-08-30 00:45:40.763983
567	255	298	2	2	1	2021-01-23	27	2021-08-30 00:45:40.763983
568	256	303	2	2	2	2021-02-02	27	2021-08-30 00:45:40.803379
569	925	747	1	3	2	2021-01-16	28	2021-08-30 00:45:40.83278
570	926	751	2	3	1	2021-01-30	28	2021-08-30 00:45:40.83278
571	927	752	2	3	2	2021-01-14	28	2021-08-30 00:45:40.83278
572	928	757	2	3	2	2021-01-23	28	2021-08-30 00:45:40.83278
573	929	758	2	3	2	2021-01-16	28	2021-08-30 00:45:40.83278
574	932	763	2	3	2	2021-01-28	28	2021-08-30 00:45:40.83278
575	933	779	2	3	2	2021-01-16	28	2021-08-30 00:45:40.83278
576	935	789	2	3	2	2021-01-26	28	2021-08-30 00:45:40.83278
577	936	793	2	3	2	2021-02-07	28	2021-08-30 00:45:40.83278
578	937	795	2	3	2	2021-01-20	28	2021-08-30 00:45:40.83278
579	939	798	2	3	2	2021-01-17	28	2021-08-30 00:45:40.83278
580	931	762	2	2	2	2021-01-11	28	2021-08-30 00:45:40.83278
581	934	785	2	2	1	2021-01-18	28	2021-08-30 00:45:40.83278
582	940	799	2	2	2	2021-01-14	28	2021-08-30 00:45:40.83278
583	930	760	2	1	2	2021-01-14	28	2021-08-30 00:45:40.83278
584	938	796	2	1	1	2021-01-18	28	2021-08-30 00:45:40.83278
585	44	694	2	3	2	2021-01-14	29	2021-08-30 00:45:40.763983
586	45	695	2	3	2	2021-01-21	29	2021-08-30 00:45:40.763983
587	48	753	2	3	2	2021-02-08	29	2021-08-30 00:45:40.763983
588	49	769	2	3	1	2021-01-18	29	2021-08-30 00:45:40.763983
589	51	819	1	3	2	2021-01-31	29	2021-08-30 00:45:40.763983
590	52	820	2	3	2	2021-01-20	29	2021-08-30 00:45:40.763983
591	53	841	2	3	2	2021-01-25	29	2021-08-30 00:45:40.763983
592	54	844	2	3	1	2021-01-23	29	2021-08-30 00:45:40.763983
593	55	863	2	3	2	2021-01-26	29	2021-08-30 00:45:40.763983
594	57	927	1	3	2	2021-01-14	29	2021-08-30 00:45:40.763983
595	58	943	2	3	2	2021-02-01	29	2021-08-30 00:45:40.763983
596	59	963	2	3	2	2021-02-02	29	2021-08-30 00:45:40.763983
597	60	964	1	3	2	2021-01-29	29	2021-08-30 00:45:40.763983
598	61	967	2	3	2	2021-01-31	29	2021-08-30 00:45:40.763983
599	64	987	2	3	2	2021-02-04	29	2021-08-30 00:45:40.763983
600	50	797	2	2	1	2021-02-08	29	2021-08-30 00:45:40.763983
601	62	978	2	2	2	2021-01-23	29	2021-08-30 00:45:40.763983
602	63	981	2	2	2	2021-01-14	29	2021-08-30 00:45:40.763983
603	46	711	2	1	2	2021-01-18	29	2021-08-30 00:45:40.763983
604	47	726	2	1	2	2021-02-05	29	2021-08-30 00:45:40.763983
605	56	898	2	1	1	2021-01-17	29	2021-08-30 00:45:40.763983
606	1	6	1	3	2	2021-01-26	30	2021-08-30 00:45:40.763983
607	2	12	2	3	2	2021-01-11	30	2021-08-30 00:45:40.763983
608	3	65	2	3	2	2021-01-22	30	2021-08-30 00:45:40.763983
609	5	73	2	3	2	2021-01-19	30	2021-08-30 00:45:40.763983
610	6	96	2	3	2	2021-01-22	30	2021-08-30 00:45:40.763983
611	7	99	2	3	2	2021-01-26	30	2021-08-30 00:45:40.763983
612	8	112	2	3	1	2021-01-26	30	2021-08-30 00:45:40.763983
613	9	123	2	3	2	2021-02-05	30	2021-08-30 00:45:40.763983
614	13	196	2	3	2	2021-02-02	30	2021-08-30 00:45:40.763983
615	14	201	2	3	2	2021-01-19	30	2021-08-30 00:45:40.763983
616	15	212	2	3	1	2021-01-17	30	2021-08-30 00:45:40.763983
617	17	241	2	3	2	2021-02-01	30	2021-08-30 00:45:40.763983
618	18	245	2	3	2	2021-02-06	30	2021-08-30 00:45:40.763983
619	20	280	2	3	2	2021-01-25	30	2021-08-30 00:45:40.763983
620	21	310	2	3	2	2021-02-01	30	2021-08-30 00:45:40.763983
621	4	72	1	2	2	2021-01-30	30	2021-08-30 00:45:40.763983
622	10	168	2	2	2	2021-01-15	30	2021-08-30 00:45:40.763983
623	16	220	2	2	2	2021-01-21	30	2021-08-30 00:45:40.763983
624	19	269	2	2	2	2021-01-24	30	2021-08-30 00:45:40.763983
625	11	185	2	1	1	2021-01-12	30	2021-08-30 00:45:40.763983
626	12	193	2	1	2	2021-02-05	30	2021-08-30 00:45:40.763983
627	65	75	2	3	1	2021-01-19	31	2021-08-30 00:45:40.763983
628	67	128	2	3	1	2021-01-14	31	2021-08-30 00:45:40.763983
629	69	171	1	3	1	2021-02-06	31	2021-08-30 00:45:40.763983
630	70	174	2	3	2	2021-01-30	31	2021-08-30 00:45:40.763983
631	71	186	2	3	2	2021-01-24	31	2021-08-30 00:45:40.763983
632	72	224	2	3	2	2021-01-17	31	2021-08-30 00:45:40.763983
633	73	246	2	3	2	2021-01-31	31	2021-08-30 00:45:40.763983
634	74	286	1	3	2	2021-01-26	31	2021-08-30 00:45:40.763983
635	75	290	1	3	1	2021-01-21	31	2021-08-30 00:45:40.763983
636	76	305	2	3	2	2021-01-21	31	2021-08-30 00:45:40.763983
637	78	388	2	3	2	2021-01-10	31	2021-08-30 00:45:40.763983
638	79	409	2	3	2	2021-01-24	31	2021-08-30 00:45:40.763983
639	80	413	2	3	2	2021-01-29	31	2021-08-30 00:45:40.763983
640	81	416	2	3	2	2021-01-30	31	2021-08-30 00:45:40.763983
641	84	436	2	3	2	2021-02-03	31	2021-08-30 00:45:40.763983
642	86	486	2	3	2	2021-01-19	31	2021-08-30 00:45:40.763983
643	87	502	2	3	1	2021-02-07	31	2021-08-30 00:45:40.763983
644	66	105	2	2	2	2021-02-03	31	2021-08-30 00:45:40.763983
645	68	164	2	2	2	2021-01-24	31	2021-08-30 00:45:40.763983
646	77	315	1	2	2	2021-01-30	31	2021-08-30 00:45:40.763983
647	82	417	2	2	2	2021-01-30	31	2021-08-30 00:45:40.763983
648	83	423	2	2	2	2021-01-28	31	2021-08-30 00:45:40.763983
649	85	461	2	1	2	2021-01-16	31	2021-08-30 00:45:40.763983
650	88	510	2	1	1	2021-02-03	31	2021-08-30 00:45:40.763983
651	22	314	2	3	1	2021-01-17	32	2021-08-30 00:45:40.763983
652	25	350	2	3	2	2021-01-13	32	2021-08-30 00:45:40.763983
653	26	353	2	3	2	2021-01-31	32	2021-08-30 00:45:40.763983
654	27	379	1	3	2	2021-02-01	32	2021-08-30 00:45:40.763983
655	28	384	2	3	1	2021-01-23	32	2021-08-30 00:45:40.763983
656	30	404	2	3	2	2021-01-27	32	2021-08-30 00:45:40.763983
657	31	408	2	3	2	2021-01-18	32	2021-08-30 00:45:40.763983
658	32	420	2	3	2	2021-02-04	32	2021-08-30 00:45:40.763983
659	34	500	2	3	2	2021-02-06	32	2021-08-30 00:45:40.763983
660	35	530	2	3	2	2021-01-14	32	2021-08-30 00:45:40.763983
661	36	531	2	3	2	2021-01-14	32	2021-08-30 00:45:40.763983
662	37	532	2	3	2	2021-01-22	32	2021-08-30 00:45:40.763983
663	41	644	2	3	2	2021-01-11	32	2021-08-30 00:45:40.763983
664	42	660	2	3	2	2021-01-20	32	2021-08-30 00:45:40.763983
665	43	670	2	3	2	2021-01-25	32	2021-08-30 00:45:40.763983
666	23	332	2	2	1	2021-01-29	32	2021-08-30 00:45:40.763983
667	33	499	2	2	2	2021-01-15	32	2021-08-30 00:45:40.763983
668	39	556	2	2	2	2021-01-24	32	2021-08-30 00:45:40.763983
669	40	628	2	2	2	2021-01-21	32	2021-08-30 00:45:40.763983
670	24	343	2	1	2	2021-01-14	32	2021-08-30 00:45:40.763983
671	29	389	2	1	1	2021-01-14	32	2021-08-30 00:45:40.763983
672	38	544	2	1	2	2021-02-02	32	2021-08-30 00:45:40.763983
673	625	729	2	3	2	2021-01-30	33	2021-08-30 00:45:40.817298
674	626	743	2	3	2	2021-01-19	33	2021-08-30 00:45:40.817298
675	627	748	2	3	2	2021-01-12	33	2021-08-30 00:45:40.817298
676	629	764	2	3	2	2021-01-26	33	2021-08-30 00:45:40.817298
677	630	792	2	3	2	2021-01-21	33	2021-08-30 00:45:40.817298
678	631	814	2	3	2	2021-01-26	33	2021-08-30 00:45:40.817298
679	632	822	2	3	2	2021-01-27	33	2021-08-30 00:45:40.817298
680	634	847	2	3	1	2021-01-21	33	2021-08-30 00:45:40.817298
681	635	855	2	3	2	2021-02-04	33	2021-08-30 00:45:40.817298
682	637	884	2	3	2	2021-01-27	33	2021-08-30 00:45:40.817298
683	638	896	2	3	2	2021-02-01	33	2021-08-30 00:45:40.817298
684	639	900	2	3	1	2021-01-27	33	2021-08-30 00:45:40.817298
685	641	956	2	3	2	2021-01-22	33	2021-08-30 00:45:40.817298
686	642	965	2	3	2	2021-02-05	33	2021-08-30 00:45:40.817298
687	643	969	2	3	2	2021-01-28	33	2021-08-30 00:45:40.817298
688	644	973	2	3	2	2021-02-03	33	2021-08-30 00:45:40.817298
689	645	983	1	3	2	2021-01-23	33	2021-08-30 00:45:40.817298
690	628	750	1	2	2	2021-01-22	33	2021-08-30 00:45:40.817298
691	633	829	2	2	1	2021-01-19	33	2021-08-30 00:45:40.817298
692	636	880	2	2	2	2021-02-01	33	2021-08-30 00:45:40.817298
693	640	902	2	2	2	2021-02-02	33	2021-08-30 00:45:40.817298
694	579	2	1	3	2	2021-01-27	34	2021-08-30 00:45:40.817298
695	580	10	2	3	2	2021-01-28	34	2021-08-30 00:45:40.817298
696	581	17	2	3	2	2021-01-28	34	2021-08-30 00:45:40.817298
697	583	40	2	3	2	2021-01-24	34	2021-08-30 00:45:40.817298
698	584	66	2	3	1	2021-01-14	34	2021-08-30 00:45:40.817298
699	586	69	2	3	2	2021-02-03	34	2021-08-30 00:45:40.817298
700	588	103	2	3	2	2021-02-04	34	2021-08-30 00:45:40.817298
701	590	137	2	3	2	2021-01-14	34	2021-08-30 00:45:40.817298
702	594	235	1	3	1	2021-02-05	34	2021-08-30 00:45:40.817298
703	595	253	2	3	2	2021-02-01	34	2021-08-30 00:45:40.817298
704	597	264	2	3	2	2021-01-19	34	2021-08-30 00:45:40.817298
705	598	316	2	3	2	2021-01-25	34	2021-08-30 00:45:40.817298
706	599	321	2	3	2	2021-01-26	34	2021-08-30 00:45:40.817298
707	600	337	2	3	2	2021-01-23	34	2021-08-30 00:45:40.817298
708	601	342	2	3	1	2021-01-12	34	2021-08-30 00:45:40.817298
709	585	67	2	2	1	2021-02-01	34	2021-08-30 00:45:40.817298
710	587	81	2	2	2	2021-02-01	34	2021-08-30 00:45:40.817298
711	589	121	2	2	2	2021-01-21	34	2021-08-30 00:45:40.817298
712	592	199	2	2	2	2021-01-23	34	2021-08-30 00:45:40.817298
713	593	208	2	2	1	2021-01-21	34	2021-08-30 00:45:40.817298
714	596	263	2	2	2	2021-01-29	34	2021-08-30 00:45:40.817298
715	582	38	2	1	2	2021-01-28	34	2021-08-30 00:45:40.817298
716	591	179	2	1	2	2021-01-17	34	2021-08-30 00:45:40.817298
717	377	437	2	3	2	2021-02-05	35	2021-08-30 00:45:40.803379
718	378	463	2	3	1	2021-01-16	35	2021-08-30 00:45:40.803379
719	380	469	2	3	2	2021-01-31	35	2021-08-30 00:45:40.803379
720	381	477	2	3	1	2021-01-20	35	2021-08-30 00:45:40.803379
721	382	484	2	3	2	2021-01-23	35	2021-08-30 00:45:40.803379
722	383	525	2	3	1	2021-01-20	35	2021-08-30 00:45:40.803379
723	384	528	1	3	2	2021-02-01	35	2021-08-30 00:45:40.803379
724	386	541	2	3	2	2021-02-03	35	2021-08-30 00:45:40.803379
725	387	548	1	3	2	2021-01-11	35	2021-08-30 00:45:40.803379
726	390	641	2	3	2	2021-01-18	35	2021-08-30 00:45:40.803379
727	391	686	1	3	2	2021-01-25	35	2021-08-30 00:45:40.803379
728	392	712	2	3	2	2021-01-22	35	2021-08-30 00:45:40.803379
729	393	717	2	3	2	2021-01-10	35	2021-08-30 00:45:40.803379
730	394	725	2	3	2	2021-02-06	35	2021-08-30 00:45:40.803379
731	396	739	2	3	2	2021-01-11	35	2021-08-30 00:45:40.803379
732	397	742	2	3	1	2021-01-19	35	2021-08-30 00:45:40.803379
733	398	761	2	3	2	2021-01-24	35	2021-08-30 00:45:40.803379
734	399	773	2	3	2	2021-01-29	35	2021-08-30 00:45:40.803379
735	402	852	2	3	1	2021-01-10	35	2021-08-30 00:45:40.803379
736	403	867	2	3	2	2021-01-30	35	2021-08-30 00:45:40.803379
737	404	870	2	3	1	2021-01-29	35	2021-08-30 00:45:40.803379
738	405	899	2	3	2	2021-02-01	35	2021-08-30 00:45:40.803379
739	408	949	2	3	2	2021-01-19	35	2021-08-30 00:45:40.803379
740	409	994	2	3	1	2021-01-12	35	2021-08-30 00:45:40.803379
741	376	419	2	2	2	2021-01-21	35	2021-08-30 00:45:40.803379
742	379	464	2	2	2	2021-02-06	35	2021-08-30 00:45:40.803379
743	389	630	2	2	1	2021-01-20	35	2021-08-30 00:45:40.803379
744	400	774	2	2	2	2021-02-04	35	2021-08-30 00:45:40.803379
745	401	788	2	2	2	2021-01-18	35	2021-08-30 00:45:40.803379
746	406	921	1	2	2	2021-01-31	35	2021-08-30 00:45:40.803379
747	407	948	2	2	2	2021-01-23	35	2021-08-30 00:45:40.803379
748	385	539	2	1	2	2021-01-19	35	2021-08-30 00:45:40.803379
749	388	551	2	1	2	2021-01-21	35	2021-08-30 00:45:40.803379
750	395	731	1	1	2	2021-01-30	35	2021-08-30 00:45:40.803379
751	543	354	2	2	1	2021-01-12	36	2021-08-30 00:45:40.817298
752	468	14	2	3	2	2021-02-05	37	2021-08-30 00:45:40.803379
753	469	16	2	3	2	2021-02-02	37	2021-08-30 00:45:40.803379
754	470	19	2	3	2	2021-01-11	37	2021-08-30 00:45:40.803379
755	472	46	2	3	2	2021-01-25	37	2021-08-30 00:45:40.803379
756	474	56	2	3	2	2021-01-19	37	2021-08-30 00:45:40.803379
757	475	79	2	3	2	2021-01-18	37	2021-08-30 00:45:40.803379
758	478	101	2	3	2	2021-02-02	37	2021-08-30 00:45:40.803379
759	479	156	2	3	2	2021-01-13	37	2021-08-30 00:45:40.803379
760	480	165	2	3	2	2021-02-04	37	2021-08-30 00:45:40.803379
761	481	195	2	3	2	2021-02-03	37	2021-08-30 00:45:40.803379
762	482	216	2	3	1	2021-02-03	37	2021-08-30 00:45:40.803379
763	483	233	1	3	1	2021-01-14	37	2021-08-30 00:45:40.803379
764	484	251	2	3	1	2021-01-20	37	2021-08-30 00:45:40.803379
765	487	324	2	3	2	2021-01-25	37	2021-08-30 00:45:40.803379
766	488	344	2	3	1	2021-01-20	37	2021-08-30 00:45:40.803379
767	489	361	2	3	1	2021-01-28	37	2021-08-30 00:45:40.803379
768	492	435	1	3	2	2021-01-27	37	2021-08-30 00:45:40.803379
769	493	450	2	3	1	2021-02-05	37	2021-08-30 00:45:40.803379
770	495	471	2	3	2	2021-02-01	37	2021-08-30 00:45:40.803379
771	471	26	2	2	2	2021-02-04	37	2021-08-30 00:45:40.803379
772	473	48	2	2	2	2021-01-10	37	2021-08-30 00:45:40.803379
773	490	407	2	2	2	2021-01-30	37	2021-08-30 00:45:40.803379
774	491	414	2	2	1	2021-02-08	37	2021-08-30 00:45:40.803379
775	476	82	2	1	1	2021-02-06	37	2021-08-30 00:45:40.803379
776	477	90	2	1	2	2021-02-06	37	2021-08-30 00:45:40.803379
777	485	257	2	1	1	2021-01-25	37	2021-08-30 00:45:40.803379
778	486	265	2	1	2	2021-01-12	37	2021-08-30 00:45:40.803379
779	494	470	2	1	2	2021-01-11	37	2021-08-30 00:45:40.803379
780	496	480	1	1	1	2021-02-05	37	2021-08-30 00:45:40.803379
781	352	1	2	3	2	2021-01-24	38	2021-08-30 00:45:40.803379
782	354	83	2	3	2	2021-02-02	38	2021-08-30 00:45:40.803379
783	355	109	2	3	1	2021-01-17	38	2021-08-30 00:45:40.803379
784	357	134	2	3	1	2021-01-25	38	2021-08-30 00:45:40.803379
785	358	135	2	3	1	2021-01-10	38	2021-08-30 00:45:40.803379
786	359	144	2	3	1	2021-01-30	38	2021-08-30 00:45:40.803379
787	361	166	2	3	2	2021-01-21	38	2021-08-30 00:45:40.803379
788	362	177	2	3	2	2021-02-08	38	2021-08-30 00:45:40.803379
789	363	225	2	3	1	2021-02-08	38	2021-08-30 00:45:40.803379
790	364	226	2	3	2	2021-02-03	38	2021-08-30 00:45:40.803379
791	370	368	2	3	1	2021-02-07	38	2021-08-30 00:45:40.803379
792	372	377	2	3	2	2021-01-22	38	2021-08-30 00:45:40.803379
793	373	396	2	3	1	2021-02-04	38	2021-08-30 00:45:40.803379
794	374	397	1	3	2	2021-02-06	38	2021-08-30 00:45:40.803379
795	375	415	2	3	2	2021-01-21	38	2021-08-30 00:45:40.803379
796	356	122	2	2	2	2021-01-19	38	2021-08-30 00:45:40.803379
797	360	146	2	2	1	2021-01-17	38	2021-08-30 00:45:40.803379
798	365	252	1	2	1	2021-01-13	38	2021-08-30 00:45:40.803379
799	369	294	2	2	2	2021-01-23	38	2021-08-30 00:45:40.803379
800	371	372	2	2	2	2021-01-14	38	2021-08-30 00:45:40.803379
801	353	41	1	1	2	2021-01-19	38	2021-08-30 00:45:40.803379
802	366	254	1	1	1	2021-01-31	38	2021-08-30 00:45:40.803379
803	367	256	2	1	2	2021-02-03	38	2021-08-30 00:45:40.803379
804	368	279	2	1	2	2021-01-23	38	2021-08-30 00:45:40.803379
805	813	374	1	3	2	2021-01-25	39	2021-08-30 00:45:40.83278
806	814	375	2	3	2	2021-01-15	39	2021-08-30 00:45:40.83278
807	815	376	2	3	1	2021-01-22	39	2021-08-30 00:45:40.83278
808	817	393	2	3	2	2021-01-31	39	2021-08-30 00:45:40.83278
809	818	394	2	3	2	2021-01-12	39	2021-08-30 00:45:40.83278
810	819	399	2	3	2	2021-01-22	39	2021-08-30 00:45:40.83278
811	820	400	1	3	2	2021-01-17	39	2021-08-30 00:45:40.83278
812	822	406	2	3	2	2021-01-17	39	2021-08-30 00:45:40.83278
813	823	418	2	3	2	2021-01-25	39	2021-08-30 00:45:40.83278
814	824	422	2	3	2	2021-01-20	39	2021-08-30 00:45:40.83278
815	825	424	2	3	1	2021-02-05	39	2021-08-30 00:45:40.83278
816	826	428	2	3	2	2021-01-23	39	2021-08-30 00:45:40.83278
817	827	430	2	3	2	2021-01-16	39	2021-08-30 00:45:40.83278
818	816	391	2	2	2	2021-02-06	39	2021-08-30 00:45:40.83278
819	821	402	2	2	2	2021-02-08	39	2021-08-30 00:45:40.83278
820	828	431	2	2	2	2021-01-19	39	2021-08-30 00:45:40.83278
821	727	92	2	3	2	2021-01-17	40	2021-08-30 00:45:40.817298
822	729	95	2	3	2	2021-01-29	40	2021-08-30 00:45:40.817298
823	730	104	2	3	2	2021-02-04	40	2021-08-30 00:45:40.817298
824	731	108	2	3	2	2021-01-30	40	2021-08-30 00:45:40.817298
825	733	114	2	3	1	2021-01-18	40	2021-08-30 00:45:40.817298
826	736	119	1	3	1	2021-01-21	40	2021-08-30 00:45:40.817298
827	737	120	2	3	2	2021-01-16	40	2021-08-30 00:45:40.817298
828	738	125	2	3	2	2021-01-31	40	2021-08-30 00:45:40.817298
829	739	129	2	3	2	2021-01-28	40	2021-08-30 00:45:40.817298
830	740	133	1	3	2	2021-01-22	40	2021-08-30 00:45:40.817298
831	741	136	1	3	2	2021-02-01	40	2021-08-30 00:45:40.817298
832	742	138	2	3	1	2021-02-05	40	2021-08-30 00:45:40.817298
833	743	145	2	3	2	2021-01-29	40	2021-08-30 00:45:40.817298
834	744	155	1	3	2	2021-02-05	40	2021-08-30 00:45:40.817298
835	746	160	2	3	2	2021-01-20	40	2021-08-30 00:45:40.817298
836	749	169	2	3	2	2021-02-07	40	2021-08-30 00:45:40.817298
837	750	170	2	3	1	2021-01-14	40	2021-08-30 00:45:40.817298
838	751	173	2	3	2	2021-01-29	40	2021-08-30 00:45:40.817298
839	752	176	2	3	2	2021-01-10	40	2021-08-30 00:45:40.817298
840	732	113	2	2	2	2021-01-22	40	2021-08-30 00:45:40.817298
841	734	115	2	2	1	2021-01-15	40	2021-08-30 00:45:40.817298
842	745	158	2	2	2	2021-01-31	40	2021-08-30 00:45:40.817298
843	748	167	2	2	2	2021-01-21	40	2021-08-30 00:45:40.817298
844	753	184	2	2	2	2021-01-15	40	2021-08-30 00:45:40.817298
845	728	93	1	1	2	2021-01-29	40	2021-08-30 00:45:40.817298
846	735	118	2	1	2	2021-01-16	40	2021-08-30 00:45:40.817298
847	747	162	2	1	2	2021-01-12	40	2021-08-30 00:45:40.817298
848	602	359	2	3	2	2021-01-20	41	2021-08-30 00:45:40.817298
849	603	363	2	3	2	2021-02-05	41	2021-08-30 00:45:40.817298
850	605	381	2	3	2	2021-02-06	41	2021-08-30 00:45:40.817298
851	606	383	2	3	2	2021-01-15	41	2021-08-30 00:45:40.817298
852	607	410	2	3	2	2021-01-27	41	2021-08-30 00:45:40.817298
853	608	411	2	3	2	2021-02-08	41	2021-08-30 00:45:40.817298
854	609	472	2	3	2	2021-01-10	41	2021-08-30 00:45:40.817298
855	611	524	2	3	2	2021-01-15	41	2021-08-30 00:45:40.817298
856	612	527	1	3	2	2021-01-30	41	2021-08-30 00:45:40.817298
857	613	554	2	3	2	2021-01-17	41	2021-08-30 00:45:40.817298
858	614	564	1	3	2	2021-01-18	41	2021-08-30 00:45:40.817298
859	616	612	2	3	2	2021-02-08	41	2021-08-30 00:45:40.817298
860	619	654	2	3	2	2021-01-14	41	2021-08-30 00:45:40.817298
861	621	678	2	3	2	2021-01-16	41	2021-08-30 00:45:40.817298
862	622	680	1	3	2	2021-01-24	41	2021-08-30 00:45:40.817298
863	624	718	2	3	2	2021-01-21	41	2021-08-30 00:45:40.817298
864	610	479	2	2	1	2021-01-24	41	2021-08-30 00:45:40.817298
865	615	593	2	2	2	2021-01-14	41	2021-08-30 00:45:40.817298
866	617	619	2	2	2	2021-01-15	41	2021-08-30 00:45:40.817298
867	618	639	2	2	1	2021-01-22	41	2021-08-30 00:45:40.817298
868	620	658	2	2	2	2021-01-27	41	2021-08-30 00:45:40.817298
869	604	369	2	1	2	2021-01-26	41	2021-08-30 00:45:40.817298
870	623	707	2	1	2	2021-02-03	41	2021-08-30 00:45:40.817298
871	976	933	2	3	2	2021-01-24	42	2021-08-30 00:45:40.83278
872	977	934	2	3	2	2021-01-12	42	2021-08-30 00:45:40.83278
873	978	939	2	3	2	2021-02-03	42	2021-08-30 00:45:40.83278
874	980	946	2	3	1	2021-01-12	42	2021-08-30 00:45:40.83278
875	981	947	2	3	1	2021-01-11	42	2021-08-30 00:45:40.83278
876	982	952	2	3	2	2021-01-21	42	2021-08-30 00:45:40.83278
877	984	960	2	3	2	2021-01-30	42	2021-08-30 00:45:40.83278
878	985	962	2	3	2	2021-02-08	42	2021-08-30 00:45:40.83278
879	986	966	2	3	2	2021-01-13	42	2021-08-30 00:45:40.83278
880	988	971	2	3	2	2021-01-17	42	2021-08-30 00:45:40.83278
881	989	975	2	3	1	2021-01-28	42	2021-08-30 00:45:40.83278
882	990	976	2	3	2	2021-01-27	42	2021-08-30 00:45:40.83278
883	991	977	1	3	2	2021-02-07	42	2021-08-30 00:45:40.83278
884	995	990	2	3	1	2021-01-20	42	2021-08-30 00:45:40.83278
885	996	992	2	3	2	2021-02-07	42	2021-08-30 00:45:40.83278
886	997	997	2	3	1	2021-02-02	42	2021-08-30 00:45:40.83278
887	979	944	2	2	2	2021-01-12	42	2021-08-30 00:45:40.83278
888	983	957	2	2	1	2021-01-25	42	2021-08-30 00:45:40.83278
889	992	980	2	2	2	2021-01-27	42	2021-08-30 00:45:40.83278
890	993	982	2	2	1	2021-02-08	42	2021-08-30 00:45:40.83278
891	994	989	2	2	2	2021-01-29	42	2021-08-30 00:45:40.83278
892	987	968	2	1	2	2021-01-22	42	2021-08-30 00:45:40.83278
893	544	362	1	3	1	2021-02-02	43	2021-08-30 00:45:40.817298
894	545	380	2	3	2	2021-02-05	43	2021-08-30 00:45:40.817298
895	546	386	1	3	2	2021-01-24	43	2021-08-30 00:45:40.817298
896	548	427	2	3	1	2021-01-13	43	2021-08-30 00:45:40.817298
897	549	440	2	3	2	2021-02-03	43	2021-08-30 00:45:40.817298
898	551	460	2	3	1	2021-01-20	43	2021-08-30 00:45:40.817298
899	553	487	2	3	2	2021-01-27	43	2021-08-30 00:45:40.817298
900	555	520	2	3	2	2021-01-26	43	2021-08-30 00:45:40.817298
901	556	549	1	3	1	2021-02-06	43	2021-08-30 00:45:40.817298
902	557	579	2	3	2	2021-01-18	43	2021-08-30 00:45:40.817298
903	558	600	2	3	1	2021-01-13	43	2021-08-30 00:45:40.817298
904	559	615	2	3	2	2021-02-05	43	2021-08-30 00:45:40.817298
905	564	727	1	3	1	2021-01-21	43	2021-08-30 00:45:40.817298
906	565	741	2	3	1	2021-01-12	43	2021-08-30 00:45:40.817298
907	567	746	2	3	2	2021-01-28	43	2021-08-30 00:45:40.817298
908	568	770	1	3	2	2021-01-25	43	2021-08-30 00:45:40.817298
909	569	813	2	3	2	2021-02-02	43	2021-08-30 00:45:40.817298
910	570	815	2	3	1	2021-01-13	43	2021-08-30 00:45:40.817298
911	571	824	2	3	1	2021-01-21	43	2021-08-30 00:45:40.817298
912	572	827	2	3	1	2021-01-11	43	2021-08-30 00:45:40.817298
913	573	838	2	3	2	2021-01-11	43	2021-08-30 00:45:40.817298
914	574	866	2	3	1	2021-02-06	43	2021-08-30 00:45:40.817298
915	575	877	2	3	2	2021-01-19	43	2021-08-30 00:45:40.817298
916	576	887	2	3	2	2021-01-23	43	2021-08-30 00:45:40.817298
917	577	922	2	3	2	2021-01-23	43	2021-08-30 00:45:40.817298
918	547	421	2	2	2	2021-01-23	43	2021-08-30 00:45:40.817298
919	550	446	2	2	2	2021-01-11	43	2021-08-30 00:45:40.817298
920	552	475	2	2	2	2021-01-21	43	2021-08-30 00:45:40.817298
921	554	496	2	2	2	2021-02-06	43	2021-08-30 00:45:40.817298
922	560	623	2	2	2	2021-01-18	43	2021-08-30 00:45:40.817298
923	566	745	2	2	1	2021-02-06	43	2021-08-30 00:45:40.817298
924	578	972	2	2	2	2021-02-01	43	2021-08-30 00:45:40.817298
925	561	627	2	1	2	2021-02-04	43	2021-08-30 00:45:40.817298
926	562	703	2	1	2	2021-01-11	43	2021-08-30 00:45:40.817298
927	563	721	2	1	2	2021-01-20	43	2021-08-30 00:45:40.817298
928	220	665	2	3	2	2021-01-25	44	2021-08-30 00:45:40.763983
929	221	669	2	3	2	2021-02-08	44	2021-08-30 00:45:40.763983
930	223	683	2	3	2	2021-01-24	44	2021-08-30 00:45:40.763983
931	224	688	2	3	2	2021-01-25	44	2021-08-30 00:45:40.763983
932	225	689	2	3	2	2021-02-07	44	2021-08-30 00:45:40.763983
933	226	728	1	3	1	2021-01-26	44	2021-08-30 00:45:40.763983
934	228	766	2	3	2	2021-01-15	44	2021-08-30 00:45:40.763983
935	229	772	2	3	2	2021-01-24	44	2021-08-30 00:45:40.763983
936	230	817	2	3	2	2021-01-10	44	2021-08-30 00:45:40.763983
937	236	888	2	3	2	2021-01-11	44	2021-08-30 00:45:40.763983
938	237	919	1	3	1	2021-01-14	44	2021-08-30 00:45:40.763983
939	238	926	2	3	2	2021-01-28	44	2021-08-30 00:45:40.763983
940	239	951	2	3	1	2021-01-29	44	2021-08-30 00:45:40.763983
941	240	961	1	3	2	2021-01-23	44	2021-08-30 00:45:40.763983
942	241	986	2	3	2	2021-01-14	44	2021-08-30 00:45:40.763983
943	219	662	1	2	2	2021-01-28	44	2021-08-30 00:45:40.763983
944	222	671	2	2	1	2021-01-27	44	2021-08-30 00:45:40.763983
945	227	735	2	2	2	2021-02-04	44	2021-08-30 00:45:40.763983
946	231	834	2	2	2	2021-02-08	44	2021-08-30 00:45:40.763983
947	232	835	2	2	1	2021-01-26	44	2021-08-30 00:45:40.763983
948	233	856	1	1	2	2021-01-24	44	2021-08-30 00:45:40.763983
949	234	871	2	1	2	2021-01-30	44	2021-08-30 00:45:40.763983
950	235	872	2	1	2	2021-01-12	44	2021-08-30 00:45:40.763983
951	497	488	2	3	2	2021-02-02	45	2021-08-30 00:45:40.803379
952	498	538	1	3	1	2021-01-19	45	2021-08-30 00:45:40.803379
953	499	575	2	3	2	2021-02-07	45	2021-08-30 00:45:40.803379
954	500	586	1	3	2	2021-01-13	45	2021-08-30 00:45:40.803379
955	501	604	2	3	1	2021-01-23	45	2021-08-30 00:45:40.803379
956	502	625	2	3	2	2021-01-26	45	2021-08-30 00:45:40.803379
957	503	636	2	3	2	2021-02-01	45	2021-08-30 00:45:40.803379
958	504	645	2	3	2	2021-02-03	45	2021-08-30 00:45:40.803379
959	506	702	2	3	2	2021-01-25	45	2021-08-30 00:45:40.803379
960	507	738	1	3	1	2021-01-12	45	2021-08-30 00:45:40.803379
961	508	767	2	3	2	2021-01-25	45	2021-08-30 00:45:40.803379
962	509	771	2	3	2	2021-01-18	45	2021-08-30 00:45:40.803379
963	510	776	2	3	2	2021-01-15	45	2021-08-30 00:45:40.803379
964	511	778	2	3	2	2021-01-17	45	2021-08-30 00:45:40.803379
965	512	782	2	3	1	2021-01-17	45	2021-08-30 00:45:40.817298
966	513	787	2	3	2	2021-01-19	45	2021-08-30 00:45:40.817298
967	515	826	2	3	2	2021-01-15	45	2021-08-30 00:45:40.817298
968	517	890	2	3	2	2021-01-24	45	2021-08-30 00:45:40.817298
969	518	904	2	3	2	2021-01-20	45	2021-08-30 00:45:40.817298
970	519	908	2	3	1	2021-02-01	45	2021-08-30 00:45:40.817298
971	522	940	2	3	2	2021-01-24	45	2021-08-30 00:45:40.817298
972	523	954	1	3	2	2021-01-23	45	2021-08-30 00:45:40.817298
973	524	955	2	3	2	2021-01-11	45	2021-08-30 00:45:40.817298
974	525	979	2	3	1	2021-02-05	45	2021-08-30 00:45:40.817298
975	526	991	2	3	2	2021-02-07	45	2021-08-30 00:45:40.817298
976	505	674	2	2	1	2021-01-23	45	2021-08-30 00:45:40.803379
977	514	811	2	2	1	2021-01-26	45	2021-08-30 00:45:40.817298
978	520	914	2	2	2	2021-01-10	45	2021-08-30 00:45:40.817298
979	521	924	1	2	1	2021-01-29	45	2021-08-30 00:45:40.817298
980	516	846	2	1	1	2021-02-03	45	2021-08-30 00:45:40.817298
981	892	622	2	3	1	2021-02-02	46	2021-08-30 00:45:40.83278
982	895	632	2	3	2	2021-01-31	46	2021-08-30 00:45:40.83278
983	896	638	2	3	1	2021-02-06	46	2021-08-30 00:45:40.83278
984	897	640	2	3	2	2021-01-21	46	2021-08-30 00:45:40.83278
985	898	647	2	3	2	2021-01-14	46	2021-08-30 00:45:40.83278
986	901	653	2	3	2	2021-01-18	46	2021-08-30 00:45:40.83278
987	902	655	1	3	2	2021-01-28	46	2021-08-30 00:45:40.83278
988	903	667	2	3	2	2021-01-20	46	2021-08-30 00:45:40.83278
989	905	677	2	3	1	2021-01-31	46	2021-08-30 00:45:40.83278
990	906	679	2	3	2	2021-01-16	46	2021-08-30 00:45:40.83278
991	907	682	2	3	2	2021-01-15	46	2021-08-30 00:45:40.83278
992	893	624	2	2	2	2021-01-11	46	2021-08-30 00:45:40.83278
993	894	631	1	2	2	2021-01-28	46	2021-08-30 00:45:40.83278
994	900	652	2	2	2	2021-01-19	46	2021-08-30 00:45:40.83278
995	899	648	2	1	1	2021-01-14	46	2021-08-30 00:45:40.83278
996	904	672	2	1	2	2021-01-20	46	2021-08-30 00:45:40.83278
997	908	684	2	1	2	2021-01-26	46	2021-08-30 00:45:40.83278
\.


--
-- TOC entry 2921 (class 0 OID 24686)
-- Dependencies: 200
-- Data for Name: tb_sexo; Type: TABLE DATA; Schema: relacional; Owner: postgres
--

COPY relacional.tb_sexo (id_sexo, sexo) FROM stdin;
1	Masculino
2	Feminino
\.


--
-- TOC entry 2931 (class 0 OID 32924)
-- Dependencies: 210
-- Data for Name: tb_situacao_anterior; Type: TABLE DATA; Schema: relacional; Owner: postgres
--

COPY relacional.tb_situacao_anterior (id_situacao_anterior, situacao_anterior) FROM stdin;
1	Reprovou
2	Pendente
3	Aprovado
\.


--
-- TOC entry 2933 (class 0 OID 32932)
-- Dependencies: 212
-- Data for Name: tb_status_matricula; Type: TABLE DATA; Schema: relacional; Owner: postgres
--

COPY relacional.tb_status_matricula (id_status_matricula, status_matricula) FROM stdin;
1	Pendente
2	Concluida
\.


--
-- TOC entry 2923 (class 0 OID 32892)
-- Dependencies: 202
-- Data for Name: tb_transporte; Type: TABLE DATA; Schema: relacional; Owner: postgres
--

COPY relacional.tb_transporte (id_transporte, transporte) FROM stdin;
1	Bicicleta
2	Carro
3	A pé
4	Moto
5	Ônibus
\.


--
-- TOC entry 2935 (class 0 OID 32940)
-- Dependencies: 214
-- Data for Name: tb_turma; Type: TABLE DATA; Schema: relacional; Owner: postgres
--

COPY relacional.tb_turma (id_turma, turma) FROM stdin;
1	402
2	503
3	M301
4	202
5	604
6	602
7	Pr04
8	M202
9	M203
10	802
11	104
12	801
13	603
14	502
15	301
16	303
17	404
18	302
19	M303
20	M201
21	803
22	M104
23	601
24	401
25	Pr01
26	304
27	501
28	903
29	103
30	101
31	201
32	102
33	M103
34	M101
35	702
36	Pr02
37	901
38	701
39	203
40	M302
41	M102
42	M304
43	Pr03
44	403
45	902
46	703
\.


--
-- TOC entry 2929 (class 0 OID 32916)
-- Dependencies: 208
-- Data for Name: tb_veio_outra_escola; Type: TABLE DATA; Schema: relacional; Owner: postgres
--

COPY relacional.tb_veio_outra_escola (id_outra_escola, veio_outra_escola) FROM stdin;
1	Sim
2	Não
\.


--
-- TOC entry 2957 (class 0 OID 0)
-- Dependencies: 197
-- Name: stg_matriculas_id_seq; Type: SEQUENCE SET; Schema: relacional; Owner: postgres
--

SELECT pg_catalog.setval('relacional.stg_matriculas_id_seq', 997, true);


--
-- TOC entry 2958 (class 0 OID 0)
-- Dependencies: 215
-- Name: tb_alunos_id_aluno_seq; Type: SEQUENCE SET; Schema: relacional; Owner: postgres
--

SELECT pg_catalog.setval('relacional.tb_alunos_id_aluno_seq', 997, true);


--
-- TOC entry 2959 (class 0 OID 0)
-- Dependencies: 203
-- Name: tb_cor_raca_id_cor_seq; Type: SEQUENCE SET; Schema: relacional; Owner: postgres
--

SELECT pg_catalog.setval('relacional.tb_cor_raca_id_cor_seq', 5, true);


--
-- TOC entry 2960 (class 0 OID 0)
-- Dependencies: 205
-- Name: tb_deficiencia_id_deficiencia_seq; Type: SEQUENCE SET; Schema: relacional; Owner: postgres
--

SELECT pg_catalog.setval('relacional.tb_deficiencia_id_deficiencia_seq', 6, true);


--
-- TOC entry 2961 (class 0 OID 0)
-- Dependencies: 217
-- Name: tb_matriculas_id_matricula_seq; Type: SEQUENCE SET; Schema: relacional; Owner: postgres
--

SELECT pg_catalog.setval('relacional.tb_matriculas_id_matricula_seq', 997, true);


--
-- TOC entry 2962 (class 0 OID 0)
-- Dependencies: 199
-- Name: tb_sexo_id_sexo_seq; Type: SEQUENCE SET; Schema: relacional; Owner: postgres
--

SELECT pg_catalog.setval('relacional.tb_sexo_id_sexo_seq', 2, true);


--
-- TOC entry 2963 (class 0 OID 0)
-- Dependencies: 209
-- Name: tb_situacao_anterior_id_situacao_anterior_seq; Type: SEQUENCE SET; Schema: relacional; Owner: postgres
--

SELECT pg_catalog.setval('relacional.tb_situacao_anterior_id_situacao_anterior_seq', 3, true);


--
-- TOC entry 2964 (class 0 OID 0)
-- Dependencies: 211
-- Name: tb_status_matricula_id_status_matricula_seq; Type: SEQUENCE SET; Schema: relacional; Owner: postgres
--

SELECT pg_catalog.setval('relacional.tb_status_matricula_id_status_matricula_seq', 2, true);


--
-- TOC entry 2965 (class 0 OID 0)
-- Dependencies: 201
-- Name: tb_transporte_id_transporte_seq; Type: SEQUENCE SET; Schema: relacional; Owner: postgres
--

SELECT pg_catalog.setval('relacional.tb_transporte_id_transporte_seq', 5, true);


--
-- TOC entry 2966 (class 0 OID 0)
-- Dependencies: 213
-- Name: tb_turma_id_turma_seq; Type: SEQUENCE SET; Schema: relacional; Owner: postgres
--

SELECT pg_catalog.setval('relacional.tb_turma_id_turma_seq', 46, true);


--
-- TOC entry 2967 (class 0 OID 0)
-- Dependencies: 207
-- Name: tb_veio_outra_escola_id_outra_escola_seq; Type: SEQUENCE SET; Schema: relacional; Owner: postgres
--

SELECT pg_catalog.setval('relacional.tb_veio_outra_escola_id_outra_escola_seq', 2, true);


--
-- TOC entry 2767 (class 2606 OID 24628)
-- Name: stg_matriculas stg_matriculas_pkey; Type: CONSTRAINT; Schema: relacional; Owner: postgres
--

ALTER TABLE ONLY relacional.stg_matriculas
    ADD CONSTRAINT stg_matriculas_pkey PRIMARY KEY (id);


--
-- TOC entry 2785 (class 2606 OID 41078)
-- Name: tb_alunos tb_alunos_pkey; Type: CONSTRAINT; Schema: relacional; Owner: postgres
--

ALTER TABLE ONLY relacional.tb_alunos
    ADD CONSTRAINT tb_alunos_pkey PRIMARY KEY (id_aluno);


--
-- TOC entry 2773 (class 2606 OID 32905)
-- Name: tb_cor_raca tb_cor_raca_pkey; Type: CONSTRAINT; Schema: relacional; Owner: postgres
--

ALTER TABLE ONLY relacional.tb_cor_raca
    ADD CONSTRAINT tb_cor_raca_pkey PRIMARY KEY (id_cor);


--
-- TOC entry 2775 (class 2606 OID 32913)
-- Name: tb_deficiencia tb_deficiencia_pkey; Type: CONSTRAINT; Schema: relacional; Owner: postgres
--

ALTER TABLE ONLY relacional.tb_deficiencia
    ADD CONSTRAINT tb_deficiencia_pkey PRIMARY KEY (id_deficiencia);


--
-- TOC entry 2787 (class 2606 OID 41160)
-- Name: tb_matriculas tb_matriculas_pkey; Type: CONSTRAINT; Schema: relacional; Owner: postgres
--

ALTER TABLE ONLY relacional.tb_matriculas
    ADD CONSTRAINT tb_matriculas_pkey PRIMARY KEY (id_matricula);


--
-- TOC entry 2769 (class 2606 OID 24691)
-- Name: tb_sexo tb_sexo_pkey; Type: CONSTRAINT; Schema: relacional; Owner: postgres
--

ALTER TABLE ONLY relacional.tb_sexo
    ADD CONSTRAINT tb_sexo_pkey PRIMARY KEY (id_sexo);


--
-- TOC entry 2779 (class 2606 OID 32929)
-- Name: tb_situacao_anterior tb_situacao_anterior_pkey; Type: CONSTRAINT; Schema: relacional; Owner: postgres
--

ALTER TABLE ONLY relacional.tb_situacao_anterior
    ADD CONSTRAINT tb_situacao_anterior_pkey PRIMARY KEY (id_situacao_anterior);


--
-- TOC entry 2781 (class 2606 OID 32937)
-- Name: tb_status_matricula tb_status_matricula_pkey; Type: CONSTRAINT; Schema: relacional; Owner: postgres
--

ALTER TABLE ONLY relacional.tb_status_matricula
    ADD CONSTRAINT tb_status_matricula_pkey PRIMARY KEY (id_status_matricula);


--
-- TOC entry 2771 (class 2606 OID 32897)
-- Name: tb_transporte tb_transporte_pkey; Type: CONSTRAINT; Schema: relacional; Owner: postgres
--

ALTER TABLE ONLY relacional.tb_transporte
    ADD CONSTRAINT tb_transporte_pkey PRIMARY KEY (id_transporte);


--
-- TOC entry 2783 (class 2606 OID 32945)
-- Name: tb_turma tb_turma_pkey; Type: CONSTRAINT; Schema: relacional; Owner: postgres
--

ALTER TABLE ONLY relacional.tb_turma
    ADD CONSTRAINT tb_turma_pkey PRIMARY KEY (id_turma);


--
-- TOC entry 2777 (class 2606 OID 32921)
-- Name: tb_veio_outra_escola tb_veio_outra_escola_pkey; Type: CONSTRAINT; Schema: relacional; Owner: postgres
--

ALTER TABLE ONLY relacional.tb_veio_outra_escola
    ADD CONSTRAINT tb_veio_outra_escola_pkey PRIMARY KEY (id_outra_escola);


--
-- TOC entry 2765 (class 1259 OID 24629)
-- Name: idx_stg_matriculas; Type: INDEX; Schema: relacional; Owner: postgres
--

CREATE INDEX idx_stg_matriculas ON relacional.stg_matriculas USING btree (id, nome, sexo, cor_raca, deficiencia, transporte, turma, status_matricula);


--
-- TOC entry 2788 (class 2606 OID 41079)
-- Name: tb_alunos tb_alunos_cor_raca_fkey; Type: FK CONSTRAINT; Schema: relacional; Owner: postgres
--

ALTER TABLE ONLY relacional.tb_alunos
    ADD CONSTRAINT tb_alunos_cor_raca_fkey FOREIGN KEY (cor_raca) REFERENCES relacional.tb_cor_raca(id_cor);


--
-- TOC entry 2789 (class 2606 OID 41084)
-- Name: tb_alunos tb_alunos_deficiencia_fkey; Type: FK CONSTRAINT; Schema: relacional; Owner: postgres
--

ALTER TABLE ONLY relacional.tb_alunos
    ADD CONSTRAINT tb_alunos_deficiencia_fkey FOREIGN KEY (deficiencia) REFERENCES relacional.tb_deficiencia(id_deficiencia);


--
-- TOC entry 2790 (class 2606 OID 41089)
-- Name: tb_alunos tb_alunos_sexo_fkey; Type: FK CONSTRAINT; Schema: relacional; Owner: postgres
--

ALTER TABLE ONLY relacional.tb_alunos
    ADD CONSTRAINT tb_alunos_sexo_fkey FOREIGN KEY (sexo) REFERENCES relacional.tb_sexo(id_sexo);


--
-- TOC entry 2791 (class 2606 OID 41094)
-- Name: tb_alunos tb_alunos_transporte_fkey; Type: FK CONSTRAINT; Schema: relacional; Owner: postgres
--

ALTER TABLE ONLY relacional.tb_alunos
    ADD CONSTRAINT tb_alunos_transporte_fkey FOREIGN KEY (transporte) REFERENCES relacional.tb_transporte(id_transporte);


--
-- TOC entry 2792 (class 2606 OID 41161)
-- Name: tb_matriculas tb_matriculas_id_aluno_fkey; Type: FK CONSTRAINT; Schema: relacional; Owner: postgres
--

ALTER TABLE ONLY relacional.tb_matriculas
    ADD CONSTRAINT tb_matriculas_id_aluno_fkey FOREIGN KEY (id_aluno) REFERENCES relacional.tb_alunos(id_aluno);


--
-- TOC entry 2794 (class 2606 OID 41171)
-- Name: tb_matriculas tb_matriculas_situacao_anterior_fkey; Type: FK CONSTRAINT; Schema: relacional; Owner: postgres
--

ALTER TABLE ONLY relacional.tb_matriculas
    ADD CONSTRAINT tb_matriculas_situacao_anterior_fkey FOREIGN KEY (situacao_anterior) REFERENCES relacional.tb_situacao_anterior(id_situacao_anterior);


--
-- TOC entry 2795 (class 2606 OID 41176)
-- Name: tb_matriculas tb_matriculas_status_matricula_fkey; Type: FK CONSTRAINT; Schema: relacional; Owner: postgres
--

ALTER TABLE ONLY relacional.tb_matriculas
    ADD CONSTRAINT tb_matriculas_status_matricula_fkey FOREIGN KEY (status_matricula) REFERENCES relacional.tb_status_matricula(id_status_matricula);


--
-- TOC entry 2796 (class 2606 OID 41181)
-- Name: tb_matriculas tb_matriculas_turma_fkey; Type: FK CONSTRAINT; Schema: relacional; Owner: postgres
--

ALTER TABLE ONLY relacional.tb_matriculas
    ADD CONSTRAINT tb_matriculas_turma_fkey FOREIGN KEY (turma) REFERENCES relacional.tb_turma(id_turma);


--
-- TOC entry 2793 (class 2606 OID 41166)
-- Name: tb_matriculas tb_matriculas_veio_outra_escola_fkey; Type: FK CONSTRAINT; Schema: relacional; Owner: postgres
--

ALTER TABLE ONLY relacional.tb_matriculas
    ADD CONSTRAINT tb_matriculas_veio_outra_escola_fkey FOREIGN KEY (veio_outra_escola) REFERENCES relacional.tb_veio_outra_escola(id_outra_escola);


-- Completed on 2021-09-19 20:59:31

--
-- PostgreSQL database dump complete
--

