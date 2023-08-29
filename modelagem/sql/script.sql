create table dm_game
(
    id     integer generated always as identity
        constraint "DM_Game_pkey"
            primary key,
    nome   varchar(255) not null
        constraint "DM_Game_name_unique"
            unique,
    genero varchar(255) not null
);

create table dm_tempo
(
    id     integer generated always as identity
        primary key,
    ano    integer not null
        constraint dm_tempo_ano_unique
            unique,
    decada integer not null
);

create table dm_local
(
    id   integer generated always as identity
        primary key,
    nome varchar(255) not null
        constraint dm_local_nome_unique
            unique
);

create table dm_plataforma
(
    id      integer generated always as identity
        primary key,
    nome    varchar(255)
        constraint dm_plataforma_nome_unique
            unique,
    geracao integer not null
);

create table dm_distribuidora
(
    id   integer generated always as identity
        primary key,
    nome varchar(255) not null
        constraint dm_distribuidora_unique
            unique
);

create table fato_lancamento
(
    game_id          integer not null
        constraint fk_game
            references dm_game,
    tempo_id         integer not null
        constraint fk_tempo
            references dm_tempo,
    plataforma_id    integer not null
        constraint fk_plataforma
            references dm_plataforma,
    distribuidora_id integer not null
        constraint fk_distribuidora
            references dm_distribuidora,
    local_id         integer not null
        constraint fk_local
            references dm_local,
    vendas           numeric not null,
    constraint fato_lancamento_pk
        primary key (game_id, tempo_id, plataforma_id, distribuidora_id, local_id)
);

