PGDMP     3                    x            classificados    12.2    12.2                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                        1262    28853    classificados    DATABASE     �   CREATE DATABASE classificados WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Portuguese_Brazil.1252' LC_CTYPE = 'Portuguese_Brazil.1252';
    DROP DATABASE classificados;
                postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                postgres    false            !           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                   postgres    false    3            �            1259    28887    anuncios    TABLE       CREATE TABLE public.anuncios (
    id integer NOT NULL,
    id_usuario integer NOT NULL,
    id_categoria integer NOT NULL,
    titulo character varying(100) DEFAULT NULL::character varying,
    descricao text,
    valor double precision,
    estado integer
);
    DROP TABLE public.anuncios;
       public         heap    postgres    false    3            �            1259    28896    anuncios_imagens    TABLE     �   CREATE TABLE public.anuncios_imagens (
    id integer NOT NULL,
    id_anuncio integer NOT NULL,
    url character varying(100) DEFAULT ''::character varying NOT NULL
);
 $   DROP TABLE public.anuncios_imagens;
       public         heap    postgres    false    3            �            1259    28902 
   categorias    TABLE     �   CREATE TABLE public.categorias (
    id integer NOT NULL,
    nome character varying(100) DEFAULT ''::character varying NOT NULL
);
    DROP TABLE public.categorias;
       public         heap    postgres    false    3            �            1259    28908    usuarios    TABLE     W  CREATE TABLE public.usuarios (
    id integer NOT NULL,
    nome character varying(100) DEFAULT ''::character varying NOT NULL,
    email character varying(100) DEFAULT ''::character varying NOT NULL,
    senha character varying(32) DEFAULT ''::character varying NOT NULL,
    telefone character varying(30) DEFAULT NULL::character varying
);
    DROP TABLE public.usuarios;
       public         heap    postgres    false    3                      0    28887    anuncios 
   TABLE DATA           b   COPY public.anuncios (id, id_usuario, id_categoria, titulo, descricao, valor, estado) FROM stdin;
    public          postgres    false    202   O                 0    28896    anuncios_imagens 
   TABLE DATA           ?   COPY public.anuncios_imagens (id, id_anuncio, url) FROM stdin;
    public          postgres    false    203   �                 0    28902 
   categorias 
   TABLE DATA           .   COPY public.categorias (id, nome) FROM stdin;
    public          postgres    false    204   �                 0    28908    usuarios 
   TABLE DATA           D   COPY public.usuarios (id, nome, email, senha, telefone) FROM stdin;
    public          postgres    false    205   	       �
           2606    28901 &   anuncios_imagens anuncios_imagens_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.anuncios_imagens
    ADD CONSTRAINT anuncios_imagens_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.anuncios_imagens DROP CONSTRAINT anuncios_imagens_pkey;
       public            postgres    false    203            �
           2606    28895    anuncios anuncios_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.anuncios
    ADD CONSTRAINT anuncios_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.anuncios DROP CONSTRAINT anuncios_pkey;
       public            postgres    false    202            �
           2606    28907    categorias categorias_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.categorias
    ADD CONSTRAINT categorias_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.categorias DROP CONSTRAINT categorias_pkey;
       public            postgres    false    204            �
           2606    28916    usuarios usuarios_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT usuarios_pkey;
       public            postgres    false    205               �   x����0F��� �� �#���&Q)�+'F�Á�v1L�]��^���c�א*�S�t�U8heiپ�O�9N��kh]o��T���M3-�X�����חr!�~�5�q��=ܢI��XV�����&ˎ$T��qp�� ��6�         �   x�%�;r1�Xs�->�]� �r���v<�����#�h��2�a�t�
�������K���� E����`��������%I������1G���x���{6
�
� Ǡ��s?+�)Im�d��#��nٛ=wN#Ĩ�����Q��o7�-ᠶG ߍK׾�p������뺮�>K�         8   x�3�J�9�9=3��ˈ3(�� ��˘�5'�����d��	�sbQ����� �}         N   x�3���?�8�3+�,3�$�����!=713G/9?����(9���(1������4I20745J126I27ഄ�=... �g     