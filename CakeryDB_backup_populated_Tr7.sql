PGDMP      (                |            test_for_ahmed_1    17.1    17.1 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            �           1262    24581    test_for_ahmed_1    DATABASE     �   CREATE DATABASE test_for_ahmed_1 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
     DROP DATABASE test_for_ahmed_1;
                     postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                     pg_database_owner    false            �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                        pg_database_owner    false    4            �            1259    24583    admin    TABLE     |   CREATE TABLE public.admin (
    adminemail character varying(255) NOT NULL,
    password character varying(255) NOT NULL
);
    DROP TABLE public.admin;
       public         heap r       postgres    false    4            �            1259    24588 
   bakeryuser    TABLE     L  CREATE TABLE public.bakeryuser (
    bakeryemail character varying(255) NOT NULL,
    password character varying(255) NOT NULL,
    firstname character varying(255),
    lastname character varying(255),
    phonenum character varying(15),
    addresstext text,
    createdat timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.bakeryuser;
       public         heap r       postgres    false    4            �            1259    24845 	   cakelayer    TABLE     �   CREATE TABLE public.cakelayer (
    layerid integer NOT NULL,
    customcakeid integer,
    level integer NOT NULL,
    flavor character varying(255),
    innerfilling character varying(255),
    nuts character varying(255)
);
    DROP TABLE public.cakelayer;
       public         heap r       postgres    false    4            �            1259    24844    cakelayer_layerid_seq    SEQUENCE     �   CREATE SEQUENCE public.cakelayer_layerid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.cakelayer_layerid_seq;
       public               postgres    false    4    246            �           0    0    cakelayer_layerid_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.cakelayer_layerid_seq OWNED BY public.cakelayer.layerid;
          public               postgres    false    245            �            1259    24600    cart    TABLE     m   CREATE TABLE public.cart (
    cartid integer NOT NULL,
    customeremail character varying(255) NOT NULL
);
    DROP TABLE public.cart;
       public         heap r       postgres    false    4            �            1259    24603    cart_cartid_seq    SEQUENCE     �   CREATE SEQUENCE public.cart_cartid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.cart_cartid_seq;
       public               postgres    false    4    220            �           0    0    cart_cartid_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.cart_cartid_seq OWNED BY public.cart.cartid;
          public               postgres    false    221            �            1259    24604 	   cartitems    TABLE     �   CREATE TABLE public.cartitems (
    cartitemid integer NOT NULL,
    cartid integer NOT NULL,
    productid integer,
    customcakeid integer,
    quantity integer NOT NULL,
    price numeric(10,2) NOT NULL
);
    DROP TABLE public.cartitems;
       public         heap r       postgres    false    4            �            1259    24607    cartitems_cartitemid_seq    SEQUENCE     �   CREATE SEQUENCE public.cartitems_cartitemid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.cartitems_cartitemid_seq;
       public               postgres    false    222    4            �           0    0    cartitems_cartitemid_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.cartitems_cartitemid_seq OWNED BY public.cartitems.cartitemid;
          public               postgres    false    223            �            1259    24836 
   customcake    TABLE     �   CREATE TABLE public.customcake (
    customcakeid integer NOT NULL,
    numlayers integer NOT NULL,
    sugarpaste character varying(255),
    coating character varying(255),
    topping character varying(255)
);
    DROP TABLE public.customcake;
       public         heap r       postgres    false    4            �            1259    24608    customize_cake    TABLE     �  CREATE TABLE public.customize_cake (
    customizecakeid integer NOT NULL,
    numlayers integer DEFAULT 1 NOT NULL,
    customeremail character varying(255) NOT NULL,
    cakeshape character varying(255) NOT NULL,
    cakesize character varying(255) NOT NULL,
    cakeflavor character varying DEFAULT 'chocolate'::character varying NOT NULL,
    message character varying(500),
    price integer
);
 "   DROP TABLE public.customize_cake;
       public         heap r       postgres    false    4            �            1259    24613    customcake_customcakeid_seq    SEQUENCE     �   CREATE SEQUENCE public.customcake_customcakeid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.customcake_customcakeid_seq;
       public               postgres    false    4    224            �           0    0    customcake_customcakeid_seq    SEQUENCE OWNED BY     b   ALTER SEQUENCE public.customcake_customcakeid_seq OWNED BY public.customize_cake.customizecakeid;
          public               postgres    false    225            �            1259    24835    customcake_customcakeid_seq1    SEQUENCE     �   CREATE SEQUENCE public.customcake_customcakeid_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.customcake_customcakeid_seq1;
       public               postgres    false    4    244            �           0    0    customcake_customcakeid_seq1    SEQUENCE OWNED BY     \   ALTER SEQUENCE public.customcake_customcakeid_seq1 OWNED BY public.customcake.customcakeid;
          public               postgres    false    243            �            1259    24614    customeruser    TABLE     X  CREATE TABLE public.customeruser (
    customeremail character varying(255) NOT NULL,
    password character varying(255) NOT NULL,
    firstname character varying(255),
    lastname character varying(255),
    phonenum character varying(15),
    addressgooglemapurl text,
    createdat timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
     DROP TABLE public.customeruser;
       public         heap r       postgres    false    4            �            1259    24818    customize_cake_layer    TABLE     &  CREATE TABLE public.customize_cake_layer (
    customizecakeid integer NOT NULL,
    layer integer NOT NULL,
    innerfillings character varying NOT NULL,
    innertoppings character varying NOT NULL,
    outercoating character varying NOT NULL,
    outertoppings character varying NOT NULL
);
 (   DROP TABLE public.customize_cake_layer;
       public         heap r       postgres    false    4            �            1259    24620    delivery_assignments    TABLE     �   CREATE TABLE public.delivery_assignments (
    id integer NOT NULL,
    deliveryemail character varying(255),
    orderid integer
);
 (   DROP TABLE public.delivery_assignments;
       public         heap r       postgres    false    4            �            1259    24623    delivery_assignments_id_seq    SEQUENCE     �   CREATE SEQUENCE public.delivery_assignments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.delivery_assignments_id_seq;
       public               postgres    false    227    4            �           0    0    delivery_assignments_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.delivery_assignments_id_seq OWNED BY public.delivery_assignments.id;
          public               postgres    false    228            �            1259    24624    deliveryuser    TABLE     :  CREATE TABLE public.deliveryuser (
    deliveryemail character varying(255) NOT NULL,
    password character varying(255) NOT NULL,
    firstname character varying(255),
    lastname character varying(255),
    phonenum character varying(15),
    createdat timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
     DROP TABLE public.deliveryuser;
       public         heap r       postgres    false    4            �            1259    24630 	   inventory    TABLE     $  CREATE TABLE public.inventory (
    productid integer NOT NULL,
    name character varying(255) NOT NULL,
    description text,
    price numeric(10,2),
    category character varying(255),
    createdat timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    imgpath character varying
);
    DROP TABLE public.inventory;
       public         heap r       postgres    false    4            �            1259    24636    inventory_productid_seq    SEQUENCE     �   CREATE SEQUENCE public.inventory_productid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.inventory_productid_seq;
       public               postgres    false    4    230            �           0    0    inventory_productid_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.inventory_productid_seq OWNED BY public.inventory.productid;
          public               postgres    false    231            �            1259    24870    notifications    TABLE     �   CREATE TABLE public.notifications (
    id integer NOT NULL,
    customer_email character varying(100) NOT NULL,
    message character varying(255) NOT NULL,
    created_at timestamp without time zone
);
 !   DROP TABLE public.notifications;
       public         heap r       postgres    false    4            �            1259    24869    notifications_id_seq    SEQUENCE     �   CREATE SEQUENCE public.notifications_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.notifications_id_seq;
       public               postgres    false    4    250            �           0    0    notifications_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.notifications_id_seq OWNED BY public.notifications.id;
          public               postgres    false    249            �            1259    24637 
   orderitems    TABLE     �   CREATE TABLE public.orderitems (
    orderitemid integer NOT NULL,
    orderid integer,
    productid integer,
    customcakeid integer,
    quantity integer NOT NULL,
    priceatorder numeric(10,2)
);
    DROP TABLE public.orderitems;
       public         heap r       postgres    false    4            �            1259    24640    orderitems_orderitemid_seq    SEQUENCE     �   CREATE SEQUENCE public.orderitems_orderitemid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.orderitems_orderitemid_seq;
       public               postgres    false    232    4            �           0    0    orderitems_orderitemid_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.orderitems_orderitemid_seq OWNED BY public.orderitems.orderitemid;
          public               postgres    false    233            �            1259    24641    orders    TABLE     D  CREATE TABLE public.orders (
    orderid integer NOT NULL,
    customeremail character varying(255),
    deliveryemail character varying(255),
    totalprice numeric(10,2),
    status character varying(50),
    orderdate timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    deliverydate timestamp without time zone
);
    DROP TABLE public.orders;
       public         heap r       postgres    false    4            �            1259    24647    orders_orderid_seq    SEQUENCE     �   CREATE SEQUENCE public.orders_orderid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.orders_orderid_seq;
       public               postgres    false    234    4            �           0    0    orders_orderid_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.orders_orderid_seq OWNED BY public.orders.orderid;
          public               postgres    false    235            �            1259    24863    otp    TABLE     "  CREATE TABLE public.otp (
    id integer NOT NULL,
    customer_email character varying(100) NOT NULL,
    otp_code character varying(6) NOT NULL,
    expiry_time timestamp without time zone NOT NULL,
    is_used boolean,
    created_at timestamp without time zone,
    order_id integer
);
    DROP TABLE public.otp;
       public         heap r       postgres    false    4            �            1259    24862 
   otp_id_seq    SEQUENCE     �   CREATE SEQUENCE public.otp_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 !   DROP SEQUENCE public.otp_id_seq;
       public               postgres    false    248    4            �           0    0 
   otp_id_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE public.otp_id_seq OWNED BY public.otp.id;
          public               postgres    false    247            �            1259    24648    payment    TABLE     �   CREATE TABLE public.payment (
    paymentid integer NOT NULL,
    orderid integer NOT NULL,
    deposit numeric(10,2) NOT NULL,
    restofprice numeric(10,2) NOT NULL,
    paymentdate timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.payment;
       public         heap r       postgres    false    4            �            1259    24652    payment_paymentid_seq    SEQUENCE     �   CREATE SEQUENCE public.payment_paymentid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.payment_paymentid_seq;
       public               postgres    false    4    236            �           0    0    payment_paymentid_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.payment_paymentid_seq OWNED BY public.payment.paymentid;
          public               postgres    false    237            �            1259    24785    rawmaterials    TABLE     �   CREATE TABLE public.rawmaterials (
    item character varying(100) NOT NULL,
    price integer NOT NULL,
    category character varying NOT NULL
);
     DROP TABLE public.rawmaterials;
       public         heap r       postgres    false    4            �            1259    24653    review    TABLE     &  CREATE TABLE public.review (
    reviewid integer NOT NULL,
    productid integer,
    customeremail character varying(255),
    rating integer,
    createdat timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT review_rating_check CHECK (((rating >= 1) AND (rating <= 5)))
);
    DROP TABLE public.review;
       public         heap r       postgres    false    4            �            1259    24658    review_reviewid_seq    SEQUENCE     �   CREATE SEQUENCE public.review_reviewid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.review_reviewid_seq;
       public               postgres    false    238    4            �           0    0    review_reviewid_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.review_reviewid_seq OWNED BY public.review.reviewid;
          public               postgres    false    239            �            1259    24659    voucher    TABLE        CREATE TABLE public.voucher (
    vouchercode character varying(255) NOT NULL,
    discountpercentage numeric(5,2) NOT NULL
);
    DROP TABLE public.voucher;
       public         heap r       postgres    false    4            �           2604    24848    cakelayer layerid    DEFAULT     v   ALTER TABLE ONLY public.cakelayer ALTER COLUMN layerid SET DEFAULT nextval('public.cakelayer_layerid_seq'::regclass);
 @   ALTER TABLE public.cakelayer ALTER COLUMN layerid DROP DEFAULT;
       public               postgres    false    246    245    246            �           2604    24663    cart cartid    DEFAULT     j   ALTER TABLE ONLY public.cart ALTER COLUMN cartid SET DEFAULT nextval('public.cart_cartid_seq'::regclass);
 :   ALTER TABLE public.cart ALTER COLUMN cartid DROP DEFAULT;
       public               postgres    false    221    220            �           2604    24664    cartitems cartitemid    DEFAULT     |   ALTER TABLE ONLY public.cartitems ALTER COLUMN cartitemid SET DEFAULT nextval('public.cartitems_cartitemid_seq'::regclass);
 C   ALTER TABLE public.cartitems ALTER COLUMN cartitemid DROP DEFAULT;
       public               postgres    false    223    222            �           2604    24839    customcake customcakeid    DEFAULT     �   ALTER TABLE ONLY public.customcake ALTER COLUMN customcakeid SET DEFAULT nextval('public.customcake_customcakeid_seq1'::regclass);
 F   ALTER TABLE public.customcake ALTER COLUMN customcakeid DROP DEFAULT;
       public               postgres    false    243    244    244            �           2604    24665    customize_cake customizecakeid    DEFAULT     �   ALTER TABLE ONLY public.customize_cake ALTER COLUMN customizecakeid SET DEFAULT nextval('public.customcake_customcakeid_seq'::regclass);
 M   ALTER TABLE public.customize_cake ALTER COLUMN customizecakeid DROP DEFAULT;
       public               postgres    false    225    224            �           2604    24666    delivery_assignments id    DEFAULT     �   ALTER TABLE ONLY public.delivery_assignments ALTER COLUMN id SET DEFAULT nextval('public.delivery_assignments_id_seq'::regclass);
 F   ALTER TABLE public.delivery_assignments ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    228    227            �           2604    24667    inventory productid    DEFAULT     z   ALTER TABLE ONLY public.inventory ALTER COLUMN productid SET DEFAULT nextval('public.inventory_productid_seq'::regclass);
 B   ALTER TABLE public.inventory ALTER COLUMN productid DROP DEFAULT;
       public               postgres    false    231    230            �           2604    24873    notifications id    DEFAULT     t   ALTER TABLE ONLY public.notifications ALTER COLUMN id SET DEFAULT nextval('public.notifications_id_seq'::regclass);
 ?   ALTER TABLE public.notifications ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    249    250    250            �           2604    24668    orderitems orderitemid    DEFAULT     �   ALTER TABLE ONLY public.orderitems ALTER COLUMN orderitemid SET DEFAULT nextval('public.orderitems_orderitemid_seq'::regclass);
 E   ALTER TABLE public.orderitems ALTER COLUMN orderitemid DROP DEFAULT;
       public               postgres    false    233    232            �           2604    24669    orders orderid    DEFAULT     p   ALTER TABLE ONLY public.orders ALTER COLUMN orderid SET DEFAULT nextval('public.orders_orderid_seq'::regclass);
 =   ALTER TABLE public.orders ALTER COLUMN orderid DROP DEFAULT;
       public               postgres    false    235    234            �           2604    24866    otp id    DEFAULT     `   ALTER TABLE ONLY public.otp ALTER COLUMN id SET DEFAULT nextval('public.otp_id_seq'::regclass);
 5   ALTER TABLE public.otp ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    248    247    248            �           2604    24670    payment paymentid    DEFAULT     v   ALTER TABLE ONLY public.payment ALTER COLUMN paymentid SET DEFAULT nextval('public.payment_paymentid_seq'::regclass);
 @   ALTER TABLE public.payment ALTER COLUMN paymentid DROP DEFAULT;
       public               postgres    false    237    236            �           2604    24671    review reviewid    DEFAULT     r   ALTER TABLE ONLY public.review ALTER COLUMN reviewid SET DEFAULT nextval('public.review_reviewid_seq'::regclass);
 >   ALTER TABLE public.review ALTER COLUMN reviewid DROP DEFAULT;
       public               postgres    false    239    238            �          0    24583    admin 
   TABLE DATA           5   COPY public.admin (adminemail, password) FROM stdin;
    public               postgres    false    218   ��       �          0    24588 
   bakeryuser 
   TABLE DATA           r   COPY public.bakeryuser (bakeryemail, password, firstname, lastname, phonenum, addresstext, createdat) FROM stdin;
    public               postgres    false    219   ��       �          0    24845 	   cakelayer 
   TABLE DATA           ]   COPY public.cakelayer (layerid, customcakeid, level, flavor, innerfilling, nuts) FROM stdin;
    public               postgres    false    246   ��       �          0    24600    cart 
   TABLE DATA           5   COPY public.cart (cartid, customeremail) FROM stdin;
    public               postgres    false    220   ��       �          0    24604 	   cartitems 
   TABLE DATA           a   COPY public.cartitems (cartitemid, cartid, productid, customcakeid, quantity, price) FROM stdin;
    public               postgres    false    222   �       �          0    24836 
   customcake 
   TABLE DATA           [   COPY public.customcake (customcakeid, numlayers, sugarpaste, coating, topping) FROM stdin;
    public               postgres    false    244   4�       �          0    24614    customeruser 
   TABLE DATA           ~   COPY public.customeruser (customeremail, password, firstname, lastname, phonenum, addressgooglemapurl, createdat) FROM stdin;
    public               postgres    false    226   Q�       �          0    24608    customize_cake 
   TABLE DATA           �   COPY public.customize_cake (customizecakeid, numlayers, customeremail, cakeshape, cakesize, cakeflavor, message, price) FROM stdin;
    public               postgres    false    224   B�       �          0    24818    customize_cake_layer 
   TABLE DATA           �   COPY public.customize_cake_layer (customizecakeid, layer, innerfillings, innertoppings, outercoating, outertoppings) FROM stdin;
    public               postgres    false    242   Y�       �          0    24620    delivery_assignments 
   TABLE DATA           J   COPY public.delivery_assignments (id, deliveryemail, orderid) FROM stdin;
    public               postgres    false    227   ��       �          0    24624    deliveryuser 
   TABLE DATA           i   COPY public.deliveryuser (deliveryemail, password, firstname, lastname, phonenum, createdat) FROM stdin;
    public               postgres    false    229   ��       �          0    24630 	   inventory 
   TABLE DATA           f   COPY public.inventory (productid, name, description, price, category, createdat, imgpath) FROM stdin;
    public               postgres    false    230   t�       �          0    24870    notifications 
   TABLE DATA           P   COPY public.notifications (id, customer_email, message, created_at) FROM stdin;
    public               postgres    false    250   7�       �          0    24637 
   orderitems 
   TABLE DATA           k   COPY public.orderitems (orderitemid, orderid, productid, customcakeid, quantity, priceatorder) FROM stdin;
    public               postgres    false    232   T�       �          0    24641    orders 
   TABLE DATA           t   COPY public.orders (orderid, customeremail, deliveryemail, totalprice, status, orderdate, deliverydate) FROM stdin;
    public               postgres    false    234   ��       �          0    24863    otp 
   TABLE DATA           g   COPY public.otp (id, customer_email, otp_code, expiry_time, is_used, created_at, order_id) FROM stdin;
    public               postgres    false    248   ��       �          0    24648    payment 
   TABLE DATA           X   COPY public.payment (paymentid, orderid, deposit, restofprice, paymentdate) FROM stdin;
    public               postgres    false    236   z�       �          0    24785    rawmaterials 
   TABLE DATA           =   COPY public.rawmaterials (item, price, category) FROM stdin;
    public               postgres    false    241   ׿       �          0    24653    review 
   TABLE DATA           W   COPY public.review (reviewid, productid, customeremail, rating, createdat) FROM stdin;
    public               postgres    false    238   d�       �          0    24659    voucher 
   TABLE DATA           B   COPY public.voucher (vouchercode, discountpercentage) FROM stdin;
    public               postgres    false    240   �       �           0    0    cakelayer_layerid_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.cakelayer_layerid_seq', 1, false);
          public               postgres    false    245            �           0    0    cart_cartid_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.cart_cartid_seq', 4, true);
          public               postgres    false    221            �           0    0    cartitems_cartitemid_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.cartitems_cartitemid_seq', 9, true);
          public               postgres    false    223            �           0    0    customcake_customcakeid_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.customcake_customcakeid_seq', 41, true);
          public               postgres    false    225            �           0    0    customcake_customcakeid_seq1    SEQUENCE SET     K   SELECT pg_catalog.setval('public.customcake_customcakeid_seq1', 1, false);
          public               postgres    false    243            �           0    0    delivery_assignments_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.delivery_assignments_id_seq', 5, true);
          public               postgres    false    228            �           0    0    inventory_productid_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.inventory_productid_seq', 13, true);
          public               postgres    false    231            �           0    0    notifications_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.notifications_id_seq', 6, true);
          public               postgres    false    249            �           0    0    orderitems_orderitemid_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.orderitems_orderitemid_seq', 8, true);
          public               postgres    false    233            �           0    0    orders_orderid_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.orders_orderid_seq', 5, true);
          public               postgres    false    235            �           0    0 
   otp_id_seq    SEQUENCE SET     8   SELECT pg_catalog.setval('public.otp_id_seq', 4, true);
          public               postgres    false    247            �           0    0    payment_paymentid_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.payment_paymentid_seq', 3, true);
          public               postgres    false    237            �           0    0    review_reviewid_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.review_reviewid_seq', 4, true);
          public               postgres    false    239            �           2606    24673    admin admin_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.admin
    ADD CONSTRAINT admin_pkey PRIMARY KEY (adminemail);
 :   ALTER TABLE ONLY public.admin DROP CONSTRAINT admin_pkey;
       public                 postgres    false    218            �           2606    24675    bakeryuser bakeryuser_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.bakeryuser
    ADD CONSTRAINT bakeryuser_pkey PRIMARY KEY (bakeryemail);
 D   ALTER TABLE ONLY public.bakeryuser DROP CONSTRAINT bakeryuser_pkey;
       public                 postgres    false    219            �           2606    24852    cakelayer cakelayer_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.cakelayer
    ADD CONSTRAINT cakelayer_pkey PRIMARY KEY (layerid);
 B   ALTER TABLE ONLY public.cakelayer DROP CONSTRAINT cakelayer_pkey;
       public                 postgres    false    246            �           2606    24679    cart cart_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.cart
    ADD CONSTRAINT cart_pkey PRIMARY KEY (cartid);
 8   ALTER TABLE ONLY public.cart DROP CONSTRAINT cart_pkey;
       public                 postgres    false    220            �           2606    24681    cartitems cartitems_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.cartitems
    ADD CONSTRAINT cartitems_pkey PRIMARY KEY (cartitemid);
 B   ALTER TABLE ONLY public.cartitems DROP CONSTRAINT cartitems_pkey;
       public                 postgres    false    222            �           2606    24683    customize_cake customcake_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.customize_cake
    ADD CONSTRAINT customcake_pkey PRIMARY KEY (customizecakeid);
 H   ALTER TABLE ONLY public.customize_cake DROP CONSTRAINT customcake_pkey;
       public                 postgres    false    224            �           2606    24843    customcake customcake_pkey1 
   CONSTRAINT     c   ALTER TABLE ONLY public.customcake
    ADD CONSTRAINT customcake_pkey1 PRIMARY KEY (customcakeid);
 E   ALTER TABLE ONLY public.customcake DROP CONSTRAINT customcake_pkey1;
       public                 postgres    false    244            �           2606    24685    customeruser customeruser_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public.customeruser
    ADD CONSTRAINT customeruser_pkey PRIMARY KEY (customeremail);
 H   ALTER TABLE ONLY public.customeruser DROP CONSTRAINT customeruser_pkey;
       public                 postgres    false    226            �           2606    24824 1   customize_cake_layer customize_cakeid_layer_pkeys 
   CONSTRAINT     �   ALTER TABLE ONLY public.customize_cake_layer
    ADD CONSTRAINT customize_cakeid_layer_pkeys PRIMARY KEY (customizecakeid, layer);
 [   ALTER TABLE ONLY public.customize_cake_layer DROP CONSTRAINT customize_cakeid_layer_pkeys;
       public                 postgres    false    242    242            �           2606    24687 .   delivery_assignments delivery_assignments_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.delivery_assignments
    ADD CONSTRAINT delivery_assignments_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.delivery_assignments DROP CONSTRAINT delivery_assignments_pkey;
       public                 postgres    false    227            �           2606    24689    deliveryuser deliveryuser_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public.deliveryuser
    ADD CONSTRAINT deliveryuser_pkey PRIMARY KEY (deliveryemail);
 H   ALTER TABLE ONLY public.deliveryuser DROP CONSTRAINT deliveryuser_pkey;
       public                 postgres    false    229            �           2606    24691    inventory inventory_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.inventory
    ADD CONSTRAINT inventory_pkey PRIMARY KEY (productid);
 B   ALTER TABLE ONLY public.inventory DROP CONSTRAINT inventory_pkey;
       public                 postgres    false    230            �           2606    24875     notifications notifications_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.notifications
    ADD CONSTRAINT notifications_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.notifications DROP CONSTRAINT notifications_pkey;
       public                 postgres    false    250            �           2606    24693    orderitems orderitems_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.orderitems
    ADD CONSTRAINT orderitems_pkey PRIMARY KEY (orderitemid);
 D   ALTER TABLE ONLY public.orderitems DROP CONSTRAINT orderitems_pkey;
       public                 postgres    false    232            �           2606    24695    orders orders_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (orderid);
 <   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_pkey;
       public                 postgres    false    234            �           2606    24868    otp otp_pkey 
   CONSTRAINT     J   ALTER TABLE ONLY public.otp
    ADD CONSTRAINT otp_pkey PRIMARY KEY (id);
 6   ALTER TABLE ONLY public.otp DROP CONSTRAINT otp_pkey;
       public                 postgres    false    248            �           2606    24697    payment payment_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.payment
    ADD CONSTRAINT payment_pkey PRIMARY KEY (paymentid);
 >   ALTER TABLE ONLY public.payment DROP CONSTRAINT payment_pkey;
       public                 postgres    false    236            �           2606    24806    rawmaterials rawmaterials_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.rawmaterials
    ADD CONSTRAINT rawmaterials_pkey PRIMARY KEY (item);
 H   ALTER TABLE ONLY public.rawmaterials DROP CONSTRAINT rawmaterials_pkey;
       public                 postgres    false    241            �           2606    24699    review review_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.review
    ADD CONSTRAINT review_pkey PRIMARY KEY (reviewid);
 <   ALTER TABLE ONLY public.review DROP CONSTRAINT review_pkey;
       public                 postgres    false    238            �           2606    24701    cart unique_customer_email 
   CONSTRAINT     ^   ALTER TABLE ONLY public.cart
    ADD CONSTRAINT unique_customer_email UNIQUE (customeremail);
 D   ALTER TABLE ONLY public.cart DROP CONSTRAINT unique_customer_email;
       public                 postgres    false    220            �           2606    24703    inventory unique_name_category 
   CONSTRAINT     c   ALTER TABLE ONLY public.inventory
    ADD CONSTRAINT unique_name_category UNIQUE (name, category);
 H   ALTER TABLE ONLY public.inventory DROP CONSTRAINT unique_name_category;
       public                 postgres    false    230    230            �           2606    24705    voucher voucher_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.voucher
    ADD CONSTRAINT voucher_pkey PRIMARY KEY (vouchercode);
 >   ALTER TABLE ONLY public.voucher DROP CONSTRAINT voucher_pkey;
       public                 postgres    false    240                       2606    24853 %   cakelayer cakelayer_customcakeid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.cakelayer
    ADD CONSTRAINT cakelayer_customcakeid_fkey FOREIGN KEY (customcakeid) REFERENCES public.customcake(customcakeid);
 O   ALTER TABLE ONLY public.cakelayer DROP CONSTRAINT cakelayer_customcakeid_fkey;
       public               postgres    false    244    4844    246            �           2606    24711    cart cart_customeremail_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.cart
    ADD CONSTRAINT cart_customeremail_fkey FOREIGN KEY (customeremail) REFERENCES public.customeruser(customeremail);
 F   ALTER TABLE ONLY public.cart DROP CONSTRAINT cart_customeremail_fkey;
       public               postgres    false    4820    220    226            �           2606    24716    cartitems cartitems_cartid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.cartitems
    ADD CONSTRAINT cartitems_cartid_fkey FOREIGN KEY (cartid) REFERENCES public.cart(cartid) ON DELETE CASCADE;
 I   ALTER TABLE ONLY public.cartitems DROP CONSTRAINT cartitems_cartid_fkey;
       public               postgres    false    220    4812    222            �           2606    24721 %   cartitems cartitems_customcakeid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.cartitems
    ADD CONSTRAINT cartitems_customcakeid_fkey FOREIGN KEY (customcakeid) REFERENCES public.customize_cake(customizecakeid);
 O   ALTER TABLE ONLY public.cartitems DROP CONSTRAINT cartitems_customcakeid_fkey;
       public               postgres    false    224    4818    222            �           2606    24726 "   cartitems cartitems_productid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.cartitems
    ADD CONSTRAINT cartitems_productid_fkey FOREIGN KEY (productid) REFERENCES public.inventory(productid);
 L   ALTER TABLE ONLY public.cartitems DROP CONSTRAINT cartitems_productid_fkey;
       public               postgres    false    230    4826    222            �           2606    24830    customize_cake customeremail_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.customize_cake
    ADD CONSTRAINT customeremail_fk FOREIGN KEY (customeremail) REFERENCES public.customeruser(customeremail) NOT VALID;
 I   ALTER TABLE ONLY public.customize_cake DROP CONSTRAINT customeremail_fk;
       public               postgres    false    224    226    4820                       2606    24825 $   customize_cake_layer customizecakeid    FK CONSTRAINT     �   ALTER TABLE ONLY public.customize_cake_layer
    ADD CONSTRAINT customizecakeid FOREIGN KEY (customizecakeid) REFERENCES public.customize_cake(customizecakeid);
 N   ALTER TABLE ONLY public.customize_cake_layer DROP CONSTRAINT customizecakeid;
       public               postgres    false    224    242    4818            �           2606    24731 <   delivery_assignments delivery_assignments_deliveryemail_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.delivery_assignments
    ADD CONSTRAINT delivery_assignments_deliveryemail_fkey FOREIGN KEY (deliveryemail) REFERENCES public.deliveryuser(deliveryemail) ON DELETE CASCADE;
 f   ALTER TABLE ONLY public.delivery_assignments DROP CONSTRAINT delivery_assignments_deliveryemail_fkey;
       public               postgres    false    229    227    4824            �           2606    24736 6   delivery_assignments delivery_assignments_orderid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.delivery_assignments
    ADD CONSTRAINT delivery_assignments_orderid_fkey FOREIGN KEY (orderid) REFERENCES public.orders(orderid) ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.delivery_assignments DROP CONSTRAINT delivery_assignments_orderid_fkey;
       public               postgres    false    227    4832    234            �           2606    24741    orders fk_orders_deliveryuser    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT fk_orders_deliveryuser FOREIGN KEY (deliveryemail) REFERENCES public.deliveryuser(deliveryemail);
 G   ALTER TABLE ONLY public.orders DROP CONSTRAINT fk_orders_deliveryuser;
       public               postgres    false    4824    229    234                       2606    25131    otp order_id_fk    FK CONSTRAINT        ALTER TABLE ONLY public.otp
    ADD CONSTRAINT order_id_fk FOREIGN KEY (order_id) REFERENCES public.orders(orderid) NOT VALID;
 9   ALTER TABLE ONLY public.otp DROP CONSTRAINT order_id_fk;
       public               postgres    false    248    234    4832            �           2606    24746 '   orderitems orderitems_customcakeid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.orderitems
    ADD CONSTRAINT orderitems_customcakeid_fkey FOREIGN KEY (customcakeid) REFERENCES public.customize_cake(customizecakeid);
 Q   ALTER TABLE ONLY public.orderitems DROP CONSTRAINT orderitems_customcakeid_fkey;
       public               postgres    false    232    224    4818            �           2606    24751 "   orderitems orderitems_orderid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.orderitems
    ADD CONSTRAINT orderitems_orderid_fkey FOREIGN KEY (orderid) REFERENCES public.orders(orderid);
 L   ALTER TABLE ONLY public.orderitems DROP CONSTRAINT orderitems_orderid_fkey;
       public               postgres    false    234    4832    232            �           2606    24756 $   orderitems orderitems_productid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.orderitems
    ADD CONSTRAINT orderitems_productid_fkey FOREIGN KEY (productid) REFERENCES public.inventory(productid);
 N   ALTER TABLE ONLY public.orderitems DROP CONSTRAINT orderitems_productid_fkey;
       public               postgres    false    230    232    4826            �           2606    24761     orders orders_customeremail_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_customeremail_fkey FOREIGN KEY (customeremail) REFERENCES public.customeruser(customeremail);
 J   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_customeremail_fkey;
       public               postgres    false    226    4820    234            �           2606    24766    payment payment_orderid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.payment
    ADD CONSTRAINT payment_orderid_fkey FOREIGN KEY (orderid) REFERENCES public.orders(orderid);
 F   ALTER TABLE ONLY public.payment DROP CONSTRAINT payment_orderid_fkey;
       public               postgres    false    236    234    4832                        2606    24771     review review_customeremail_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.review
    ADD CONSTRAINT review_customeremail_fkey FOREIGN KEY (customeremail) REFERENCES public.customeruser(customeremail);
 J   ALTER TABLE ONLY public.review DROP CONSTRAINT review_customeremail_fkey;
       public               postgres    false    4820    238    226                       2606    24876    review review_productid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.review
    ADD CONSTRAINT review_productid_fkey FOREIGN KEY (productid) REFERENCES public.inventory(productid) NOT VALID;
 F   ALTER TABLE ONLY public.review DROP CONSTRAINT review_productid_fkey;
       public               postgres    false    238    4826    230            �   +   x�KL���sHN�N-��Oq���s9�����bC#c�=... A��      �   �   x����
�@��w�b ��\eQ� h�U�1:�}��ڜ�8��m��*A�oԍ�b.Q������o�&���X��߼��;����kAKm��i�*sif�0�[�6+Q�C��������������}�������c��D{      �      x������ � �      �   9   x�3�,I,�KM�����H�MMqH�M���K���2��M���/M�K�OID������ YwM      �      x���4���41�BSc=�=... 5��      �      x������ � �      �   �  x���]s�J���_�wn�f����1�$�� �I�� �� a@b~�����^le������}�g^�R.ҘQ�߈��(�2r���	�ni�@�H�DQ5�e�sc8d4�b�e�1hˆ���ڂ��� I�@x������)��+)O���,�)~��tQ�����,cL��p��E�g&��O�����%�pA]`#�Y�R��/�����Z�����.�a7��B���BK���t٭n%�[��������|Z�;�s�"Ъ�V���Y�u� ��/X��$"QUd�m*PJ�_��~��A�T,����]�e��9���gUYc�Mnճ��.�n-�G��ނ�a@�,㠹"��E�i�rz�w�zj��E�誮t�,�ϟg>���9���]��ɳIʳ-�,́��4��/KzG��u���������.��~u��A+�id$22�$UB
���,z����<�z(�E�g�3���^9������.��>T��u�P��$^��E=�/�������*����I?�
'�_d�;~�<�MA�@��U���c�8���*8�f�6�%)�#u.)@�5U!XF�u���%�|�o.@�u���D�J���n�����\~�dW�n�ۭT�ޠ�,���4ep�-��!I��wc�V,��׉5^n��`�_�����fN�绹{8��@�����,Ncp��K�]'����7��z�R��o���7���}dP��      �     x��ԻN�0���y
�#+v�4�Y*�,]�lSG��+'A�ۓ	1Ъ��Ϸ#s"t�3����:�<����+��(�w0�%2ϳ����� �a����9 _����k�m�!Y8wcUGUۨ��q��0"7dbΚ�^�"j=���S�s���������~�;c������~�p0THڼ�8�N�3}l�`5��铷�ݴ^1�|V$g�����ٍ"ez�Z����bя��{)�zs��,�L��ܳ,�>�h#�      �   0  x����j�0E��W��J~omh �R�n��`�(v���}�T����t�=cK�8{Z-*�E�%�i�s�M�٣^�5	g���,iΨ�Ͱv�uz�����|Rh��&���������_�_D��h�k�j�xs�������qq���roz�\�{�*�k�:�M��P��f�!8y�S��H��bu�!�k�`������÷i{������|��W�#���E�[�p�K���Z���9�ϯ�T� �3*>#�*� �K*�$�+*�"�k*�&�*���s���Ic'����4v^�$��q��      �   D   x�3������K�OuHN�N-��OI��,2���s9����+0�2!����#��Ģ���T\*b���� T:�      �   w   x�+N,J���IMuHN�N-��OI��,2���s9���A*8!�Oj*����������%��������������������������1WV~F�^J>nc��
8��K>�P�������� ex2~      �   �  x��W�r�6]�_�]ŇHQ�L���q�8M�M�Ng2 	�� �@�ʪ�����^��('M��k<��{��hY�\
jyAk�W���{�Ȓ����j�s��ӄ�axLV��V�$ɵ��q7UZ����TcR
��~0����%5�Մ\-x��DWrW��b[F�c*�����0ť"�=�-�d��$F��Q�^zє�y�'�$�.���2��羟���4��I.7~SI#�(S?����~�z�
��ڋ�h.��a4&�6��tt�
�-3d�ݐeŘf�?ܺAKȎ���*��ɹ��RR;�wy�"��s�3H�r��(Y?�(@�����b���lA{�"L�i|����)�'w;�5��B�X
&xY�U+�>N�v��)�p!�K��qn��`.���`f�:�ę��{���
���8D� 0�C9iPTcBs��К�p�'BJ�y�.B5i^�^�vn��=u�筀�AhvbF�u�d[�b>��A����la���,���>��ďf��41¦�i�X���n��� �>{�<�Z��!�5
�
S�U�Ҏ�n�1�2�e�IT���K���0pe�a	%��\%�gh����߆���ECo%M�=
�jwQ�2���x�C?��=��g^���t���ѽ�ϩ W��Kd�0:�K�l���K9>Q�؂8ruLW�Ī4Q�hl��8��G8a0��Kś�RϫGF=4�QT����y��d���i�;�k	�b��lf+��>����k"8:e]���Tr�����p�@�w��QI��}��Iv[*�<�|���+˓�)���@�©�>�^�jf���i4M�Af���+��4��M���f/���%\���Z�W��cP�Ωjd��.`�:56k�?%�0�Pb�'�Sp�(Na��\4z&Z���=UF��w|��[^�o��68��R�����h�.������5h]�dX����*���X3� �˰y����b�O�.h��3{�%x,)�s�{ �Oň��3��*�]���#�1޿4=��$�,�$�M{@��%(bRJY
�j�r	�6ߔ~��F���у�/�n������\��]k�����o��>�����|�\{�/}�a�����MP�W��v��ͻ7�����:~�6o^��o�Ho]ߚ�(��pu���Y�Wѷ/_7+�><��R���Y�ԁz\�/��U�[���Z�:��o��%r��R^grG�p�5�òm�7_���#w�O,Ͷ%؂�(�a7,_c`�Čjp�k��5tw����4v=iZՈc+6~�t���-�t�b�Iᡶ#�o-ϬfT�mof�W���M�k[:�}�ڮ�դ���ˌ�c���Ѷ�Q�Cf�M����K��fV45��E%>z�ڣ�2���	W��1V\Ю7~�d��&��}��+�Zv�@^��w���Ʌ�vL��`G>*��{o�A(�:ql��͟���RՇE�k!��h�q��ݢ���.Hp%'�ޕ,�����~�j�����t��������^mj���҂?�j��hW���Ǆ��ƀ�q�ʞ2P2�Rм���q����pT�D(��-and#Fڂk���{v%���7�N�]��N=×��=:��a|��Զ���q�l3ð�rk��c�w�E�j��;2k�T���S�4��S�i��T�V`0����O��!�ervv���      �     x����N�0E��+�P�~~�O�L0���b�����I��=���Ԃ`�d�w�l�//|�i	��6�8�uN�c^
�҇;?�s#�a����������΁����9�:��XR�i%q%�t��:Kİ񣟸�%���ՙVZu�ENU�↴�����V'� q�$��p3�[��X��( �q��ďAR8�:i�@c�O�FꔥdU��̰��v8��8Z-u��o+�Vw�r�+��W���8)����Ӕ�8"�a%�'�� ��=      �   Q   x�U���0C�f��OH;E'��s�$�Ԋ�3l08惎h��d�q�V\GE��R��Q<K�:���p1X�o�&��U9����'�      �   �   x���Mn�0��s�\ ���/�Eץ@�F�%�8F ��mRTU���F���Q���B��:��]�"�lS�ԍЦ���!���6���XF2�(��S��r�t�!�JʊT���y$P�k���D�|���9?��3w0���T`P��p��[�z���V����G�����nq4�� TIs�����4<���Џ���%�W�K	MSSM3a�7<��U��/�*��0�� Y�n&6P�q�:      �   �   x�u�KNC1�q�*�@-��x�
XA'��h�Ԗ��2jtz�|te*�?����n��6������F���5	�*����כR�ZjS�e��p�_��}��+�y��l�V!��}kʴ\y�X��9=�o�\��Z�F+�UI5)`F�q��,���R�$
�̜���
����[X��<�S.      �   M   x�}ʱ�0�ڞ�b�����,�?�G4W]Z��_	��������h��0|�R��:]&#掅5�~��?�D�      �   }  x�mSMS�0=ï��ы�8U�e���S:���
+dLB���M�(�F�/o�{���Q�X"T�t6	�w�)/�xNQ]'W��	��s}+��ԕH)4���� �S�a\�L0�������2-��.�P��G�
�iو;�S�`@�B�zȼΰg���,�D3'�}���b�`�ЊD[�.J��V�g�y?�fx1�����Qګ
#��cz�#�n@��R-���<�g㥕�098	;o$%5�-ρkO����)@�wP=���j��1_���n�$+i��q6b	�=�;L�X�ƋfGh� Qy����b!��o����w)5C�d��+�Pb�+���;�hc{J�i3}�@�,xjI���WT;o��8��m�D2�      �   �   x�}�1�0@�99E/P+��6��AXD�n$RnHx��A#�4�I�r���8W5��#�#�ĝ��b��̣%CF�>C}�e��6B`,6�����h�{L�1�!����=�$m�u�9�:�q�0f�O�e�d�`�}��:,      �   )   x�w�q��u54�44�30�
��u24�44qc���� ��^     