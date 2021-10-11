PGDMP                     	    y            bd_dashboard_base    10.16    13.2 }    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    51555    bd_dashboard_base    DATABASE     p   CREATE DATABASE bd_dashboard_base WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Colombia.1252';
 !   DROP DATABASE bd_dashboard_base;
                postgres    false            �            1259    56904    ciudades    TABLE     �  CREATE TABLE public.ciudades (
    id bigint NOT NULL,
    nombre character varying(255) NOT NULL,
    codigo_dane character varying(255) NOT NULL,
    observacion text NOT NULL,
    departamento_id bigint NOT NULL,
    estado boolean NOT NULL,
    user_created_at integer,
    user_updated_at integer,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.ciudades;
       public            postgres    false            �            1259    56902    ciudades_id_seq    SEQUENCE     x   CREATE SEQUENCE public.ciudades_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.ciudades_id_seq;
       public          postgres    false    217            �           0    0    ciudades_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.ciudades_id_seq OWNED BY public.ciudades.id;
          public          postgres    false    216            �            1259    56888    departamentos    TABLE     �  CREATE TABLE public.departamentos (
    id bigint NOT NULL,
    nombre character varying(255) NOT NULL,
    codigo_dane character varying(255) NOT NULL,
    observacion text NOT NULL,
    pais_id bigint NOT NULL,
    estado boolean NOT NULL,
    user_created_at integer,
    user_updated_at integer,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 !   DROP TABLE public.departamentos;
       public            postgres    false            �            1259    56886    departamentos_id_seq    SEQUENCE     }   CREATE SEQUENCE public.departamentos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.departamentos_id_seq;
       public          postgres    false    215            �           0    0    departamentos_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.departamentos_id_seq OWNED BY public.departamentos.id;
          public          postgres    false    214            �            1259    56953    dependencias    TABLE     x  CREATE TABLE public.dependencias (
    id bigint NOT NULL,
    codigo integer NOT NULL,
    nombre character varying(255) NOT NULL,
    sede character varying(255),
    email character varying(255),
    encargado integer,
    user_created_at integer,
    user_updated_at integer,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
     DROP TABLE public.dependencias;
       public            postgres    false            �            1259    56951    dependencias_id_seq    SEQUENCE     |   CREATE SEQUENCE public.dependencias_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.dependencias_id_seq;
       public          postgres    false    223            �           0    0    dependencias_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.dependencias_id_seq OWNED BY public.dependencias.id;
          public          postgres    false    222            �            1259    51558 
   migrations    TABLE     �   CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);
    DROP TABLE public.migrations;
       public            postgres    false            �            1259    51556    migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.migrations_id_seq;
       public          postgres    false    197            �           0    0    migrations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;
          public          postgres    false    196            �            1259    56811    model_has_permissions    TABLE     �   CREATE TABLE public.model_has_permissions (
    permission_id bigint NOT NULL,
    model_type character varying(255) NOT NULL,
    model_id bigint NOT NULL
);
 )   DROP TABLE public.model_has_permissions;
       public            postgres    false            �            1259    56822    model_has_roles    TABLE     �   CREATE TABLE public.model_has_roles (
    role_id bigint NOT NULL,
    model_type character varying(255) NOT NULL,
    model_id bigint NOT NULL
);
 #   DROP TABLE public.model_has_roles;
       public            postgres    false            �            1259    56861    modulos    TABLE     �  CREATE TABLE public.modulos (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    url character varying(255) NOT NULL,
    paquete_id bigint NOT NULL,
    icon character varying(255) NOT NULL,
    observation text NOT NULL,
    state boolean NOT NULL,
    "position" integer NOT NULL,
    user_created_at integer,
    user_updated_at integer,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.modulos;
       public            postgres    false            �            1259    56859    modulos_id_seq    SEQUENCE     w   CREATE SEQUENCE public.modulos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.modulos_id_seq;
       public          postgres    false    211            �           0    0    modulos_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.modulos_id_seq OWNED BY public.modulos.id;
          public          postgres    false    210            �            1259    56978    notifications    TABLE     `  CREATE TABLE public.notifications (
    id uuid NOT NULL,
    type character varying(255) NOT NULL,
    notifiable_type character varying(255) NOT NULL,
    notifiable_id bigint NOT NULL,
    data text NOT NULL,
    read_at timestamp(0) without time zone,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 !   DROP TABLE public.notifications;
       public            postgres    false            �            1259    56877    paises    TABLE     y  CREATE TABLE public.paises (
    id bigint NOT NULL,
    nombre character varying(255) NOT NULL,
    codigo_dane character varying(255) NOT NULL,
    codigo_iso character varying(255) NOT NULL,
    estado boolean NOT NULL,
    user_created_at integer,
    user_updated_at integer,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.paises;
       public            postgres    false            �            1259    56875    paises_id_seq    SEQUENCE     v   CREATE SEQUENCE public.paises_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.paises_id_seq;
       public          postgres    false    213            �           0    0    paises_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.paises_id_seq OWNED BY public.paises.id;
          public          postgres    false    212            �            1259    56850    paquetes    TABLE     �  CREATE TABLE public.paquetes (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    icon character varying(255) NOT NULL,
    url character varying(255) NOT NULL,
    observation text NOT NULL,
    state boolean NOT NULL,
    user_created_at integer,
    user_updated_at integer,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.paquetes;
       public            postgres    false            �            1259    56848    paquetes_id_seq    SEQUENCE     x   CREATE SEQUENCE public.paquetes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.paquetes_id_seq;
       public          postgres    false    209            �           0    0    paquetes_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.paquetes_id_seq OWNED BY public.paquetes.id;
          public          postgres    false    208            �            1259    56782    password_resets    TABLE     �   CREATE TABLE public.password_resets (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);
 #   DROP TABLE public.password_resets;
       public            postgres    false            �            1259    56791    permissions    TABLE       CREATE TABLE public.permissions (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    guard_name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    modulo_id integer
);
    DROP TABLE public.permissions;
       public            postgres    false            �            1259    56789    permissions_id_seq    SEQUENCE     {   CREATE SEQUENCE public.permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.permissions_id_seq;
       public          postgres    false    202            �           0    0    permissions_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.permissions_id_seq OWNED BY public.permissions.id;
          public          postgres    false    201            �            1259    56833    role_has_permissions    TABLE     m   CREATE TABLE public.role_has_permissions (
    permission_id bigint NOT NULL,
    role_id bigint NOT NULL
);
 (   DROP TABLE public.role_has_permissions;
       public            postgres    false            �            1259    56802    roles    TABLE     �   CREATE TABLE public.roles (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    guard_name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.roles;
       public            postgres    false            �            1259    56800    roles_id_seq    SEQUENCE     u   CREATE SEQUENCE public.roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.roles_id_seq;
       public          postgres    false    204            �           0    0    roles_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;
          public          postgres    false    203            �            1259    56920    tipomaestro    TABLE     I  CREATE TABLE public.tipomaestro (
    id bigint NOT NULL,
    nombre character varying(255) NOT NULL,
    observacion text NOT NULL,
    estado boolean DEFAULT true NOT NULL,
    user_created_at integer,
    user_updated_at integer,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.tipomaestro;
       public            postgres    false            �            1259    56918    tipomaestro_id_seq    SEQUENCE     {   CREATE SEQUENCE public.tipomaestro_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.tipomaestro_id_seq;
       public          postgres    false    219            �           0    0    tipomaestro_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.tipomaestro_id_seq OWNED BY public.tipomaestro.id;
          public          postgres    false    218            �            1259    56932    tipomaestroitem    TABLE     �  CREATE TABLE public.tipomaestroitem (
    id bigint NOT NULL,
    nombre character varying(255) NOT NULL,
    numitem integer NOT NULL,
    observacion text NOT NULL,
    estado boolean DEFAULT true NOT NULL,
    tipomaestro_id bigint NOT NULL,
    user_created_at integer,
    user_updated_at integer,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 #   DROP TABLE public.tipomaestroitem;
       public            postgres    false            �            1259    56930    tipomaestroitem_id_seq    SEQUENCE        CREATE SEQUENCE public.tipomaestroitem_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.tipomaestroitem_id_seq;
       public          postgres    false    221            �           0    0    tipomaestroitem_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.tipomaestroitem_id_seq OWNED BY public.tipomaestroitem.id;
          public          postgres    false    220            �            1259    56964 	   user_info    TABLE       CREATE TABLE public.user_info (
    id bigint NOT NULL,
    foto character varying(255),
    email_institucional character varying(255),
    telefonos json,
    facebook character varying(255),
    instagram character varying(255),
    user_id bigint NOT NULL,
    codigo_estudiante character varying(255),
    semestre integer,
    sede character varying(255),
    jornada integer,
    periodo_academico character varying(255),
    codigo_carrera integer,
    dependencia_id integer,
    user_created_at integer,
    user_updated_at integer,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.user_info;
       public            postgres    false            �            1259    56962    user_info_id_seq    SEQUENCE     y   CREATE SEQUENCE public.user_info_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.user_info_id_seq;
       public          postgres    false    225            �           0    0    user_info_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.user_info_id_seq OWNED BY public.user_info.id;
          public          postgres    false    224            �            1259    56770    users    TABLE     �  CREATE TABLE public.users (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    email_verified_at timestamp(0) without time zone,
    password character varying(255) NOT NULL,
    remember_token character varying(100),
    user_created_at integer,
    user_updated_at integer,
    state double precision DEFAULT '0'::double precision NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.users;
       public            postgres    false            �            1259    56768    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    199            �           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    198            �
           2604    56907    ciudades id    DEFAULT     j   ALTER TABLE ONLY public.ciudades ALTER COLUMN id SET DEFAULT nextval('public.ciudades_id_seq'::regclass);
 :   ALTER TABLE public.ciudades ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216    217            �
           2604    56891    departamentos id    DEFAULT     t   ALTER TABLE ONLY public.departamentos ALTER COLUMN id SET DEFAULT nextval('public.departamentos_id_seq'::regclass);
 ?   ALTER TABLE public.departamentos ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215            �
           2604    56956    dependencias id    DEFAULT     r   ALTER TABLE ONLY public.dependencias ALTER COLUMN id SET DEFAULT nextval('public.dependencias_id_seq'::regclass);
 >   ALTER TABLE public.dependencias ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    223    223            �
           2604    51561    migrations id    DEFAULT     n   ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);
 <   ALTER TABLE public.migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    197    196    197            �
           2604    56864 
   modulos id    DEFAULT     h   ALTER TABLE ONLY public.modulos ALTER COLUMN id SET DEFAULT nextval('public.modulos_id_seq'::regclass);
 9   ALTER TABLE public.modulos ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    211    211            �
           2604    56880 	   paises id    DEFAULT     f   ALTER TABLE ONLY public.paises ALTER COLUMN id SET DEFAULT nextval('public.paises_id_seq'::regclass);
 8   ALTER TABLE public.paises ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    212    213            �
           2604    56853    paquetes id    DEFAULT     j   ALTER TABLE ONLY public.paquetes ALTER COLUMN id SET DEFAULT nextval('public.paquetes_id_seq'::regclass);
 :   ALTER TABLE public.paquetes ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    208    209            �
           2604    56794    permissions id    DEFAULT     p   ALTER TABLE ONLY public.permissions ALTER COLUMN id SET DEFAULT nextval('public.permissions_id_seq'::regclass);
 =   ALTER TABLE public.permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    202    201    202            �
           2604    56805    roles id    DEFAULT     d   ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);
 7   ALTER TABLE public.roles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    204    204            �
           2604    56923    tipomaestro id    DEFAULT     p   ALTER TABLE ONLY public.tipomaestro ALTER COLUMN id SET DEFAULT nextval('public.tipomaestro_id_seq'::regclass);
 =   ALTER TABLE public.tipomaestro ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    219    219            �
           2604    56935    tipomaestroitem id    DEFAULT     x   ALTER TABLE ONLY public.tipomaestroitem ALTER COLUMN id SET DEFAULT nextval('public.tipomaestroitem_id_seq'::regclass);
 A   ALTER TABLE public.tipomaestroitem ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220    221            �
           2604    56967    user_info id    DEFAULT     l   ALTER TABLE ONLY public.user_info ALTER COLUMN id SET DEFAULT nextval('public.user_info_id_seq'::regclass);
 ;   ALTER TABLE public.user_info ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    224    225            �
           2604    56773    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    198    199    199            �          0    56904    ciudades 
   TABLE DATA           �   COPY public.ciudades (id, nombre, codigo_dane, observacion, departamento_id, estado, user_created_at, user_updated_at, created_at, updated_at) FROM stdin;
    public          postgres    false    217   =�       �          0    56888    departamentos 
   TABLE DATA           �   COPY public.departamentos (id, nombre, codigo_dane, observacion, pais_id, estado, user_created_at, user_updated_at, created_at, updated_at) FROM stdin;
    public          postgres    false    215   ¢       �          0    56953    dependencias 
   TABLE DATA           �   COPY public.dependencias (id, codigo, nombre, sede, email, encargado, user_created_at, user_updated_at, created_at, updated_at) FROM stdin;
    public          postgres    false    223   @�       �          0    51558 
   migrations 
   TABLE DATA           :   COPY public.migrations (id, migration, batch) FROM stdin;
    public          postgres    false    197   ��       �          0    56811    model_has_permissions 
   TABLE DATA           T   COPY public.model_has_permissions (permission_id, model_type, model_id) FROM stdin;
    public          postgres    false    205   ��       �          0    56822    model_has_roles 
   TABLE DATA           H   COPY public.model_has_roles (role_id, model_type, model_id) FROM stdin;
    public          postgres    false    206   �       �          0    56861    modulos 
   TABLE DATA           �   COPY public.modulos (id, name, url, paquete_id, icon, observation, state, "position", user_created_at, user_updated_at, created_at, updated_at) FROM stdin;
    public          postgres    false    211   <�       �          0    56978    notifications 
   TABLE DATA           x   COPY public.notifications (id, type, notifiable_type, notifiable_id, data, read_at, created_at, updated_at) FROM stdin;
    public          postgres    false    226   i�       �          0    56877    paises 
   TABLE DATA           �   COPY public.paises (id, nombre, codigo_dane, codigo_iso, estado, user_created_at, user_updated_at, created_at, updated_at) FROM stdin;
    public          postgres    false    213   ��       �          0    56850    paquetes 
   TABLE DATA           �   COPY public.paquetes (id, name, icon, url, observation, state, user_created_at, user_updated_at, created_at, updated_at) FROM stdin;
    public          postgres    false    209   �       �          0    56782    password_resets 
   TABLE DATA           C   COPY public.password_resets (email, token, created_at) FROM stdin;
    public          postgres    false    200   9�       �          0    56791    permissions 
   TABLE DATA           ^   COPY public.permissions (id, name, guard_name, created_at, updated_at, modulo_id) FROM stdin;
    public          postgres    false    202   V�       �          0    56833    role_has_permissions 
   TABLE DATA           F   COPY public.role_has_permissions (permission_id, role_id) FROM stdin;
    public          postgres    false    207   ��       �          0    56802    roles 
   TABLE DATA           M   COPY public.roles (id, name, guard_name, created_at, updated_at) FROM stdin;
    public          postgres    false    204   �       �          0    56920    tipomaestro 
   TABLE DATA           �   COPY public.tipomaestro (id, nombre, observacion, estado, user_created_at, user_updated_at, created_at, updated_at) FROM stdin;
    public          postgres    false    219   d�       �          0    56932    tipomaestroitem 
   TABLE DATA           �   COPY public.tipomaestroitem (id, nombre, numitem, observacion, estado, tipomaestro_id, user_created_at, user_updated_at, created_at, updated_at) FROM stdin;
    public          postgres    false    221   ��       �          0    56964 	   user_info 
   TABLE DATA             COPY public.user_info (id, foto, email_institucional, telefonos, facebook, instagram, user_id, codigo_estudiante, semestre, sede, jornada, periodo_academico, codigo_carrera, dependencia_id, user_created_at, user_updated_at, created_at, updated_at) FROM stdin;
    public          postgres    false    225   -�       �          0    56770    users 
   TABLE DATA           �   COPY public.users (id, name, email, email_verified_at, password, remember_token, user_created_at, user_updated_at, state, created_at, updated_at) FROM stdin;
    public          postgres    false    199   m�       �           0    0    ciudades_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.ciudades_id_seq', 126, true);
          public          postgres    false    216            �           0    0    departamentos_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.departamentos_id_seq', 33, true);
          public          postgres    false    214            �           0    0    dependencias_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.dependencias_id_seq', 18, true);
          public          postgres    false    222            �           0    0    migrations_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.migrations_id_seq', 168, true);
          public          postgres    false    196            �           0    0    modulos_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.modulos_id_seq', 11, true);
          public          postgres    false    210            �           0    0    paises_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.paises_id_seq', 5, true);
          public          postgres    false    212            �           0    0    paquetes_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.paquetes_id_seq', 2, true);
          public          postgres    false    208            �           0    0    permissions_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.permissions_id_seq', 38, true);
          public          postgres    false    201            �           0    0    roles_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.roles_id_seq', 3, true);
          public          postgres    false    203            �           0    0    tipomaestro_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.tipomaestro_id_seq', 14, true);
          public          postgres    false    218            �           0    0    tipomaestroitem_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.tipomaestroitem_id_seq', 55, true);
          public          postgres    false    220            �           0    0    user_info_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.user_info_id_seq', 1, true);
          public          postgres    false    224            �           0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 1, true);
          public          postgres    false    198                       2606    56912    ciudades ciudades_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.ciudades
    ADD CONSTRAINT ciudades_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.ciudades DROP CONSTRAINT ciudades_pkey;
       public            postgres    false    217                       2606    56896     departamentos departamentos_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.departamentos
    ADD CONSTRAINT departamentos_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.departamentos DROP CONSTRAINT departamentos_pkey;
       public            postgres    false    215                       2606    56961    dependencias dependencias_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.dependencias
    ADD CONSTRAINT dependencias_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.dependencias DROP CONSTRAINT dependencias_pkey;
       public            postgres    false    223            �
           2606    51563    migrations migrations_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.migrations DROP CONSTRAINT migrations_pkey;
       public            postgres    false    197            �
           2606    56821 0   model_has_permissions model_has_permissions_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.model_has_permissions
    ADD CONSTRAINT model_has_permissions_pkey PRIMARY KEY (permission_id, model_id, model_type);
 Z   ALTER TABLE ONLY public.model_has_permissions DROP CONSTRAINT model_has_permissions_pkey;
       public            postgres    false    205    205    205            �
           2606    56832 $   model_has_roles model_has_roles_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY public.model_has_roles
    ADD CONSTRAINT model_has_roles_pkey PRIMARY KEY (role_id, model_id, model_type);
 N   ALTER TABLE ONLY public.model_has_roles DROP CONSTRAINT model_has_roles_pkey;
       public            postgres    false    206    206    206                       2606    56869    modulos modulos_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.modulos
    ADD CONSTRAINT modulos_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.modulos DROP CONSTRAINT modulos_pkey;
       public            postgres    false    211                       2606    56986     notifications notifications_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.notifications
    ADD CONSTRAINT notifications_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.notifications DROP CONSTRAINT notifications_pkey;
       public            postgres    false    226                       2606    56885    paises paises_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.paises
    ADD CONSTRAINT paises_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.paises DROP CONSTRAINT paises_pkey;
       public            postgres    false    213                        2606    56858    paquetes paquetes_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.paquetes
    ADD CONSTRAINT paquetes_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.paquetes DROP CONSTRAINT paquetes_pkey;
       public            postgres    false    209            �
           2606    56950     permissions permissions_name_key 
   CONSTRAINT     [   ALTER TABLE ONLY public.permissions
    ADD CONSTRAINT permissions_name_key UNIQUE (name);
 J   ALTER TABLE ONLY public.permissions DROP CONSTRAINT permissions_name_key;
       public            postgres    false    202            �
           2606    56799    permissions permissions_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.permissions
    ADD CONSTRAINT permissions_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.permissions DROP CONSTRAINT permissions_pkey;
       public            postgres    false    202            �
           2606    56847 .   role_has_permissions role_has_permissions_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.role_has_permissions
    ADD CONSTRAINT role_has_permissions_pkey PRIMARY KEY (permission_id, role_id);
 X   ALTER TABLE ONLY public.role_has_permissions DROP CONSTRAINT role_has_permissions_pkey;
       public            postgres    false    207    207            �
           2606    56948    roles roles_name_key 
   CONSTRAINT     O   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_name_key UNIQUE (name);
 >   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_name_key;
       public            postgres    false    204            �
           2606    56810    roles roles_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_pkey;
       public            postgres    false    204            
           2606    56929    tipomaestro tipomaestro_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.tipomaestro
    ADD CONSTRAINT tipomaestro_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.tipomaestro DROP CONSTRAINT tipomaestro_pkey;
       public            postgres    false    219                       2606    56941 $   tipomaestroitem tipomaestroitem_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.tipomaestroitem
    ADD CONSTRAINT tipomaestroitem_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.tipomaestroitem DROP CONSTRAINT tipomaestroitem_pkey;
       public            postgres    false    221                       2606    56972    user_info user_info_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.user_info
    ADD CONSTRAINT user_info_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.user_info DROP CONSTRAINT user_info_pkey;
       public            postgres    false    225            �
           2606    56781    users users_email_unique 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_unique;
       public            postgres    false    199            �
           2606    56779    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    199            �
           1259    56814 /   model_has_permissions_model_id_model_type_index    INDEX     �   CREATE INDEX model_has_permissions_model_id_model_type_index ON public.model_has_permissions USING btree (model_id, model_type);
 C   DROP INDEX public.model_has_permissions_model_id_model_type_index;
       public            postgres    false    205    205            �
           1259    56825 )   model_has_roles_model_id_model_type_index    INDEX     u   CREATE INDEX model_has_roles_model_id_model_type_index ON public.model_has_roles USING btree (model_id, model_type);
 =   DROP INDEX public.model_has_roles_model_id_model_type_index;
       public            postgres    false    206    206                       1259    56984 1   notifications_notifiable_type_notifiable_id_index    INDEX     �   CREATE INDEX notifications_notifiable_type_notifiable_id_index ON public.notifications USING btree (notifiable_type, notifiable_id);
 E   DROP INDEX public.notifications_notifiable_type_notifiable_id_index;
       public            postgres    false    226    226            �
           1259    56788    password_resets_email_index    INDEX     X   CREATE INDEX password_resets_email_index ON public.password_resets USING btree (email);
 /   DROP INDEX public.password_resets_email_index;
       public            postgres    false    200                       2606    56913 )   ciudades ciudades_departamento_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.ciudades
    ADD CONSTRAINT ciudades_departamento_id_foreign FOREIGN KEY (departamento_id) REFERENCES public.departamentos(id) ON DELETE CASCADE;
 S   ALTER TABLE ONLY public.ciudades DROP CONSTRAINT ciudades_departamento_id_foreign;
       public          postgres    false    215    2822    217                       2606    56897 +   departamentos departamentos_pais_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.departamentos
    ADD CONSTRAINT departamentos_pais_id_foreign FOREIGN KEY (pais_id) REFERENCES public.paises(id) ON DELETE CASCADE;
 U   ALTER TABLE ONLY public.departamentos DROP CONSTRAINT departamentos_pais_id_foreign;
       public          postgres    false    215    2820    213                       2606    56815 A   model_has_permissions model_has_permissions_permission_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.model_has_permissions
    ADD CONSTRAINT model_has_permissions_permission_id_foreign FOREIGN KEY (permission_id) REFERENCES public.permissions(id) ON DELETE CASCADE;
 k   ALTER TABLE ONLY public.model_has_permissions DROP CONSTRAINT model_has_permissions_permission_id_foreign;
       public          postgres    false    2802    205    202                       2606    56826 /   model_has_roles model_has_roles_role_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.model_has_roles
    ADD CONSTRAINT model_has_roles_role_id_foreign FOREIGN KEY (role_id) REFERENCES public.roles(id) ON DELETE CASCADE;
 Y   ALTER TABLE ONLY public.model_has_roles DROP CONSTRAINT model_has_roles_role_id_foreign;
       public          postgres    false    206    2806    204                       2606    56870 "   modulos modulos_paquete_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.modulos
    ADD CONSTRAINT modulos_paquete_id_foreign FOREIGN KEY (paquete_id) REFERENCES public.paquetes(id) ON DELETE CASCADE;
 L   ALTER TABLE ONLY public.modulos DROP CONSTRAINT modulos_paquete_id_foreign;
       public          postgres    false    209    2816    211                       2606    56836 ?   role_has_permissions role_has_permissions_permission_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.role_has_permissions
    ADD CONSTRAINT role_has_permissions_permission_id_foreign FOREIGN KEY (permission_id) REFERENCES public.permissions(id) ON DELETE CASCADE;
 i   ALTER TABLE ONLY public.role_has_permissions DROP CONSTRAINT role_has_permissions_permission_id_foreign;
       public          postgres    false    202    2802    207                       2606    56841 9   role_has_permissions role_has_permissions_role_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.role_has_permissions
    ADD CONSTRAINT role_has_permissions_role_id_foreign FOREIGN KEY (role_id) REFERENCES public.roles(id) ON DELETE CASCADE;
 c   ALTER TABLE ONLY public.role_has_permissions DROP CONSTRAINT role_has_permissions_role_id_foreign;
       public          postgres    false    2806    207    204                       2606    56942 6   tipomaestroitem tipomaestroitem_tipomaestro_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.tipomaestroitem
    ADD CONSTRAINT tipomaestroitem_tipomaestro_id_foreign FOREIGN KEY (tipomaestro_id) REFERENCES public.tipomaestro(id) ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.tipomaestroitem DROP CONSTRAINT tipomaestroitem_tipomaestro_id_foreign;
       public          postgres    false    2826    219    221                       2606    56973 #   user_info user_info_user_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_info
    ADD CONSTRAINT user_info_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;
 M   ALTER TABLE ONLY public.user_info DROP CONSTRAINT user_info_user_id_foreign;
       public          postgres    false    199    2797    225            �   u  x�u��n�F�����I�����A��Um�@�l���<�h��HѮ��e^~�X�ʭk���wf��~N�Nm%����JT�>_��;Iթ[�m��Q΀w�oĵz_��:�km;����v�{���N��5�g��X3PF`e�ŭ4��s1�^Վ~V2���$���ލ~�����`
A<n!A���}#kf�d�.d��s�»����Xʋ����O#�ޛ��2��zo(��K[{�b�c��8���J���J|��h�>Ȧu+N3�������3W���?:�=1?�y�w�jjP,�)�p:Us��u*���Js8S7z�x�e�fcuc�/������J����T݊����8�ԭ��,�։Z��X��mi	�
��B/��;�wb��1\�;���L}����5c�>��%�/�����i���}���1���G�3<QW�JSc ��][Ju�n�
9`S\���GCx����F,��Yh-���|����݋����F3��3T)[u��2(�/��>�����u?� ��Kf��P���U�Ǹ�h9gS�奺�}r�,d.2�8��1�
�	�
$!R.j$8ũ��}%;j����N�D��F��S��0}��4DҡeŪ�^��E�O��o�c���<FO��ˎC��ˍVzd��(�_��1�d ��:7��ܣEKD�"[,r����U��I�K�`,�y�U�U\�"V��5��4A���ϣ���7���`lrLd�,rc*�A9�/s��.���$�(���,�{�B��[�=Ԩ��,0�o���E�w�;z8�Y� �W��k�"LGu��6U�z�a�{�b`@���5�������0yv�B??�i�5B�OLV����3�f����/*�����y0˾�h��w���x�5����e��c�@��0ަ{"8À�V���4�a�	�9�Xk���!���l��7c1�����/��!�r vYs8}�Vq���0�82�5��� ?j�+�\���a
_�uGS��D��KA�z�!ɤ�Qp����/!Ӷ�2Y��Շ�W�oT��^5�P�+�Պzk�o���[��%�P�X��h�%X�X+T�w�s�����0&%�y,�����������������?�Pͩ      �   n  x�mSKn�0]?N�	"l�^NJ\;5)U�ы�L�XǪ�.����}F� �z^|m)[�8 
�x���Ұ�gڠ�3�2������3��V�3��.%���1��J��as�]�����<2�ޣ������<�SgL5�T�2����0���m&���Z��]�E�便"z-�Ө7
;�yI�z�g�D�=j@r�l	�(���� ��Qn٦���`�ޭ\�qN�_.�O��Zq!�mb�I�Mk�b.�<B#�8��+3B�t�}���Aw����3b��>kj�&-&�a��pE��6�����6B9����;��Jp�m
�����
�����`o����1Jh���9
{�.UU� �p��      �   e  x��T�n�0�����l�yl��,lɐ�"�M���3:���c�ӎ	q�;��H٣wL!]/W���?��r}5���r����ʩ��.�͢l��l�z۴��T�c���$���8$-�j�8�s|��Z�4��;-�%,aO)s�n�g��[h�E��i�`".���acD'E�$l`��g�������t�"�%H%r�2FF�;�5yl��|�;y4cǿp��E�V`����D7�&j���x�I��K{�8�a�BC�	�L�^��r���gG�1O��3�L�X��T5�;|
���ftYcA�L7�y'�Z���̰��b��=�2{4����T���(~ I��      �   /  x�m�[n� E���T��r�RiD�DB�!�n��Il��s�rg@����M�]eZ
�B�}��кG��])�){�\���Y��j�"��K��PJH���M�gAK��+?W�O4�싞�_n��/gF���TSic�a�5��&�>��7�y���.W7s�} ��
�Na�Ο�m	Q
�]�=͎Kͩԛ �?!T�;i�r�!���VZ�[IS�f"-1�9Pl����ܞ��Gg�qA[�V X)�8z�Sp���n�륅jOv;H!^�o�O7C���S�0��NpW�>�a����      �      x������ � �      �      x�3�t,(��	-N-�4����� 5i�      �     x����n� ��ק�hD;ζ�t1ͤiw��
:$ ���V4$v�`�?�;�A
Zrf�)t�vH�k���<�,�$�IV���ť��zI7������M�A$��À�r���K
�j6ImA�q�QDD	7n��~���Fd�^eD��S�:�"��hp��j-�U�����*��7�U$"�F��:�eP��ҳ�K�ŭ%����è3���C��̢*(�]��EL�߬I�:���1������oܩ�rs���Y����
\��o��x���~��S�$?���m      �      x������ � �      �   N   x�3�t����u�t���,��#.#N���Ĕ�"c΀Ԣû0�M8]�K�:�B�2��S�����1db���� ��#>      �   E   x�3�t��K�L�LKTHK�M�O�L��%�$r�p�������ř���P�I�EŜI�!,b���� ��0      �      x������ � �      �   J  x�}��j�0Eמ��K~/K�E�)���l�x�*���M�䌌���;��d�P����%�����n�<_�,:��Y�*�Y j�6�]��h�0�	�˵P{��ѧ�����j���^�� K�̨z��90�2�:�B��3��)�qw�����Vĵ��ĕ2е{1��V�
njx�zxIPO��o1�]j�@nS8	eD����\�hz\�]U���l/�V��5�KZ*W��M�ҳP���R��*Y��-�Β�uy����O
�V�r�����n�U܏wup�HA����/�U�xN��^7�9?�?�JzK      �   V   x�λ� њ���w��ť�E㖶����jw{�6�8L�V��Z��^ !�0�#�0�#�0"� �"� ��]g���5      �   >   x�3�tL����,.)JL�/�,OM��".#N�ԼԢ�$1cN��Ҕ�ļ�T$�=... `W�      �   )  x���An�0E��)|�D(-�E@$�*��l,p%K�6Q�k�$U���
! ���H����yc��B����0NH���!��ADA�������'�x��*�I\˴���6�K�����y���{��`bq��9�J���j�AB_��W=� ��^�����2����p�oY��@�^��gZ6$�d��J��	}��O����ZbVH�w���P5�Ԋ��RN�fS|#X���2�8v��-�R`Y����e�,k���G�<?�f�!����7�X���,��Q,�u���L��      �   �  x�Ř�n�6���Sp� Icɗس���A|�')��-1*iP�����dQ��b�)ڊ'�i�($���R<& ����&��)�w�h�����2o~Z�a����U4�4]a^�r^�,���r��������Uk�ѽ(�����Eg@�чn�Co�Z_�Of�W�����Ht�U�r �dX����t/��e�{�8�G�7hHf�4�;�����Y��F��Ԣ`Z�jD�' �yRɴ^7�Y!����n�?ŭU��1��ޏM^��I���R����O쓥*3�RkD΀�ن%�#J�*�T�T%M9��Fs��Bpi��������&J�{���3*Rn��+�����$�BZ
I�,)6 �u�׺��#\e�����ɘ���S�|�i���K�ֈ���\+]T�3Ӟ}�R�++I������<�_sH���\Rē�F��ŀ���=����}�ݳ32�]�oS�:��n���E:��zs�_K��5O��c�Хl��k�房D�v)m/�c@V�f9����'\�(ӻ$�:�6�������V3Yn�65�Y#���-%��I�&u;vOJȴ*�X�|����4��}��7�YH��O�18��nS9\�����j��:��pu���z�OW]Л��b�J�gS%�O���<�,\q�lb]���H+�98n2�4}X�G���F���5�S.���F���p�J�1��2Z�a�(���R����Uj��=@0@.v�i��i2;�(�;�����<Y��b�>�����'(�ŴN�-Kڎ��֙s�s:��2�3��s�d��'M��B!C$��z�x��#�ׇZ���YM�,�մ�M�Ҹ:�9�ݱ����*1�gp���y����:co�:u��t��<��F�'֌�g,�ecV�^�#I�k!�����i�z�����lnw�ܱf_Q!t�W�'j ���c���Xç�&(�ccK�y3��F]̷eJ��'�YWKy���oTׁ��kJ����t��!�]�8��g�=܋��������=�Xɤ��K8��O`b�������w�[+m?V>�@y������jCJka#��
�LIa2����'�Py��p���$`<��}��8��R��	�>��)4�\:j�þ��j�����      �   0   x�3��CA��p	##C]K]3CK+cS+Cslb\1z\\\ u�      �   �   x�3�LL��̃�鹉�9z����FF����f
��V��V&f�*F�*�*����e��ye�z��~�z&�Az9��Ai���aEQ�F��.U�a��&E����z�1~ d�،F3�24����� E)y     