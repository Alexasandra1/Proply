PGDMP  "                    {            ProplyDb    16rc1    16rc1 F               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16786    ProplyDb    DATABASE        CREATE DATABASE "ProplyDb" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Belarus.1251';
    DROP DATABASE "ProplyDb";
                postgres    false            �            1259    18076 
   Consultant    TABLE     �   CREATE TABLE public."Consultant" (
    id integer NOT NULL,
    name character varying(255),
    phone character varying(255),
    email character varying(255)
);
     DROP TABLE public."Consultant";
       public         heap    postgres    false            �            1259    18075    Consultant_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Consultant_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."Consultant_id_seq";
       public          postgres    false    229                       0    0    Consultant_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public."Consultant_id_seq" OWNED BY public."Consultant".id;
          public          postgres    false    228            �            1259    18067    Object_photo    TABLE     S   CREATE TABLE public."Object_photo" (
    id integer NOT NULL,
    photo bytea[]
);
 "   DROP TABLE public."Object_photo";
       public         heap    postgres    false            �            1259    18066    Object_photo_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Object_photo_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."Object_photo_id_seq";
       public          postgres    false    227            	           0    0    Object_photo_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."Object_photo_id_seq" OWNED BY public."Object_photo".id;
          public          postgres    false    226            �            1259    18060    Object_state    TABLE     g   CREATE TABLE public."Object_state" (
    id integer NOT NULL,
    state_name character varying(255)
);
 "   DROP TABLE public."Object_state";
       public         heap    postgres    false            �            1259    18059    Object_state_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Object_state_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."Object_state_id_seq";
       public          postgres    false    225            
           0    0    Object_state_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."Object_state_id_seq" OWNED BY public."Object_state".id;
          public          postgres    false    224            �            1259    18018    Object_type    TABLE     `   CREATE TABLE public."Object_type" (
    id integer NOT NULL,
    type character varying(255)
);
 !   DROP TABLE public."Object_type";
       public         heap    postgres    false            �            1259    18017    Object_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Object_type_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."Object_type_id_seq";
       public          postgres    false    217                       0    0    Object_type_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."Object_type_id_seq" OWNED BY public."Object_type".id;
          public          postgres    false    216            �            1259    18032 
   ProplyUser    TABLE       CREATE TABLE public."ProplyUser" (
    id integer NOT NULL,
    name character varying(255),
    login character varying(255),
    password character varying(255),
    city character varying(255),
    phone character varying(255),
    email character varying(255),
    role integer
);
     DROP TABLE public."ProplyUser";
       public         heap    postgres    false            �            1259    18031    ProplyUser_id_seq    SEQUENCE     �   CREATE SEQUENCE public."ProplyUser_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."ProplyUser_id_seq";
       public          postgres    false    221                       0    0    ProplyUser_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public."ProplyUser_id_seq" OWNED BY public."ProplyUser".id;
          public          postgres    false    220            �            1259    18085    Reale_estate_object    TABLE     U  CREATE TABLE public."Reale_estate_object" (
    id integer NOT NULL,
    seller_id integer,
    type_id integer,
    addres character varying(255),
    price numeric,
    bathrooms_number integer,
    car_space integer,
    bedrooms_number integer,
    description text,
    state integer,
    consultant_id integer,
    photo_id integer
);
 )   DROP TABLE public."Reale_estate_object";
       public         heap    postgres    false            �            1259    18084    Reale_estate_object_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Reale_estate_object_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public."Reale_estate_object_id_seq";
       public          postgres    false    231                       0    0    Reale_estate_object_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public."Reale_estate_object_id_seq" OWNED BY public."Reale_estate_object".id;
          public          postgres    false    230            �            1259    18025    Role    TABLE     ^   CREATE TABLE public."Role" (
    id integer NOT NULL,
    role_name character varying(255)
);
    DROP TABLE public."Role";
       public         heap    postgres    false            �            1259    18024    Role_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Role_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public."Role_id_seq";
       public          postgres    false    219                       0    0    Role_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public."Role_id_seq" OWNED BY public."Role".id;
          public          postgres    false    218            �            1259    16787    SequelizeMeta    TABLE     R   CREATE TABLE public."SequelizeMeta" (
    name character varying(255) NOT NULL
);
 #   DROP TABLE public."SequelizeMeta";
       public         heap    postgres    false            �            1259    18046 
   User_photo    TABLE     d   CREATE TABLE public."User_photo" (
    id integer NOT NULL,
    user_id integer,
    photo bytea
);
     DROP TABLE public."User_photo";
       public         heap    postgres    false            �            1259    18045    User_photo_id_seq    SEQUENCE     �   CREATE SEQUENCE public."User_photo_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."User_photo_id_seq";
       public          postgres    false    223                       0    0    User_photo_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public."User_photo_id_seq" OWNED BY public."User_photo".id;
          public          postgres    false    222            G           2604    18079    Consultant id    DEFAULT     r   ALTER TABLE ONLY public."Consultant" ALTER COLUMN id SET DEFAULT nextval('public."Consultant_id_seq"'::regclass);
 >   ALTER TABLE public."Consultant" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    229    229            F           2604    18070    Object_photo id    DEFAULT     v   ALTER TABLE ONLY public."Object_photo" ALTER COLUMN id SET DEFAULT nextval('public."Object_photo_id_seq"'::regclass);
 @   ALTER TABLE public."Object_photo" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    226    227            E           2604    18063    Object_state id    DEFAULT     v   ALTER TABLE ONLY public."Object_state" ALTER COLUMN id SET DEFAULT nextval('public."Object_state_id_seq"'::regclass);
 @   ALTER TABLE public."Object_state" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    224    225            A           2604    18021    Object_type id    DEFAULT     t   ALTER TABLE ONLY public."Object_type" ALTER COLUMN id SET DEFAULT nextval('public."Object_type_id_seq"'::regclass);
 ?   ALTER TABLE public."Object_type" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216    217            C           2604    18035    ProplyUser id    DEFAULT     r   ALTER TABLE ONLY public."ProplyUser" ALTER COLUMN id SET DEFAULT nextval('public."ProplyUser_id_seq"'::regclass);
 >   ALTER TABLE public."ProplyUser" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    221    221            H           2604    18088    Reale_estate_object id    DEFAULT     �   ALTER TABLE ONLY public."Reale_estate_object" ALTER COLUMN id SET DEFAULT nextval('public."Reale_estate_object_id_seq"'::regclass);
 G   ALTER TABLE public."Reale_estate_object" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    231    230    231            B           2604    18028    Role id    DEFAULT     f   ALTER TABLE ONLY public."Role" ALTER COLUMN id SET DEFAULT nextval('public."Role_id_seq"'::regclass);
 8   ALTER TABLE public."Role" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218    219            D           2604    18049    User_photo id    DEFAULT     r   ALTER TABLE ONLY public."User_photo" ALTER COLUMN id SET DEFAULT nextval('public."User_photo_id_seq"'::regclass);
 >   ALTER TABLE public."User_photo" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222    223            �          0    18076 
   Consultant 
   TABLE DATA           >   COPY public."Consultant" (id, name, phone, email) FROM stdin;
    public          postgres    false    229   R       �          0    18067    Object_photo 
   TABLE DATA           3   COPY public."Object_photo" (id, photo) FROM stdin;
    public          postgres    false    227   -R       �          0    18060    Object_state 
   TABLE DATA           8   COPY public."Object_state" (id, state_name) FROM stdin;
    public          postgres    false    225   �R       �          0    18018    Object_type 
   TABLE DATA           1   COPY public."Object_type" (id, type) FROM stdin;
    public          postgres    false    217   �R       �          0    18032 
   ProplyUser 
   TABLE DATA           [   COPY public."ProplyUser" (id, name, login, password, city, phone, email, role) FROM stdin;
    public          postgres    false    221   �R                 0    18085    Reale_estate_object 
   TABLE DATA           �   COPY public."Reale_estate_object" (id, seller_id, type_id, addres, price, bathrooms_number, car_space, bedrooms_number, description, state, consultant_id, photo_id) FROM stdin;
    public          postgres    false    231   �S       �          0    18025    Role 
   TABLE DATA           /   COPY public."Role" (id, role_name) FROM stdin;
    public          postgres    false    219   MT       �          0    16787    SequelizeMeta 
   TABLE DATA           /   COPY public."SequelizeMeta" (name) FROM stdin;
    public          postgres    false    215   yT       �          0    18046 
   User_photo 
   TABLE DATA           :   COPY public."User_photo" (id, user_id, photo) FROM stdin;
    public          postgres    false    223   U                  0    0    Consultant_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."Consultant_id_seq"', 2, true);
          public          postgres    false    228                       0    0    Object_photo_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."Object_photo_id_seq"', 6, true);
          public          postgres    false    226                       0    0    Object_state_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."Object_state_id_seq"', 3, true);
          public          postgres    false    224                       0    0    Object_type_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."Object_type_id_seq"', 4, true);
          public          postgres    false    216                       0    0    ProplyUser_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."ProplyUser_id_seq"', 19, true);
          public          postgres    false    220                       0    0    Reale_estate_object_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public."Reale_estate_object_id_seq"', 6, true);
          public          postgres    false    230                       0    0    Role_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public."Role_id_seq"', 3, true);
          public          postgres    false    218                       0    0    User_photo_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."User_photo_id_seq"', 4, true);
          public          postgres    false    222            X           2606    18083    Consultant Consultant_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public."Consultant"
    ADD CONSTRAINT "Consultant_pkey" PRIMARY KEY (id);
 H   ALTER TABLE ONLY public."Consultant" DROP CONSTRAINT "Consultant_pkey";
       public            postgres    false    229            V           2606    18074    Object_photo Object_photo_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."Object_photo"
    ADD CONSTRAINT "Object_photo_pkey" PRIMARY KEY (id);
 L   ALTER TABLE ONLY public."Object_photo" DROP CONSTRAINT "Object_photo_pkey";
       public            postgres    false    227            T           2606    18065    Object_state Object_state_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."Object_state"
    ADD CONSTRAINT "Object_state_pkey" PRIMARY KEY (id);
 L   ALTER TABLE ONLY public."Object_state" DROP CONSTRAINT "Object_state_pkey";
       public            postgres    false    225            L           2606    18023    Object_type Object_type_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."Object_type"
    ADD CONSTRAINT "Object_type_pkey" PRIMARY KEY (id);
 J   ALTER TABLE ONLY public."Object_type" DROP CONSTRAINT "Object_type_pkey";
       public            postgres    false    217            P           2606    18039    ProplyUser ProplyUser_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public."ProplyUser"
    ADD CONSTRAINT "ProplyUser_pkey" PRIMARY KEY (id);
 H   ALTER TABLE ONLY public."ProplyUser" DROP CONSTRAINT "ProplyUser_pkey";
       public            postgres    false    221            Z           2606    18092 ,   Reale_estate_object Reale_estate_object_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public."Reale_estate_object"
    ADD CONSTRAINT "Reale_estate_object_pkey" PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public."Reale_estate_object" DROP CONSTRAINT "Reale_estate_object_pkey";
       public            postgres    false    231            N           2606    18030    Role Role_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public."Role"
    ADD CONSTRAINT "Role_pkey" PRIMARY KEY (id);
 <   ALTER TABLE ONLY public."Role" DROP CONSTRAINT "Role_pkey";
       public            postgres    false    219            J           2606    16791     SequelizeMeta SequelizeMeta_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public."SequelizeMeta"
    ADD CONSTRAINT "SequelizeMeta_pkey" PRIMARY KEY (name);
 N   ALTER TABLE ONLY public."SequelizeMeta" DROP CONSTRAINT "SequelizeMeta_pkey";
       public            postgres    false    215            R           2606    18053    User_photo User_photo_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public."User_photo"
    ADD CONSTRAINT "User_photo_pkey" PRIMARY KEY (id);
 H   ALTER TABLE ONLY public."User_photo" DROP CONSTRAINT "User_photo_pkey";
       public            postgres    false    223            [           2606    18040    ProplyUser ProplyUser_role_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."ProplyUser"
    ADD CONSTRAINT "ProplyUser_role_fkey" FOREIGN KEY (role) REFERENCES public."Role"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 M   ALTER TABLE ONLY public."ProplyUser" DROP CONSTRAINT "ProplyUser_role_fkey";
       public          postgres    false    4686    221    219            ]           2606    18108 :   Reale_estate_object Reale_estate_object_consultant_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Reale_estate_object"
    ADD CONSTRAINT "Reale_estate_object_consultant_id_fkey" FOREIGN KEY (consultant_id) REFERENCES public."Consultant"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 h   ALTER TABLE ONLY public."Reale_estate_object" DROP CONSTRAINT "Reale_estate_object_consultant_id_fkey";
       public          postgres    false    229    231    4696            ^           2606    18113 5   Reale_estate_object Reale_estate_object_photo_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Reale_estate_object"
    ADD CONSTRAINT "Reale_estate_object_photo_id_fkey" FOREIGN KEY (photo_id) REFERENCES public."Object_photo"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 c   ALTER TABLE ONLY public."Reale_estate_object" DROP CONSTRAINT "Reale_estate_object_photo_id_fkey";
       public          postgres    false    231    4694    227            _           2606    18093 6   Reale_estate_object Reale_estate_object_seller_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Reale_estate_object"
    ADD CONSTRAINT "Reale_estate_object_seller_id_fkey" FOREIGN KEY (seller_id) REFERENCES public."ProplyUser"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 d   ALTER TABLE ONLY public."Reale_estate_object" DROP CONSTRAINT "Reale_estate_object_seller_id_fkey";
       public          postgres    false    221    231    4688            `           2606    18103 2   Reale_estate_object Reale_estate_object_state_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Reale_estate_object"
    ADD CONSTRAINT "Reale_estate_object_state_fkey" FOREIGN KEY (state) REFERENCES public."Object_state"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 `   ALTER TABLE ONLY public."Reale_estate_object" DROP CONSTRAINT "Reale_estate_object_state_fkey";
       public          postgres    false    225    231    4692            a           2606    18098 4   Reale_estate_object Reale_estate_object_type_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Reale_estate_object"
    ADD CONSTRAINT "Reale_estate_object_type_id_fkey" FOREIGN KEY (type_id) REFERENCES public."Object_type"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 b   ALTER TABLE ONLY public."Reale_estate_object" DROP CONSTRAINT "Reale_estate_object_type_id_fkey";
       public          postgres    false    231    217    4684            \           2606    18054 "   User_photo User_photo_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."User_photo"
    ADD CONSTRAINT "User_photo_user_id_fkey" FOREIGN KEY (user_id) REFERENCES public."ProplyUser"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 P   ALTER TABLE ONLY public."User_photo" DROP CONSTRAINT "User_photo_user_id_fkey";
       public          postgres    false    223    4688    221            �      x�3�,.)��K�4�2�b���� T�_      �   `   x�5���0���h�:t	&���Ӥ��ɺ8JN���\ �nP�	{��Mev?;_.ѱ�F�q�b;�tyD�O+�l<i×��:�*"/�6�      �      x�3�,N�I�2�,��I����� 2��      �   '   x�3���/-N�2�L�I,)�2�L�/)ILO����� �i�      �   �   x�}P1�0�/_A�Mi���		�H�Ȗ��%͏j�I�,�r>{��s��� 	�΍��Mp`���rd-A��#RLa[S�$0���b���aѪuvE�<���T�r�� �(��=��+I6��2����pX��;�8��sy�ǳ�oޚa�ɿ�k����.��         �   x�MM[
�0��=EPd7M����g�Aj�4��MB���a�3X�r�x���0��S!����*�9�<t0�%H4���`����5~kc���-�䆿�����.Q`�=�N�i�!�-��y�����8����,�      �      x�3�,-N-�2�LL�������� :+�      �   �   x�}��
�0���K%Iu��+�!Ŕ6^���Avc��|�$䐠���m�앭�&juM�L�І`��,�J��iʒ��_����t��Aj��:��s�ԀP�]�PA�D��V�x|�>�������@�g��1�< @9e      �   Y   x�U���@���a�G�%��A_~��/_��~�0�l���Y~U���̼;����Y	�vյWL�AZ�t��)H����!d     