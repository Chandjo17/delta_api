PGDMP              
            y           delta    10.18    10.18 %   ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            ?           1262    16393    delta    DATABASE     ?   CREATE DATABASE delta WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'French_France.1252' LC_CTYPE = 'French_France.1252';
    DROP DATABASE delta;
             postgres    false            ?           0    0    DATABASE delta    COMMENT     @   COMMENT ON DATABASE delta IS 'Gestion de debours et Documents';
                  postgres    false    3211                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            ?           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12924    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            ?           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            ?            1259    16394    billet_avion    TABLE     m  CREATE TABLE public.billet_avion (
    id integer NOT NULL,
    num_bc character varying(20),
    date_bc date,
    id_pers integer NOT NULL,
    date_depart date,
    date_retour date,
    monnaie integer,
    lieu_depart character varying(50) NOT NULL,
    lieu_destination character varying(50),
    montant_ttc numeric(14,2),
    id_mission integer NOT NULL
);
     DROP TABLE public.billet_avion;
       public         postgres    false    3            ?            1259    16397    billet_avion_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.billet_avion_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.billet_avion_id_seq;
       public       postgres    false    196    3            ?           0    0    billet_avion_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.billet_avion_id_seq OWNED BY public.billet_avion.id;
            public       postgres    false    197            ?            1259    16399    client    TABLE       CREATE TABLE public.client (
    id integer NOT NULL,
    code character varying(20) NOT NULL,
    nom_client character varying(150) NOT NULL,
    adresse character varying(100),
    telephone character varying(25),
    fax character varying(25),
    email character varying(60),
    nif character varying(25),
    stat character varying(30),
    cif character varying(30),
    reg_comm character varying(30),
    groupe_app character varying(10),
    groupe smallint,
    capital numeric(14,2),
    effectif integer
);
    DROP TABLE public.client;
       public         postgres    false    3            ?            1259    16405    client_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.client_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.client_id_seq;
       public       postgres    false    198    3            ?           0    0    client_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.client_id_seq OWNED BY public.client.id;
            public       postgres    false    199            ?            1259    16407    contact_client    TABLE     ?   CREATE TABLE public.contact_client (
    id integer NOT NULL,
    nom character varying(100) NOT NULL,
    fonction character varying(60),
    tel character varying(30),
    email character varying(200),
    id_client integer
);
 "   DROP TABLE public.contact_client;
       public         postgres    false    3            ?            1259    16410    contacte_client_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.contacte_client_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.contacte_client_id_seq;
       public       postgres    false    200    3            ?           0    0    contacte_client_id_seq    SEQUENCE OWNED BY     P   ALTER SEQUENCE public.contacte_client_id_seq OWNED BY public.contact_client.id;
            public       postgres    false    201            ?            1259    16412    contrat    TABLE       CREATE TABLE public.contrat (
    id integer NOT NULL,
    num_contrat character varying(40) NOT NULL,
    date_contrat date NOT NULL,
    id_client integer NOT NULL,
    montant_ht numeric(14,2),
    taux_tva numeric(2,0),
    monnaie integer,
    date_debut date,
    date_fin date
);
    DROP TABLE public.contrat;
       public         postgres    false    3            ?            1259    16415    contrat_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.contrat_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.contrat_id_seq;
       public       postgres    false    202    3            ?           0    0    contrat_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.contrat_id_seq OWNED BY public.contrat.id;
            public       postgres    false    203            ?            1259    16417    cv_personnel    TABLE     ?   CREATE TABLE public.cv_personnel (
    id integer NOT NULL,
    libelle character varying(150) NOT NULL,
    repertoire character varying(500) NOT NULL,
    id_pers integer NOT NULL
);
     DROP TABLE public.cv_personnel;
       public         postgres    false    3            ?            1259    16423    cv_personnel_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.cv_personnel_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.cv_personnel_id_seq;
       public       postgres    false    204    3            ?           0    0    cv_personnel_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.cv_personnel_id_seq OWNED BY public.cv_personnel.id;
            public       postgres    false    205            ?            1259    16425    debours    TABLE     ?   CREATE TABLE public.debours (
    id integer NOT NULL,
    code character varying(10) NOT NULL,
    libelle character varying(100),
    type_deb smallint,
    nature character varying(20),
    unitaire smallint
);
    DROP TABLE public.debours;
       public         postgres    false    3            ?            1259    16428    debours_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.debours_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.debours_id_seq;
       public       postgres    false    206    3            ?           0    0    debours_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.debours_id_seq OWNED BY public.debours.id;
            public       postgres    false    207            ?            1259    16430    demande_debours    TABLE     ?  CREATE TABLE public.demande_debours (
    id integer NOT NULL,
    num_demande character varying(10) NOT NULL,
    date_demande date NOT NULL,
    id_mission integer NOT NULL,
    id_demandeur integer NOT NULL,
    nombre integer,
    visa smallint,
    date_visa date,
    id_user integer,
    date_paiement date,
    personne_visa integer,
    date_autorisation date,
    personne_permis integer,
    annuler smallint,
    personne_paiement integer
);
 #   DROP TABLE public.demande_debours;
       public         postgres    false    3            ?            1259    16433    demande_debours_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.demande_debours_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.demande_debours_id_seq;
       public       postgres    false    208    3            ?           0    0    demande_debours_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.demande_debours_id_seq OWNED BY public.demande_debours.id;
            public       postgres    false    209            ?            1259    16435    det_demande_debours    TABLE     ?  CREATE TABLE public.det_demande_debours (
    id integer NOT NULL,
    id_debours integer NOT NULL,
    id_pers integer NOT NULL,
    id_demande integer NOT NULL,
    nbre_jours integer,
    nbre_heure integer,
    pu numeric,
    date_debut date,
    date_fin date,
    id_region integer,
    localite character varying(50),
    montant numeric,
    id_grade integer,
    montant_retourne numeric,
    explication character varying(150)
);
 '   DROP TABLE public.det_demande_debours;
       public         postgres    false    3            ?            1259    16441    det_demande_debours_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.det_demande_debours_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.det_demande_debours_id_seq;
       public       postgres    false    3    210            ?           0    0    det_demande_debours_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.det_demande_debours_id_seq OWNED BY public.det_demande_debours.id;
            public       postgres    false    211            ?            1259    16443    detail_feuille_temps    TABLE     1  CREATE TABLE public.detail_feuille_temps (
    id integer NOT NULL,
    id_mission integer NOT NULL,
    libelle character varying(500) NOT NULL,
    id_entete integer NOT NULL,
    id_sous_section integer,
    pourcentage numeric(3,0),
    duree integer,
    id_client integer,
    id_section integer
);
 (   DROP TABLE public.detail_feuille_temps;
       public         postgres    false    3            ?            1259    16449    detail_feuille_temps_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.detail_feuille_temps_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.detail_feuille_temps_id_seq;
       public       postgres    false    212    3            ?           0    0    detail_feuille_temps_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.detail_feuille_temps_id_seq OWNED BY public.detail_feuille_temps.id;
            public       postgres    false    213            ?            1259    16451 	   documents    TABLE       CREATE TABLE public.documents (
    id integer NOT NULL,
    libelle character varying(150) NOT NULL,
    prepare_par integer NOT NULL,
    id_utilisateur integer,
    date_preparation date,
    date_insertion date,
    id_mission integer,
    repertoire character varying(400)
);
    DROP TABLE public.documents;
       public         postgres    false    3            ?            1259    16457    documents_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.documents_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.documents_id_seq;
       public       postgres    false    214    3            ?           0    0    documents_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.documents_id_seq OWNED BY public.documents.id;
            public       postgres    false    215            ?            1259    16459    echeance_paiement    TABLE     .  CREATE TABLE public.echeance_paiement (
    id integer NOT NULL,
    libelle character varying(100),
    pourcentage numeric(5,2),
    date_facture date,
    id_mission integer,
    date_em_facture date,
    num_facture character varying(30),
    montant_facture numeric(14,2),
    date_saisie date
);
 %   DROP TABLE public.echeance_paiement;
       public         postgres    false    3            ?            1259    16462    echeance_paiement_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.echeance_paiement_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.echeance_paiement_id_seq;
       public       postgres    false    3    216            ?           0    0    echeance_paiement_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.echeance_paiement_id_seq OWNED BY public.echeance_paiement.id;
            public       postgres    false    217            ?            1259    16464    entete_feuille_temps    TABLE     ?   CREATE TABLE public.entete_feuille_temps (
    id integer NOT NULL,
    date_feuille date NOT NULL,
    id_pers integer NOT NULL
);
 (   DROP TABLE public.entete_feuille_temps;
       public         postgres    false    3            ?            1259    16467    entete_feuille_temps_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.entete_feuille_temps_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.entete_feuille_temps_id_seq;
       public       postgres    false    3    218            ?           0    0    entete_feuille_temps_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.entete_feuille_temps_id_seq OWNED BY public.entete_feuille_temps.id;
            public       postgres    false    219            ?            1259    16469    grade    TABLE     ?   CREATE TABLE public.grade (
    id integer NOT NULL,
    code character varying(15) NOT NULL,
    libelle character varying(100) NOT NULL,
    rang smallint
);
    DROP TABLE public.grade;
       public         postgres    false    3            ?            1259    16472    grade_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.grade_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.grade_id_seq;
       public       postgres    false    220    3            ?           0    0    grade_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.grade_id_seq OWNED BY public.grade.id;
            public       postgres    false    221            ?            1259    16474    historique_doc    TABLE     ?   CREATE TABLE public.historique_doc (
    id integer NOT NULL,
    type_histoire character varying(100) NOT NULL,
    observation character varying(200),
    id_document integer,
    date_histoire date,
    id_utilisateur integer
);
 "   DROP TABLE public.historique_doc;
       public         postgres    false    3            ?            1259    16477    historique_doc_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.historique_doc_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.historique_doc_id_seq;
       public       postgres    false    222    3            ?           0    0    historique_doc_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.historique_doc_id_seq OWNED BY public.historique_doc.id;
            public       postgres    false    223            ?            1259    16479    mission    TABLE     ?  CREATE TABLE public.mission (
    id integer NOT NULL,
    code character varying(40) NOT NULL,
    libelle character varying(200) NOT NULL,
    associe_resp integer,
    senior_manager integer,
    chef_mission integer,
    montant_ht numeric(14,2),
    tva numeric,
    monnaie integer,
    produit integer,
    date_deb_prevue date,
    date_fin_prevue date,
    cloturer smallint,
    id_contrat integer NOT NULL,
    associate_director integer,
    director integer
);
    DROP TABLE public.mission;
       public         postgres    false    3            ?            1259    16485    mission_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.mission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.mission_id_seq;
       public       postgres    false    224    3            ?           0    0    mission_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.mission_id_seq OWNED BY public.mission.id;
            public       postgres    false    225            ?            1259    16487    monnaie    TABLE     ?   CREATE TABLE public.monnaie (
    id integer NOT NULL,
    code character varying(10) NOT NULL,
    libelle character varying(50) NOT NULL
);
    DROP TABLE public.monnaie;
       public         postgres    false    3            ?            1259    16490    monnaie_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.monnaie_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.monnaie_id_seq;
       public       postgres    false    226    3            ?           0    0    monnaie_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.monnaie_id_seq OWNED BY public.monnaie.id;
            public       postgres    false    227            ?            1259    16492    paiement_facture    TABLE     ?   CREATE TABLE public.paiement_facture (
    id integer NOT NULL,
    montant_payer numeric(14,2),
    date_paiement date,
    id_echeance integer,
    reference_paiement character varying(30),
    mode_paiement character varying(30)
);
 $   DROP TABLE public.paiement_facture;
       public         postgres    false    3            ?            1259    16495    paiement_facture_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.paiement_facture_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.paiement_facture_id_seq;
       public       postgres    false    3    228            ?           0    0    paiement_facture_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.paiement_facture_id_seq OWNED BY public.paiement_facture.id;
            public       postgres    false    229            ?            1259    16497 	   personnel    TABLE     g  CREATE TABLE public.personnel (
    id integer NOT NULL,
    code character varying(10) NOT NULL,
    nom character varying(150) NOT NULL,
    grade integer NOT NULL,
    telephone character varying(30),
    adresse character varying(150),
    matricule character varying(20),
    rang smallint,
    appelation character varying(100),
    date_depart date
);
    DROP TABLE public.personnel;
       public         postgres    false    3            ?            1259    16500    personnel_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.personnel_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.personnel_id_seq;
       public       postgres    false    3    230            ?           0    0    personnel_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.personnel_id_seq OWNED BY public.personnel.id;
            public       postgres    false    231            ?            1259    16502    prev_debours    TABLE     ?   CREATE TABLE public.prev_debours (
    id integer NOT NULL,
    nbre_jours integer NOT NULL,
    id_debours integer NOT NULL,
    id_mission integer NOT NULL,
    pu numeric(14,2),
    unite character varying(15)
);
     DROP TABLE public.prev_debours;
       public         postgres    false    3            ?            1259    16505    prev_debours_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.prev_debours_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.prev_debours_id_seq;
       public       postgres    false    232    3            ?           0    0    prev_debours_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.prev_debours_id_seq OWNED BY public.prev_debours.id;
            public       postgres    false    233            ?            1259    16507    prev_honoraire    TABLE       CREATE TABLE public.prev_honoraire (
    id integer NOT NULL,
    nbre_jour numeric(10,2),
    nbre_heure integer,
    nbre_homme integer,
    pu numeric(14,2),
    grade integer,
    id_mission integer NOT NULL,
    monnaie integer,
    type_unite character varying(20)
);
 "   DROP TABLE public.prev_honoraire;
       public         postgres    false    3            ?            1259    16510    prev_honoraire_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.prev_honoraire_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.prev_honoraire_id_seq;
       public       postgres    false    234    3            ?           0    0    prev_honoraire_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.prev_honoraire_id_seq OWNED BY public.prev_honoraire.id;
            public       postgres    false    235            ?            1259    16512 
   prev_tache    TABLE     ?   CREATE TABLE public.prev_tache (
    id integer NOT NULL,
    grand_tache integer NOT NULL,
    nbre_heure integer NOT NULL,
    id_mission integer NOT NULL
);
    DROP TABLE public.prev_tache;
       public         postgres    false    3            ?            1259    16515    prev_tache_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.prev_tache_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.prev_tache_id_seq;
       public       postgres    false    3    236            ?           0    0    prev_tache_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.prev_tache_id_seq OWNED BY public.prev_tache.id;
            public       postgres    false    237            ?            1259    16517    produit    TABLE     ?   CREATE TABLE public.produit (
    id integer NOT NULL,
    code character varying NOT NULL,
    libelle character varying NOT NULL,
    type_prd integer NOT NULL
);
    DROP TABLE public.produit;
       public         postgres    false    3            ?            1259    16523    produit_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.produit_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.produit_id_seq;
       public       postgres    false    238    3            ?           0    0    produit_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.produit_id_seq OWNED BY public.produit.id;
            public       postgres    false    239            ?            1259    16525    region    TABLE     `   CREATE TABLE public.region (
    id integer NOT NULL,
    libelle character varying NOT NULL
);
    DROP TABLE public.region;
       public         postgres    false    3            ?            1259    16531    region_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.region_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.region_id_seq;
       public       postgres    false    240    3            ?           0    0    region_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.region_id_seq OWNED BY public.region.id;
            public       postgres    false    241            ?            1259    16533    section    TABLE     ?   CREATE TABLE public.section (
    id integer NOT NULL,
    code character varying(10) NOT NULL,
    libelle character varying(150) NOT NULL
);
    DROP TABLE public.section;
       public         postgres    false    3            ?            1259    16536    section_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.section_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.section_id_seq;
       public       postgres    false    3    242            ?           0    0    section_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.section_id_seq OWNED BY public.section.id;
            public       postgres    false    243            ?            1259    16538    sous_section    TABLE     ?   CREATE TABLE public.sous_section (
    id integer NOT NULL,
    code character varying(15) NOT NULL,
    libelle character varying(150) NOT NULL,
    id_section integer NOT NULL,
    ponderation integer
);
     DROP TABLE public.sous_section;
       public         postgres    false    3            ?            1259    16541    sous_section_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.sous_section_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.sous_section_id_seq;
       public       postgres    false    3    244            ?           0    0    sous_section_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.sous_section_id_seq OWNED BY public.sous_section.id;
            public       postgres    false    245            ?            1259    16543 
   sous_tache    TABLE     ?   CREATE TABLE public.sous_tache (
    id integer NOT NULL,
    code character varying(10) NOT NULL,
    libelle character varying(150) NOT NULL,
    grand_tache integer NOT NULL,
    ponderation integer
);
    DROP TABLE public.sous_tache;
       public         postgres    false    3            ?            1259    16546    sous_tache_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.sous_tache_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.sous_tache_id_seq;
       public       postgres    false    246    3            ?           0    0    sous_tache_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.sous_tache_id_seq OWNED BY public.sous_tache.id;
            public       postgres    false    247            ?            1259    16548    tache    TABLE     ?   CREATE TABLE public.tache (
    id integer NOT NULL,
    code character varying(10) NOT NULL,
    libelle character varying(150) NOT NULL
);
    DROP TABLE public.tache;
       public         postgres    false    3            ?            1259    16551    tache_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.tache_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.tache_id_seq;
       public       postgres    false    248    3            ?           0    0    tache_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.tache_id_seq OWNED BY public.tache.id;
            public       postgres    false    249            ?            1259    16553    type_produit    TABLE     ?   CREATE TABLE public.type_produit (
    id integer NOT NULL,
    code character varying(10) NOT NULL,
    libelle character varying(100)
);
     DROP TABLE public.type_produit;
       public         postgres    false    3            ?            1259    16556    type_produit_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.type_produit_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.type_produit_id_seq;
       public       postgres    false    3    250            ?           0    0    type_produit_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.type_produit_id_seq OWNED BY public.type_produit.id;
            public       postgres    false    251            ?            1259    16558    utilisateur_id_seq    SEQUENCE     {   CREATE SEQUENCE public.utilisateur_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.utilisateur_id_seq;
       public       postgres    false    3            ?            1259    16560    utilisateur    TABLE     ?  CREATE TABLE public.utilisateur (
    nom character varying(255) DEFAULT NULL::character varying,
    prenom character varying(255) DEFAULT NULL::character varying,
    email character varying(255) DEFAULT NULL::character varying,
    password character varying(255) DEFAULT NULL::character varying,
    date_creation timestamp(0) without time zone DEFAULT NULL::timestamp without time zone,
    date_modification timestamp(0) without time zone DEFAULT NULL::timestamp without time zone,
    enabled smallint,
    token text,
    roles text,
    id integer DEFAULT nextval('public.utilisateur_id_seq'::regclass) NOT NULL,
    sigle character varying(5),
    envoi_donnees smallint DEFAULT 0 NOT NULL,
    id_pers integer
);
    DROP TABLE public.utilisateur;
       public         postgres    false    252    3                       2604    16574    billet_avion id    DEFAULT     r   ALTER TABLE ONLY public.billet_avion ALTER COLUMN id SET DEFAULT nextval('public.billet_avion_id_seq'::regclass);
 >   ALTER TABLE public.billet_avion ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    197    196                        2604    16575 	   client id    DEFAULT     f   ALTER TABLE ONLY public.client ALTER COLUMN id SET DEFAULT nextval('public.client_id_seq'::regclass);
 8   ALTER TABLE public.client ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    199    198            !           2604    16576    contact_client id    DEFAULT     w   ALTER TABLE ONLY public.contact_client ALTER COLUMN id SET DEFAULT nextval('public.contacte_client_id_seq'::regclass);
 @   ALTER TABLE public.contact_client ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    201    200            "           2604    16577 
   contrat id    DEFAULT     h   ALTER TABLE ONLY public.contrat ALTER COLUMN id SET DEFAULT nextval('public.contrat_id_seq'::regclass);
 9   ALTER TABLE public.contrat ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    203    202            #           2604    16578    cv_personnel id    DEFAULT     r   ALTER TABLE ONLY public.cv_personnel ALTER COLUMN id SET DEFAULT nextval('public.cv_personnel_id_seq'::regclass);
 >   ALTER TABLE public.cv_personnel ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    205    204            $           2604    16579 
   debours id    DEFAULT     h   ALTER TABLE ONLY public.debours ALTER COLUMN id SET DEFAULT nextval('public.debours_id_seq'::regclass);
 9   ALTER TABLE public.debours ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    207    206            %           2604    16580    demande_debours id    DEFAULT     x   ALTER TABLE ONLY public.demande_debours ALTER COLUMN id SET DEFAULT nextval('public.demande_debours_id_seq'::regclass);
 A   ALTER TABLE public.demande_debours ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    209    208            &           2604    16581    det_demande_debours id    DEFAULT     ?   ALTER TABLE ONLY public.det_demande_debours ALTER COLUMN id SET DEFAULT nextval('public.det_demande_debours_id_seq'::regclass);
 E   ALTER TABLE public.det_demande_debours ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    211    210            '           2604    16582    detail_feuille_temps id    DEFAULT     ?   ALTER TABLE ONLY public.detail_feuille_temps ALTER COLUMN id SET DEFAULT nextval('public.detail_feuille_temps_id_seq'::regclass);
 F   ALTER TABLE public.detail_feuille_temps ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    213    212            (           2604    16583    documents id    DEFAULT     l   ALTER TABLE ONLY public.documents ALTER COLUMN id SET DEFAULT nextval('public.documents_id_seq'::regclass);
 ;   ALTER TABLE public.documents ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    215    214            )           2604    16584    echeance_paiement id    DEFAULT     |   ALTER TABLE ONLY public.echeance_paiement ALTER COLUMN id SET DEFAULT nextval('public.echeance_paiement_id_seq'::regclass);
 C   ALTER TABLE public.echeance_paiement ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    217    216            *           2604    16585    entete_feuille_temps id    DEFAULT     ?   ALTER TABLE ONLY public.entete_feuille_temps ALTER COLUMN id SET DEFAULT nextval('public.entete_feuille_temps_id_seq'::regclass);
 F   ALTER TABLE public.entete_feuille_temps ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    219    218            +           2604    16586    grade id    DEFAULT     d   ALTER TABLE ONLY public.grade ALTER COLUMN id SET DEFAULT nextval('public.grade_id_seq'::regclass);
 7   ALTER TABLE public.grade ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    221    220            ,           2604    16587    historique_doc id    DEFAULT     v   ALTER TABLE ONLY public.historique_doc ALTER COLUMN id SET DEFAULT nextval('public.historique_doc_id_seq'::regclass);
 @   ALTER TABLE public.historique_doc ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    223    222            -           2604    16588 
   mission id    DEFAULT     h   ALTER TABLE ONLY public.mission ALTER COLUMN id SET DEFAULT nextval('public.mission_id_seq'::regclass);
 9   ALTER TABLE public.mission ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    225    224            .           2604    16589 
   monnaie id    DEFAULT     h   ALTER TABLE ONLY public.monnaie ALTER COLUMN id SET DEFAULT nextval('public.monnaie_id_seq'::regclass);
 9   ALTER TABLE public.monnaie ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    227    226            /           2604    16590    paiement_facture id    DEFAULT     z   ALTER TABLE ONLY public.paiement_facture ALTER COLUMN id SET DEFAULT nextval('public.paiement_facture_id_seq'::regclass);
 B   ALTER TABLE public.paiement_facture ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    229    228            0           2604    16591    personnel id    DEFAULT     l   ALTER TABLE ONLY public.personnel ALTER COLUMN id SET DEFAULT nextval('public.personnel_id_seq'::regclass);
 ;   ALTER TABLE public.personnel ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    231    230            1           2604    16592    prev_debours id    DEFAULT     r   ALTER TABLE ONLY public.prev_debours ALTER COLUMN id SET DEFAULT nextval('public.prev_debours_id_seq'::regclass);
 >   ALTER TABLE public.prev_debours ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    233    232            2           2604    16593    prev_honoraire id    DEFAULT     v   ALTER TABLE ONLY public.prev_honoraire ALTER COLUMN id SET DEFAULT nextval('public.prev_honoraire_id_seq'::regclass);
 @   ALTER TABLE public.prev_honoraire ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    235    234            3           2604    16594    prev_tache id    DEFAULT     n   ALTER TABLE ONLY public.prev_tache ALTER COLUMN id SET DEFAULT nextval('public.prev_tache_id_seq'::regclass);
 <   ALTER TABLE public.prev_tache ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    237    236            4           2604    16595 
   produit id    DEFAULT     h   ALTER TABLE ONLY public.produit ALTER COLUMN id SET DEFAULT nextval('public.produit_id_seq'::regclass);
 9   ALTER TABLE public.produit ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    239    238            5           2604    16596 	   region id    DEFAULT     f   ALTER TABLE ONLY public.region ALTER COLUMN id SET DEFAULT nextval('public.region_id_seq'::regclass);
 8   ALTER TABLE public.region ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    241    240            6           2604    16597 
   section id    DEFAULT     h   ALTER TABLE ONLY public.section ALTER COLUMN id SET DEFAULT nextval('public.section_id_seq'::regclass);
 9   ALTER TABLE public.section ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    243    242            7           2604    16598    sous_section id    DEFAULT     r   ALTER TABLE ONLY public.sous_section ALTER COLUMN id SET DEFAULT nextval('public.sous_section_id_seq'::regclass);
 >   ALTER TABLE public.sous_section ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    245    244            8           2604    16599    sous_tache id    DEFAULT     n   ALTER TABLE ONLY public.sous_tache ALTER COLUMN id SET DEFAULT nextval('public.sous_tache_id_seq'::regclass);
 <   ALTER TABLE public.sous_tache ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    247    246            9           2604    16600    tache id    DEFAULT     d   ALTER TABLE ONLY public.tache ALTER COLUMN id SET DEFAULT nextval('public.tache_id_seq'::regclass);
 7   ALTER TABLE public.tache ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    249    248            :           2604    16601    type_produit id    DEFAULT     r   ALTER TABLE ONLY public.type_produit ALTER COLUMN id SET DEFAULT nextval('public.type_produit_id_seq'::regclass);
 >   ALTER TABLE public.type_produit ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    251    250            L          0    16394    billet_avion 
   TABLE DATA               ?   COPY public.billet_avion (id, num_bc, date_bc, id_pers, date_depart, date_retour, monnaie, lieu_depart, lieu_destination, montant_ttc, id_mission) FROM stdin;
    public       postgres    false    196   	Z      N          0    16399    client 
   TABLE DATA               ?   COPY public.client (id, code, nom_client, adresse, telephone, fax, email, nif, stat, cif, reg_comm, groupe_app, groupe, capital, effectif) FROM stdin;
    public       postgres    false    198   &Z      P          0    16407    contact_client 
   TABLE DATA               R   COPY public.contact_client (id, nom, fonction, tel, email, id_client) FROM stdin;
    public       postgres    false    200   ?Z      R          0    16412    contrat 
   TABLE DATA               ?   COPY public.contrat (id, num_contrat, date_contrat, id_client, montant_ht, taux_tva, monnaie, date_debut, date_fin) FROM stdin;
    public       postgres    false    202   ?Z      T          0    16417    cv_personnel 
   TABLE DATA               H   COPY public.cv_personnel (id, libelle, repertoire, id_pers) FROM stdin;
    public       postgres    false    204   [      V          0    16425    debours 
   TABLE DATA               P   COPY public.debours (id, code, libelle, type_deb, nature, unitaire) FROM stdin;
    public       postgres    false    206   ,[      X          0    16430    demande_debours 
   TABLE DATA               ?   COPY public.demande_debours (id, num_demande, date_demande, id_mission, id_demandeur, nombre, visa, date_visa, id_user, date_paiement, personne_visa, date_autorisation, personne_permis, annuler, personne_paiement) FROM stdin;
    public       postgres    false    208   i[      Z          0    16435    det_demande_debours 
   TABLE DATA               ?   COPY public.det_demande_debours (id, id_debours, id_pers, id_demande, nbre_jours, nbre_heure, pu, date_debut, date_fin, id_region, localite, montant, id_grade, montant_retourne, explication) FROM stdin;
    public       postgres    false    210   ?[      \          0    16443    detail_feuille_temps 
   TABLE DATA               ?   COPY public.detail_feuille_temps (id, id_mission, libelle, id_entete, id_sous_section, pourcentage, duree, id_client, id_section) FROM stdin;
    public       postgres    false    212   ?[      ^          0    16451 	   documents 
   TABLE DATA               ?   COPY public.documents (id, libelle, prepare_par, id_utilisateur, date_preparation, date_insertion, id_mission, repertoire) FROM stdin;
    public       postgres    false    214   ?[      `          0    16459    echeance_paiement 
   TABLE DATA               ?   COPY public.echeance_paiement (id, libelle, pourcentage, date_facture, id_mission, date_em_facture, num_facture, montant_facture, date_saisie) FROM stdin;
    public       postgres    false    216   ?[      b          0    16464    entete_feuille_temps 
   TABLE DATA               I   COPY public.entete_feuille_temps (id, date_feuille, id_pers) FROM stdin;
    public       postgres    false    218   ?[      d          0    16469    grade 
   TABLE DATA               8   COPY public.grade (id, code, libelle, rang) FROM stdin;
    public       postgres    false    220   &\      f          0    16474    historique_doc 
   TABLE DATA               t   COPY public.historique_doc (id, type_histoire, observation, id_document, date_histoire, id_utilisateur) FROM stdin;
    public       postgres    false    222   m\      h          0    16479    mission 
   TABLE DATA               ?   COPY public.mission (id, code, libelle, associe_resp, senior_manager, chef_mission, montant_ht, tva, monnaie, produit, date_deb_prevue, date_fin_prevue, cloturer, id_contrat, associate_director, director) FROM stdin;
    public       postgres    false    224   ?\      j          0    16487    monnaie 
   TABLE DATA               4   COPY public.monnaie (id, code, libelle) FROM stdin;
    public       postgres    false    226   ?\      l          0    16492    paiement_facture 
   TABLE DATA               |   COPY public.paiement_facture (id, montant_payer, date_paiement, id_echeance, reference_paiement, mode_paiement) FROM stdin;
    public       postgres    false    228   <]      n          0    16497 	   personnel 
   TABLE DATA               w   COPY public.personnel (id, code, nom, grade, telephone, adresse, matricule, rang, appelation, date_depart) FROM stdin;
    public       postgres    false    230   Y]      p          0    16502    prev_debours 
   TABLE DATA               Y   COPY public.prev_debours (id, nbre_jours, id_debours, id_mission, pu, unite) FROM stdin;
    public       postgres    false    232   ?]      r          0    16507    prev_honoraire 
   TABLE DATA               {   COPY public.prev_honoraire (id, nbre_jour, nbre_heure, nbre_homme, pu, grade, id_mission, monnaie, type_unite) FROM stdin;
    public       postgres    false    234   ?]      t          0    16512 
   prev_tache 
   TABLE DATA               M   COPY public.prev_tache (id, grand_tache, nbre_heure, id_mission) FROM stdin;
    public       postgres    false    236   ?]      v          0    16517    produit 
   TABLE DATA               >   COPY public.produit (id, code, libelle, type_prd) FROM stdin;
    public       postgres    false    238   ^      x          0    16525    region 
   TABLE DATA               -   COPY public.region (id, libelle) FROM stdin;
    public       postgres    false    240   ?^      z          0    16533    section 
   TABLE DATA               4   COPY public.section (id, code, libelle) FROM stdin;
    public       postgres    false    242   ?^      |          0    16538    sous_section 
   TABLE DATA               R   COPY public.sous_section (id, code, libelle, id_section, ponderation) FROM stdin;
    public       postgres    false    244   ?^      ~          0    16543 
   sous_tache 
   TABLE DATA               Q   COPY public.sous_tache (id, code, libelle, grand_tache, ponderation) FROM stdin;
    public       postgres    false    246   x_      ?          0    16548    tache 
   TABLE DATA               2   COPY public.tache (id, code, libelle) FROM stdin;
    public       postgres    false    248   `      ?          0    16553    type_produit 
   TABLE DATA               9   COPY public.type_produit (id, code, libelle) FROM stdin;
    public       postgres    false    250   m`      ?          0    16560    utilisateur 
   TABLE DATA               ?   COPY public.utilisateur (nom, prenom, email, password, date_creation, date_modification, enabled, token, roles, id, sigle, envoi_donnees, id_pers) FROM stdin;
    public       postgres    false    253   ?`      ?           0    0    billet_avion_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.billet_avion_id_seq', 1, false);
            public       postgres    false    197            ?           0    0    client_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.client_id_seq', 24, true);
            public       postgres    false    199            ?           0    0    contacte_client_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.contacte_client_id_seq', 1, false);
            public       postgres    false    201            ?           0    0    contrat_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.contrat_id_seq', 3, true);
            public       postgres    false    203            ?           0    0    cv_personnel_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.cv_personnel_id_seq', 1, false);
            public       postgres    false    205            ?           0    0    debours_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.debours_id_seq', 9, true);
            public       postgres    false    207            ?           0    0    demande_debours_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.demande_debours_id_seq', 1, false);
            public       postgres    false    209            ?           0    0    det_demande_debours_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.det_demande_debours_id_seq', 1, false);
            public       postgres    false    211            ?           0    0    detail_feuille_temps_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.detail_feuille_temps_id_seq', 13, true);
            public       postgres    false    213            ?           0    0    documents_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.documents_id_seq', 1, false);
            public       postgres    false    215            ?           0    0    echeance_paiement_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.echeance_paiement_id_seq', 1, false);
            public       postgres    false    217            ?           0    0    entete_feuille_temps_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.entete_feuille_temps_id_seq', 17, true);
            public       postgres    false    219            ?           0    0    grade_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.grade_id_seq', 2, true);
            public       postgres    false    221            ?           0    0    historique_doc_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.historique_doc_id_seq', 1, false);
            public       postgres    false    223            ?           0    0    mission_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.mission_id_seq', 3, true);
            public       postgres    false    225            ?           0    0    monnaie_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.monnaie_id_seq', 3, true);
            public       postgres    false    227            ?           0    0    paiement_facture_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.paiement_facture_id_seq', 1, false);
            public       postgres    false    229            ?           0    0    personnel_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.personnel_id_seq', 4, true);
            public       postgres    false    231            ?           0    0    prev_debours_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.prev_debours_id_seq', 1, false);
            public       postgres    false    233            ?           0    0    prev_honoraire_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.prev_honoraire_id_seq', 1, false);
            public       postgres    false    235            ?           0    0    prev_tache_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.prev_tache_id_seq', 1, false);
            public       postgres    false    237            ?           0    0    produit_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.produit_id_seq', 6, true);
            public       postgres    false    239            ?           0    0    region_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.region_id_seq', 1, false);
            public       postgres    false    241            ?           0    0    section_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.section_id_seq', 1, true);
            public       postgres    false    243            ?           0    0    sous_section_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.sous_section_id_seq', 3, true);
            public       postgres    false    245            ?           0    0    sous_tache_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.sous_tache_id_seq', 5, true);
            public       postgres    false    247            ?           0    0    tache_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.tache_id_seq', 2, true);
            public       postgres    false    249            ?           0    0    type_produit_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.type_produit_id_seq', 6, true);
            public       postgres    false    251            ?           0    0    utilisateur_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.utilisateur_id_seq', 2, true);
            public       postgres    false    252            D           2606    16603    billet_avion billet_avion_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.billet_avion
    ADD CONSTRAINT billet_avion_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.billet_avion DROP CONSTRAINT billet_avion_pkey;
       public         postgres    false    196            H           2606    16605    client client_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.client
    ADD CONSTRAINT client_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.client DROP CONSTRAINT client_pkey;
       public         postgres    false    198            J           2606    16607    client code_cl 
   CONSTRAINT     I   ALTER TABLE ONLY public.client
    ADD CONSTRAINT code_cl UNIQUE (code);
 8   ALTER TABLE ONLY public.client DROP CONSTRAINT code_cl;
       public         postgres    false    198            ?           2606    16609    produit code_prd 
   CONSTRAINT     K   ALTER TABLE ONLY public.produit
    ADD CONSTRAINT code_prd UNIQUE (code);
 :   ALTER TABLE ONLY public.produit DROP CONSTRAINT code_prd;
       public         postgres    false    238            ?           2606    16611    personnel codepers 
   CONSTRAINT     M   ALTER TABLE ONLY public.personnel
    ADD CONSTRAINT codepers UNIQUE (code);
 <   ALTER TABLE ONLY public.personnel DROP CONSTRAINT codepers;
       public         postgres    false    230            L           2606    16613 #   contact_client contacte_client_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.contact_client
    ADD CONSTRAINT contacte_client_pkey PRIMARY KEY (id);
 M   ALTER TABLE ONLY public.contact_client DROP CONSTRAINT contacte_client_pkey;
       public         postgres    false    200            O           2606    16615    contrat contrat_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.contrat
    ADD CONSTRAINT contrat_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.contrat DROP CONSTRAINT contrat_pkey;
       public         postgres    false    202            Q           2606    16617    contrat contrat_unique 
   CONSTRAINT     X   ALTER TABLE ONLY public.contrat
    ADD CONSTRAINT contrat_unique UNIQUE (num_contrat);
 @   ALTER TABLE ONLY public.contrat DROP CONSTRAINT contrat_unique;
       public         postgres    false    202            T           2606    16619    cv_personnel cv_personnel_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.cv_personnel
    ADD CONSTRAINT cv_personnel_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.cv_personnel DROP CONSTRAINT cv_personnel_pkey;
       public         postgres    false    204            W           2606    16621    debours debours_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.debours
    ADD CONSTRAINT debours_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.debours DROP CONSTRAINT debours_pkey;
       public         postgres    false    206            Y           2606    16623 $   demande_debours demande_debours_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.demande_debours
    ADD CONSTRAINT demande_debours_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.demande_debours DROP CONSTRAINT demande_debours_pkey;
       public         postgres    false    208            a           2606    16625 ,   det_demande_debours det_demande_debours_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.det_demande_debours
    ADD CONSTRAINT det_demande_debours_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.det_demande_debours DROP CONSTRAINT det_demande_debours_pkey;
       public         postgres    false    210            f           2606    16627 .   detail_feuille_temps detail_feuille_temps_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.detail_feuille_temps
    ADD CONSTRAINT detail_feuille_temps_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.detail_feuille_temps DROP CONSTRAINT detail_feuille_temps_pkey;
       public         postgres    false    212            m           2606    16629    documents documents_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.documents
    ADD CONSTRAINT documents_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.documents DROP CONSTRAINT documents_pkey;
       public         postgres    false    214            o           2606    16631 (   echeance_paiement echeance_paiement_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.echeance_paiement
    ADD CONSTRAINT echeance_paiement_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.echeance_paiement DROP CONSTRAINT echeance_paiement_pkey;
       public         postgres    false    216            r           2606    16633 .   entete_feuille_temps entete_feuille_temps_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.entete_feuille_temps
    ADD CONSTRAINT entete_feuille_temps_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.entete_feuille_temps DROP CONSTRAINT entete_feuille_temps_pkey;
       public         postgres    false    218            u           2606    16635    grade grade_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.grade
    ADD CONSTRAINT grade_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.grade DROP CONSTRAINT grade_pkey;
       public         postgres    false    220            w           2606    16637 "   historique_doc historique_doc_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.historique_doc
    ADD CONSTRAINT historique_doc_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.historique_doc DROP CONSTRAINT historique_doc_pkey;
       public         postgres    false    222            ?           2606    16639    mission mission_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.mission
    ADD CONSTRAINT mission_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.mission DROP CONSTRAINT mission_pkey;
       public         postgres    false    224            ?           2606    16641    monnaie monnaie_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.monnaie
    ADD CONSTRAINT monnaie_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.monnaie DROP CONSTRAINT monnaie_pkey;
       public         postgres    false    226            ?           2606    16643 &   paiement_facture paiement_facture_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.paiement_facture
    ADD CONSTRAINT paiement_facture_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.paiement_facture DROP CONSTRAINT paiement_facture_pkey;
       public         postgres    false    228            ?           2606    16645    personnel personnel_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.personnel
    ADD CONSTRAINT personnel_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.personnel DROP CONSTRAINT personnel_pkey;
       public         postgres    false    230            ?           2606    16647    prev_debours prev_debours_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.prev_debours
    ADD CONSTRAINT prev_debours_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.prev_debours DROP CONSTRAINT prev_debours_pkey;
       public         postgres    false    232            ?           2606    16649 "   prev_honoraire prev_honoraire_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.prev_honoraire
    ADD CONSTRAINT prev_honoraire_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.prev_honoraire DROP CONSTRAINT prev_honoraire_pkey;
       public         postgres    false    234            ?           2606    16651    produit produit_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.produit
    ADD CONSTRAINT produit_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.produit DROP CONSTRAINT produit_pkey;
       public         postgres    false    238            ?           2606    16653    region region_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.region
    ADD CONSTRAINT region_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.region DROP CONSTRAINT region_pkey;
       public         postgres    false    240            ?           2606    16655    section section_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.section
    ADD CONSTRAINT section_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.section DROP CONSTRAINT section_pkey;
       public         postgres    false    242            ?           2606    16657    sous_section sous_section_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.sous_section
    ADD CONSTRAINT sous_section_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.sous_section DROP CONSTRAINT sous_section_pkey;
       public         postgres    false    244            ?           2606    16659    sous_tache sous_tache_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.sous_tache
    ADD CONSTRAINT sous_tache_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.sous_tache DROP CONSTRAINT sous_tache_pkey;
       public         postgres    false    246            ?           2606    16661    tache tache_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.tache
    ADD CONSTRAINT tache_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.tache DROP CONSTRAINT tache_pkey;
       public         postgres    false    248            ?           2606    16663    type_produit type_produit_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.type_produit
    ADD CONSTRAINT type_produit_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.type_produit DROP CONSTRAINT type_produit_pkey;
       public         postgres    false    250            ?           2606    16665    utilisateur utilisateur_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.utilisateur
    ADD CONSTRAINT utilisateur_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.utilisateur DROP CONSTRAINT utilisateur_pkey;
       public         postgres    false    253            x           1259    16666    fki_fk_associate_dir    INDEX     V   CREATE INDEX fki_fk_associate_dir ON public.mission USING btree (associate_director);
 (   DROP INDEX public.fki_fk_associate_dir;
       public         postgres    false    224            y           1259    16667    fki_fk_associe    INDEX     J   CREATE INDEX fki_fk_associe ON public.mission USING btree (associe_resp);
 "   DROP INDEX public.fki_fk_associe;
       public         postgres    false    224            E           1259    16668    fki_fk_avion_miss    INDEX     P   CREATE INDEX fki_fk_avion_miss ON public.billet_avion USING btree (id_mission);
 %   DROP INDEX public.fki_fk_avion_miss;
       public         postgres    false    196            F           1259    16669    fki_fk_avion_pers    INDEX     M   CREATE INDEX fki_fk_avion_pers ON public.billet_avion USING btree (id_pers);
 %   DROP INDEX public.fki_fk_avion_pers;
       public         postgres    false    196            z           1259    16670    fki_fk_chef    INDEX     G   CREATE INDEX fki_fk_chef ON public.mission USING btree (chef_mission);
    DROP INDEX public.fki_fk_chef;
       public         postgres    false    224            R           1259    16671    fki_fk_clcontrat    INDEX     I   CREATE INDEX fki_fk_clcontrat ON public.contrat USING btree (id_client);
 $   DROP INDEX public.fki_fk_clcontrat;
       public         postgres    false    202            M           1259    16672    fki_fk_client_contact    INDEX     U   CREATE INDEX fki_fk_client_contact ON public.contact_client USING btree (id_client);
 )   DROP INDEX public.fki_fk_client_contact;
       public         postgres    false    200            {           1259    16673    fki_fk_contrat_mission    INDEX     P   CREATE INDEX fki_fk_contrat_mission ON public.mission USING btree (id_contrat);
 *   DROP INDEX public.fki_fk_contrat_mission;
       public         postgres    false    224            U           1259    16674 	   fki_fk_cv    INDEX     E   CREATE INDEX fki_fk_cv ON public.cv_personnel USING btree (id_pers);
    DROP INDEX public.fki_fk_cv;
       public         postgres    false    204            b           1259    16675    fki_fk_debours    INDEX     T   CREATE INDEX fki_fk_debours ON public.det_demande_debours USING btree (id_debours);
 "   DROP INDEX public.fki_fk_debours;
       public         postgres    false    210            Z           1259    16676    fki_fk_demandeur    INDEX     T   CREATE INDEX fki_fk_demandeur ON public.demande_debours USING btree (id_demandeur);
 $   DROP INDEX public.fki_fk_demandeur;
       public         postgres    false    208            |           1259    16677    fki_fk_director    INDEX     G   CREATE INDEX fki_fk_director ON public.mission USING btree (director);
 #   DROP INDEX public.fki_fk_director;
       public         postgres    false    224            ?           1259    16678    fki_fk_echeance    INDEX     S   CREATE INDEX fki_fk_echeance ON public.paiement_facture USING btree (id_echeance);
 #   DROP INDEX public.fki_fk_echeance;
       public         postgres    false    228            p           1259    16679    fki_fk_echeance_mission    INDEX     [   CREATE INDEX fki_fk_echeance_mission ON public.echeance_paiement USING btree (id_mission);
 +   DROP INDEX public.fki_fk_echeance_mission;
       public         postgres    false    216            g           1259    16680    fki_fk_entete_detail    INDEX     Z   CREATE INDEX fki_fk_entete_detail ON public.detail_feuille_temps USING btree (id_entete);
 (   DROP INDEX public.fki_fk_entete_detail;
       public         postgres    false    212            s           1259    16681    fki_fk_entete_pers    INDEX     V   CREATE INDEX fki_fk_entete_pers ON public.entete_feuille_temps USING btree (id_pers);
 &   DROP INDEX public.fki_fk_entete_pers;
       public         postgres    false    218            h           1259    16682    fki_fk_feuille_mission    INDEX     ]   CREATE INDEX fki_fk_feuille_mission ON public.detail_feuille_temps USING btree (id_mission);
 *   DROP INDEX public.fki_fk_feuille_mission;
       public         postgres    false    212            ?           1259    16683    fki_fk_grade_hon    INDEX     L   CREATE INDEX fki_fk_grade_hon ON public.prev_honoraire USING btree (grade);
 $   DROP INDEX public.fki_fk_grade_hon;
       public         postgres    false    234            ?           1259    16684    fki_fk_grandt_mission    INDEX     S   CREATE INDEX fki_fk_grandt_mission ON public.prev_tache USING btree (grand_tache);
 )   DROP INDEX public.fki_fk_grandt_mission;
       public         postgres    false    236            ?           1259    16685    fki_fk_honoraire_miss    INDEX     V   CREATE INDEX fki_fk_honoraire_miss ON public.prev_honoraire USING btree (id_mission);
 )   DROP INDEX public.fki_fk_honoraire_miss;
       public         postgres    false    234            ?           1259    16686    fki_fk_honoraire_monnaie    INDEX     V   CREATE INDEX fki_fk_honoraire_monnaie ON public.prev_honoraire USING btree (monnaie);
 ,   DROP INDEX public.fki_fk_honoraire_monnaie;
       public         postgres    false    234            [           1259    16687    fki_fk_mission    INDEX     P   CREATE INDEX fki_fk_mission ON public.demande_debours USING btree (id_mission);
 "   DROP INDEX public.fki_fk_mission;
       public         postgres    false    208            ?           1259    16688    fki_fk_mission_prevu    INDEX     S   CREATE INDEX fki_fk_mission_prevu ON public.prev_debours USING btree (id_mission);
 (   DROP INDEX public.fki_fk_mission_prevu;
       public         postgres    false    232            }           1259    16689    fki_fk_monnaie    INDEX     E   CREATE INDEX fki_fk_monnaie ON public.mission USING btree (monnaie);
 "   DROP INDEX public.fki_fk_monnaie;
       public         postgres    false    224            \           1259    16690    fki_fk_permis    INDEX     T   CREATE INDEX fki_fk_permis ON public.demande_debours USING btree (personne_permis);
 !   DROP INDEX public.fki_fk_permis;
       public         postgres    false    208            c           1259    16691    fki_fk_pers    INDEX     N   CREATE INDEX fki_fk_pers ON public.det_demande_debours USING btree (id_pers);
    DROP INDEX public.fki_fk_pers;
       public         postgres    false    210            ]           1259    16692    fki_fk_pers_paiement    INDEX     ]   CREATE INDEX fki_fk_pers_paiement ON public.demande_debours USING btree (personne_paiement);
 (   DROP INDEX public.fki_fk_pers_paiement;
       public         postgres    false    208            ~           1259    16693    fki_fk_produit    INDEX     E   CREATE INDEX fki_fk_produit ON public.mission USING btree (produit);
 "   DROP INDEX public.fki_fk_produit;
       public         postgres    false    224            d           1259    16694    fki_fk_region    INDEX     R   CREATE INDEX fki_fk_region ON public.det_demande_debours USING btree (id_region);
 !   DROP INDEX public.fki_fk_region;
       public         postgres    false    210            ?           1259    16695    fki_fk_section    INDEX     M   CREATE INDEX fki_fk_section ON public.sous_section USING btree (id_section);
 "   DROP INDEX public.fki_fk_section;
       public         postgres    false    244                       1259    16696    fki_fk_senior    INDEX     K   CREATE INDEX fki_fk_senior ON public.mission USING btree (senior_manager);
 !   DROP INDEX public.fki_fk_senior;
       public         postgres    false    224            i           1259    16697    fki_fk_soustache    INDEX     \   CREATE INDEX fki_fk_soustache ON public.detail_feuille_temps USING btree (id_sous_section);
 $   DROP INDEX public.fki_fk_soustache;
       public         postgres    false    212            ?           1259    16698    fki_fk_tache    INDEX     J   CREATE INDEX fki_fk_tache ON public.sous_tache USING btree (grand_tache);
     DROP INDEX public.fki_fk_tache;
       public         postgres    false    246            ?           1259    16699    fki_fk_type_prd    INDEX     G   CREATE INDEX fki_fk_type_prd ON public.produit USING btree (type_prd);
 #   DROP INDEX public.fki_fk_type_prd;
       public         postgres    false    238            ^           1259    16700    fki_fk_user    INDEX     J   CREATE INDEX fki_fk_user ON public.demande_debours USING btree (id_user);
    DROP INDEX public.fki_fk_user;
       public         postgres    false    208            ?           1259    16701    fki_fk_user_pers    INDEX     K   CREATE INDEX fki_fk_user_pers ON public.utilisateur USING btree (id_pers);
 $   DROP INDEX public.fki_fk_user_pers;
       public         postgres    false    253            _           1259    16702    fki_fk_visa    INDEX     P   CREATE INDEX fki_fk_visa ON public.demande_debours USING btree (personne_visa);
    DROP INDEX public.fki_fk_visa;
       public         postgres    false    208            j           1259    16703    fki_id_client_to_detail_feuille    INDEX     e   CREATE INDEX fki_id_client_to_detail_feuille ON public.detail_feuille_temps USING btree (id_client);
 3   DROP INDEX public.fki_id_client_to_detail_feuille;
       public         postgres    false    212            k           1259    16704    fki_id_section_detail_feuille    INDEX     d   CREATE INDEX fki_id_section_detail_feuille ON public.detail_feuille_temps USING btree (id_section);
 1   DROP INDEX public.fki_id_section_detail_feuille;
       public         postgres    false    212            ?           2606    16705    mission fk_associate_dir    FK CONSTRAINT     ?   ALTER TABLE ONLY public.mission
    ADD CONSTRAINT fk_associate_dir FOREIGN KEY (associate_director) REFERENCES public.personnel(id) ON DELETE RESTRICT;
 B   ALTER TABLE ONLY public.mission DROP CONSTRAINT fk_associate_dir;
       public       postgres    false    224    230    2954            ?           2606    16710    mission fk_associe    FK CONSTRAINT     z   ALTER TABLE ONLY public.mission
    ADD CONSTRAINT fk_associe FOREIGN KEY (associe_resp) REFERENCES public.personnel(id);
 <   ALTER TABLE ONLY public.mission DROP CONSTRAINT fk_associe;
       public       postgres    false    230    2954    224            ?           2606    16715    billet_avion fk_avion_miss    FK CONSTRAINT     ?   ALTER TABLE ONLY public.billet_avion
    ADD CONSTRAINT fk_avion_miss FOREIGN KEY (id_mission) REFERENCES public.mission(id) ON DELETE RESTRICT;
 D   ALTER TABLE ONLY public.billet_avion DROP CONSTRAINT fk_avion_miss;
       public       postgres    false    224    2945    196            ?           2606    16720    billet_avion fk_avion_pers    FK CONSTRAINT     ?   ALTER TABLE ONLY public.billet_avion
    ADD CONSTRAINT fk_avion_pers FOREIGN KEY (id_pers) REFERENCES public.personnel(id) ON DELETE RESTRICT;
 D   ALTER TABLE ONLY public.billet_avion DROP CONSTRAINT fk_avion_pers;
       public       postgres    false    230    2954    196            ?           2606    16725    mission fk_chef    FK CONSTRAINT     ?   ALTER TABLE ONLY public.mission
    ADD CONSTRAINT fk_chef FOREIGN KEY (chef_mission) REFERENCES public.personnel(id) ON DELETE RESTRICT;
 9   ALTER TABLE ONLY public.mission DROP CONSTRAINT fk_chef;
       public       postgres    false    224    230    2954            ?           2606    16730    contrat fk_clcontrat    FK CONSTRAINT     v   ALTER TABLE ONLY public.contrat
    ADD CONSTRAINT fk_clcontrat FOREIGN KEY (id_client) REFERENCES public.client(id);
 >   ALTER TABLE ONLY public.contrat DROP CONSTRAINT fk_clcontrat;
       public       postgres    false    198    202    2888            ?           2606    16735     contact_client fk_client_contact    FK CONSTRAINT     ?   ALTER TABLE ONLY public.contact_client
    ADD CONSTRAINT fk_client_contact FOREIGN KEY (id_client) REFERENCES public.client(id) ON DELETE RESTRICT;
 J   ALTER TABLE ONLY public.contact_client DROP CONSTRAINT fk_client_contact;
       public       postgres    false    198    2888    200            ?           2606    16740    mission fk_contrat_mission    FK CONSTRAINT     ?   ALTER TABLE ONLY public.mission
    ADD CONSTRAINT fk_contrat_mission FOREIGN KEY (id_contrat) REFERENCES public.contrat(id) ON DELETE RESTRICT;
 D   ALTER TABLE ONLY public.mission DROP CONSTRAINT fk_contrat_mission;
       public       postgres    false    2895    224    202            ?           2606    16745    cv_personnel fk_cv    FK CONSTRAINT     ?   ALTER TABLE ONLY public.cv_personnel
    ADD CONSTRAINT fk_cv FOREIGN KEY (id_pers) REFERENCES public.personnel(id) ON DELETE RESTRICT;
 <   ALTER TABLE ONLY public.cv_personnel DROP CONSTRAINT fk_cv;
       public       postgres    false    204    2954    230            ?           2606    16750    det_demande_debours fk_debours    FK CONSTRAINT     ?   ALTER TABLE ONLY public.det_demande_debours
    ADD CONSTRAINT fk_debours FOREIGN KEY (id_debours) REFERENCES public.debours(id) ON DELETE RESTRICT;
 H   ALTER TABLE ONLY public.det_demande_debours DROP CONSTRAINT fk_debours;
       public       postgres    false    210    2903    206            ?           2606    16755    demande_debours fk_demandeur    FK CONSTRAINT     ?   ALTER TABLE ONLY public.demande_debours
    ADD CONSTRAINT fk_demandeur FOREIGN KEY (id_demandeur) REFERENCES public.personnel(id) ON DELETE RESTRICT;
 F   ALTER TABLE ONLY public.demande_debours DROP CONSTRAINT fk_demandeur;
       public       postgres    false    230    208    2954            ?           2606    16760    mission fk_director    FK CONSTRAINT     ?   ALTER TABLE ONLY public.mission
    ADD CONSTRAINT fk_director FOREIGN KEY (director) REFERENCES public.personnel(id) ON DELETE RESTRICT;
 =   ALTER TABLE ONLY public.mission DROP CONSTRAINT fk_director;
       public       postgres    false    230    2954    224            ?           2606    16765    paiement_facture fk_echeance    FK CONSTRAINT     ?   ALTER TABLE ONLY public.paiement_facture
    ADD CONSTRAINT fk_echeance FOREIGN KEY (id_echeance) REFERENCES public.echeance_paiement(id) ON DELETE RESTRICT;
 F   ALTER TABLE ONLY public.paiement_facture DROP CONSTRAINT fk_echeance;
       public       postgres    false    216    228    2927            ?           2606    16770 %   echeance_paiement fk_echeance_mission    FK CONSTRAINT     ?   ALTER TABLE ONLY public.echeance_paiement
    ADD CONSTRAINT fk_echeance_mission FOREIGN KEY (id_mission) REFERENCES public.mission(id) ON DELETE RESTRICT;
 O   ALTER TABLE ONLY public.echeance_paiement DROP CONSTRAINT fk_echeance_mission;
       public       postgres    false    224    216    2945            ?           2606    16775 %   detail_feuille_temps fk_entete_detail    FK CONSTRAINT     ?   ALTER TABLE ONLY public.detail_feuille_temps
    ADD CONSTRAINT fk_entete_detail FOREIGN KEY (id_entete) REFERENCES public.entete_feuille_temps(id) ON DELETE RESTRICT;
 O   ALTER TABLE ONLY public.detail_feuille_temps DROP CONSTRAINT fk_entete_detail;
       public       postgres    false    2930    218    212            ?           2606    16780 #   entete_feuille_temps fk_entete_pers    FK CONSTRAINT     ?   ALTER TABLE ONLY public.entete_feuille_temps
    ADD CONSTRAINT fk_entete_pers FOREIGN KEY (id_pers) REFERENCES public.personnel(id) ON DELETE RESTRICT;
 M   ALTER TABLE ONLY public.entete_feuille_temps DROP CONSTRAINT fk_entete_pers;
       public       postgres    false    230    218    2954            ?           2606    16785 '   detail_feuille_temps fk_feuille_mission    FK CONSTRAINT     ?   ALTER TABLE ONLY public.detail_feuille_temps
    ADD CONSTRAINT fk_feuille_mission FOREIGN KEY (id_mission) REFERENCES public.mission(id) ON DELETE RESTRICT;
 Q   ALTER TABLE ONLY public.detail_feuille_temps DROP CONSTRAINT fk_feuille_mission;
       public       postgres    false    212    224    2945            ?           2606    16790    prev_honoraire fk_grade_hon    FK CONSTRAINT     ?   ALTER TABLE ONLY public.prev_honoraire
    ADD CONSTRAINT fk_grade_hon FOREIGN KEY (grade) REFERENCES public.grade(id) ON DELETE RESTRICT;
 E   ALTER TABLE ONLY public.prev_honoraire DROP CONSTRAINT fk_grade_hon;
       public       postgres    false    2933    234    220            ?           2606    16795    prev_tache fk_grandt_mission    FK CONSTRAINT     ?   ALTER TABLE ONLY public.prev_tache
    ADD CONSTRAINT fk_grandt_mission FOREIGN KEY (grand_tache) REFERENCES public.tache(id) ON DELETE RESTRICT;
 F   ALTER TABLE ONLY public.prev_tache DROP CONSTRAINT fk_grandt_mission;
       public       postgres    false    236    2980    248            ?           2606    16800     prev_honoraire fk_honoraire_miss    FK CONSTRAINT     ?   ALTER TABLE ONLY public.prev_honoraire
    ADD CONSTRAINT fk_honoraire_miss FOREIGN KEY (id_mission) REFERENCES public.mission(id) ON DELETE RESTRICT;
 J   ALTER TABLE ONLY public.prev_honoraire DROP CONSTRAINT fk_honoraire_miss;
       public       postgres    false    2945    224    234            ?           2606    16805 #   prev_honoraire fk_honoraire_monnaie    FK CONSTRAINT     ?   ALTER TABLE ONLY public.prev_honoraire
    ADD CONSTRAINT fk_honoraire_monnaie FOREIGN KEY (monnaie) REFERENCES public.monnaie(id) ON DELETE RESTRICT;
 M   ALTER TABLE ONLY public.prev_honoraire DROP CONSTRAINT fk_honoraire_monnaie;
       public       postgres    false    226    2947    234            ?           2606    16810 '   detail_feuille_temps fk_id_sous_section    FK CONSTRAINT     ?   ALTER TABLE ONLY public.detail_feuille_temps
    ADD CONSTRAINT fk_id_sous_section FOREIGN KEY (id_sous_section) REFERENCES public.sous_section(id);
 Q   ALTER TABLE ONLY public.detail_feuille_temps DROP CONSTRAINT fk_id_sous_section;
       public       postgres    false    212    2975    244            ?           2606    16815    demande_debours fk_mission    FK CONSTRAINT     ?   ALTER TABLE ONLY public.demande_debours
    ADD CONSTRAINT fk_mission FOREIGN KEY (id_mission) REFERENCES public.mission(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 D   ALTER TABLE ONLY public.demande_debours DROP CONSTRAINT fk_mission;
       public       postgres    false    2945    208    224            ?           2606    16820    prev_debours fk_mission    FK CONSTRAINT     ?   ALTER TABLE ONLY public.prev_debours
    ADD CONSTRAINT fk_mission FOREIGN KEY (id_mission) REFERENCES public.mission(id) ON DELETE RESTRICT;
 A   ALTER TABLE ONLY public.prev_debours DROP CONSTRAINT fk_mission;
       public       postgres    false    2945    232    224            ?           2606    16825    prev_debours fk_mission_prevu    FK CONSTRAINT     ?   ALTER TABLE ONLY public.prev_debours
    ADD CONSTRAINT fk_mission_prevu FOREIGN KEY (id_mission) REFERENCES public.mission(id) ON DELETE RESTRICT;
 G   ALTER TABLE ONLY public.prev_debours DROP CONSTRAINT fk_mission_prevu;
       public       postgres    false    232    224    2945            ?           2606    16830    mission fk_monnaie    FK CONSTRAINT     ?   ALTER TABLE ONLY public.mission
    ADD CONSTRAINT fk_monnaie FOREIGN KEY (monnaie) REFERENCES public.monnaie(id) ON DELETE RESTRICT;
 <   ALTER TABLE ONLY public.mission DROP CONSTRAINT fk_monnaie;
       public       postgres    false    2947    224    226            ?           2606    16835    demande_debours fk_permis    FK CONSTRAINT     ?   ALTER TABLE ONLY public.demande_debours
    ADD CONSTRAINT fk_permis FOREIGN KEY (personne_permis) REFERENCES public.personnel(id) ON DELETE RESTRICT;
 C   ALTER TABLE ONLY public.demande_debours DROP CONSTRAINT fk_permis;
       public       postgres    false    2954    230    208            ?           2606    16840    det_demande_debours fk_pers    FK CONSTRAINT     ?   ALTER TABLE ONLY public.det_demande_debours
    ADD CONSTRAINT fk_pers FOREIGN KEY (id_pers) REFERENCES public.personnel(id) ON DELETE RESTRICT;
 E   ALTER TABLE ONLY public.det_demande_debours DROP CONSTRAINT fk_pers;
       public       postgres    false    210    230    2954            ?           2606    16845     demande_debours fk_pers_paiement    FK CONSTRAINT     ?   ALTER TABLE ONLY public.demande_debours
    ADD CONSTRAINT fk_pers_paiement FOREIGN KEY (personne_paiement) REFERENCES public.personnel(id) ON DELETE RESTRICT;
 J   ALTER TABLE ONLY public.demande_debours DROP CONSTRAINT fk_pers_paiement;
       public       postgres    false    2954    230    208            ?           2606    16850    prev_tache fk_prev_section    FK CONSTRAINT        ALTER TABLE ONLY public.prev_tache
    ADD CONSTRAINT fk_prev_section FOREIGN KEY (grand_tache) REFERENCES public.section(id);
 D   ALTER TABLE ONLY public.prev_tache DROP CONSTRAINT fk_prev_section;
       public       postgres    false    236    242    2972            ?           2606    16855    mission fk_produit    FK CONSTRAINT     ?   ALTER TABLE ONLY public.mission
    ADD CONSTRAINT fk_produit FOREIGN KEY (produit) REFERENCES public.produit(id) ON DELETE RESTRICT;
 <   ALTER TABLE ONLY public.mission DROP CONSTRAINT fk_produit;
       public       postgres    false    2968    224    238            ?           2606    16860    det_demande_debours fk_region    FK CONSTRAINT     ?   ALTER TABLE ONLY public.det_demande_debours
    ADD CONSTRAINT fk_region FOREIGN KEY (id_region) REFERENCES public.region(id) ON DELETE RESTRICT;
 G   ALTER TABLE ONLY public.det_demande_debours DROP CONSTRAINT fk_region;
       public       postgres    false    2970    210    240            ?           2606    16865    sous_section fk_section    FK CONSTRAINT     ?   ALTER TABLE ONLY public.sous_section
    ADD CONSTRAINT fk_section FOREIGN KEY (id_section) REFERENCES public.section(id) ON DELETE RESTRICT;
 A   ALTER TABLE ONLY public.sous_section DROP CONSTRAINT fk_section;
       public       postgres    false    2972    242    244            ?           2606    16870    mission fk_senior    FK CONSTRAINT     ?   ALTER TABLE ONLY public.mission
    ADD CONSTRAINT fk_senior FOREIGN KEY (senior_manager) REFERENCES public.personnel(id) ON DELETE RESTRICT;
 ;   ALTER TABLE ONLY public.mission DROP CONSTRAINT fk_senior;
       public       postgres    false    224    2954    230            ?           2606    16875    sous_tache fk_tache    FK CONSTRAINT     v   ALTER TABLE ONLY public.sous_tache
    ADD CONSTRAINT fk_tache FOREIGN KEY (grand_tache) REFERENCES public.tache(id);
 =   ALTER TABLE ONLY public.sous_tache DROP CONSTRAINT fk_tache;
       public       postgres    false    2980    246    248            ?           2606    16880    produit fk_type_prd    FK CONSTRAINT     z   ALTER TABLE ONLY public.produit
    ADD CONSTRAINT fk_type_prd FOREIGN KEY (type_prd) REFERENCES public.type_produit(id);
 =   ALTER TABLE ONLY public.produit DROP CONSTRAINT fk_type_prd;
       public       postgres    false    238    250    2982            ?           2606    16885    demande_debours fk_user    FK CONSTRAINT     ?   ALTER TABLE ONLY public.demande_debours
    ADD CONSTRAINT fk_user FOREIGN KEY (id_user) REFERENCES public.utilisateur(id) ON DELETE RESTRICT;
 A   ALTER TABLE ONLY public.demande_debours DROP CONSTRAINT fk_user;
       public       postgres    false    208    253    2985            ?           2606    16890    utilisateur fk_user_pers    FK CONSTRAINT     ?   ALTER TABLE ONLY public.utilisateur
    ADD CONSTRAINT fk_user_pers FOREIGN KEY (id_pers) REFERENCES public.personnel(id) ON DELETE RESTRICT;
 B   ALTER TABLE ONLY public.utilisateur DROP CONSTRAINT fk_user_pers;
       public       postgres    false    253    2954    230            ?           2606    16895    demande_debours fk_visa    FK CONSTRAINT     ?   ALTER TABLE ONLY public.demande_debours
    ADD CONSTRAINT fk_visa FOREIGN KEY (personne_visa) REFERENCES public.personnel(id) ON DELETE RESTRICT;
 A   ALTER TABLE ONLY public.demande_debours DROP CONSTRAINT fk_visa;
       public       postgres    false    2954    230    208            ?           2606    16900 -   detail_feuille_temps id_client_detail_feuille    FK CONSTRAINT     ?   ALTER TABLE ONLY public.detail_feuille_temps
    ADD CONSTRAINT id_client_detail_feuille FOREIGN KEY (id_client) REFERENCES public.client(id) ON DELETE RESTRICT;
 W   ALTER TABLE ONLY public.detail_feuille_temps DROP CONSTRAINT id_client_detail_feuille;
       public       postgres    false    212    198    2888            ?           2606    16905 .   detail_feuille_temps id_section_detail_feuille    FK CONSTRAINT     ?   ALTER TABLE ONLY public.detail_feuille_temps
    ADD CONSTRAINT id_section_detail_feuille FOREIGN KEY (id_section) REFERENCES public.section(id) ON DELETE RESTRICT;
 X   ALTER TABLE ONLY public.detail_feuille_temps DROP CONSTRAINT id_section_detail_feuille;
       public       postgres    false    242    2972    212            L      x?????? ? ?      N   f   x?3??p????ut?t???/??K)J???????Å?9]?|!?P??kH0?of^fqIjQ?BbzQfriNIiQ*?????????????)^Sc???? ?%?      P      x?????? ? ?      R   F   x?m???0??.)??
X?t?9HycY???! ?$m8?K??|i?5k(?i??ӓ??v???ǟ????na?      T      x?????? ? ?      V   -   x?3???w???ON,????4?tI-?ILN?M?+????????? ?C
f      X      x?????? ? ?      Z      x?????? ? ?      \      x?????? ? ?      ^      x?????? ? ?      `      x?????? ? ?      b      x?3?4202?5??52?4?????? #?      d   7   x?3?t?t,.?O?<???Ӑˈ3??-?385/3?H?71/1=??ӈ+F??? Tb      f      x?????? ? ?      h   U   x?3?4000?52?50?t,M?,QHI-VH??-(I-?4B??(2D0?!4?!? CG_}#CK?P???`??(?+F??? .)       j   =   x?3??uw?t?t??2?v?t???I,*Vp?M-?LN???2?t?t--??????? }C      l      x?????? ? ?      n   U   x?3?00??JM?Sp?I,MI?4?406V04R051S0????CF\?@???E??yy
?)??y??@-&
??
F?@l??%F??? ??      p      x?????? ? ?      r      x?????? ? ?      t      x?????? ? ?      v   f   x?3?tu????J-+MU????,9??Ӑ˘???9?3?SW?9?77??8?(3?D!??B!9???$?X?L!1??ӈ?d????ciJf	H}ANj	А=... ???      x      x?????? ? ?      z   .   x?3?4000?t,M?,QHI-V????O???,N,???+?????? ?'}      |   ?   x?3?4000?50?;??(3-39?$3?O!?T?8?'%U!?Q???ҲԢ??" /U!(?Z?Z?????i?i?e5????Ĥ???R??b??????̜?b?t1X?1T?1gX*?V????????L??=... ?:i      ~   }   x?=?A?0??+?D@<??????,Ţ8%v?OZ	.+??3??D?t7?y???9cu?b-???h??&?"6??6)\?i??0?u5,?(??DV???k???JU^?????]??n?w??C???23?      ?   X   x?3??H,N??u??,?VH,.N-.?M?+?u?(J?????K,?THL.?,?,?L-?2??q????X??Y?P???????????? ??"}      ?   ^   x??1?  ??}/?h?8?????X#??|?:w??F	TZ+e?{??<k????(gOoT^>uqzJ?8?uf9`a?ы?/??g?????]      ?   1  x?uϻNC1?9?){???OX7Q	?t(['N?@?T`B?;A00?bY?,?ߔ??<]??zy}?I???v&Ϫ?fS??[???݆?O?y?Bk??7lGK?-?9??4??4h?????C?&D??3P??+??4Ag-lZA]Z??ހ????1[K??<(???_????7g????B?Z????0??4?>[?)?ϻ?x?V??_??w?????Q?_??L?44f@?x??[M?h0?ʹ?C?????@Y?LTr???&$?j?>???X??'BG?????'D??#??B3??a??]xv     