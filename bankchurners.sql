-- Table: public.bankchurners

-- DROP TABLE IF EXISTS public.bankchurners;

CREATE TABLE IF NOT EXISTS public.bankchurners
(
    clientnum integer NOT NULL DEFAULT nextval('bankchurners_clientnum_seq'::regclass),
    attrition_flag character varying(50) COLLATE pg_catalog."default",
    customer_age integer,
    gender character(1) COLLATE pg_catalog."default",
    dependent_count integer,
    education_level character varying(30) COLLATE pg_catalog."default",
    marital_status character varying(30) COLLATE pg_catalog."default",
    income_category character varying(20) COLLATE pg_catalog."default",
    card_category character varying(10) COLLATE pg_catalog."default",
    months_on_book integer,
    total_relationship_count double precision,
    months_inactive_12_mon integer,
    contacts_count_12_mon integer,
    credit_limit double precision,
    total_revolving_bal double precision,
    avg_open_to_buy money,
    total_amt_chng_q4_q1 double precision,
    total_trans_amt double precision,
    total_trans_ct double precision,
    total_ct_chng_q4_q1 double precision,
    avg_utilization_ratio double precision,
    total_contact_depends1 double precision,
    total_contact_depends2 double precision,
    CONSTRAINT bankchurners_pkey PRIMARY KEY (clientnum)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.bankchurners
    OWNER to postgres;