CREATE DATABASE IF NOT EXISTS nexura_expansion;
USE nexura_expansion;

-- DROP DI VISTE E TABELLE (Ordine rigoroso per evitare conflitti)
DROP VIEW IF EXISTS view_score_1_10;
DROP TABLE IF EXISTS incentivi_locali;
DROP TABLE IF EXISTS strategie_marketing;
DROP TABLE IF EXISTS partner_chiave;
DROP TABLE IF EXISTS target_markets;

-- CREAZIONE DELLE TABELLE
CREATE TABLE target_markets (
    id_paese INT PRIMARY KEY AUTO_INCREMENT,
    nome_paese VARCHAR(50) NOT NULL,
    dimensione_mercato_pmi INT, 
    costo_energia_kwh DECIMAL(5,3),
    indice_burocrazia DECIMAL(4,2),
    -- Score grezzo calcolato solo sulle variabili della singola istanza
    score_attrattivita DECIMAL(12,4) GENERATED ALWAYS AS (
        ROUND(((dimensione_mercato_pmi / 10000.0) * (costo_energia_kwh * 100.0)) / NULLIF(indice_burocrazia, 0), 4)
    ) STORED
);

CREATE TABLE incentivi_locali (
    id_incentivo INT PRIMARY KEY AUTO_INCREMENT,
    id_paese INT,
    nome_paese VARCHAR(50), 
    nome_programma VARCHAR(100),
    tipo_beneficio VARCHAR(100), 
    FOREIGN KEY (id_paese) REFERENCES target_markets(id_paese)
);

CREATE TABLE strategie_marketing (
    id_paese INT PRIMARY KEY,
    nome_paese VARCHAR(50), 
    messaggio_chiave TEXT, 
    canale_prioritario VARCHAR(100), 
    valore_differenziante TEXT, 
    FOREIGN KEY (id_paese) REFERENCES target_markets(id_paese)
);

-- CREAZIONE VISTA PER LA NORMALIZZAZIONE 1-10
CREATE VIEW view_score_1_10 AS
SELECT 
    id_paese,
    nome_paese,
    dimensione_mercato_pmi,
    costo_energia_kwh,
    indice_burocrazia,
    score_attrattivita,
    -- Window Functions per normalizzazione su dominio completo
    ROUND(
        ((score_attrattivita - MIN(score_attrattivita) OVER()) /
        NULLIF(MAX(score_attrattivita) OVER() - MIN(score_attrattivita) OVER(), 0)) * 9 + 1, 
    2) AS score_1_a_10
FROM 
    target_markets;

