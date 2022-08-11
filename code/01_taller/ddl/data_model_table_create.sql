CREATE TABLE public.persona (
    pe_id BIGSERIAL NOT NULL,
    pe_nombre CHARACTER VARYING NOT NULL,
    pe_apellido CHARACTER VARYING NOT NULL,
    pe_tipo_persona CHARACTER VARYING NOT NULL,
    pe_ciudad bigint NOT NULL,
    PRIMARY KEY (pe_id)
);

CREATE INDEX ON public.persona
    (pe_ciudad);


CREATE TABLE public.ciudad (
    ci_id BIGSERIAL NOT NULL,
    ci_nombre CHARACTER VARYING NOT NULL,
    PRIMARY KEY (ci_id)
);

