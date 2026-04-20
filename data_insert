-- POPOLAMENTO DATI TARGET MARKETS
INSERT INTO target_markets (nome_paese, dimensione_mercato_pmi, costo_energia_kwh, indice_burocrazia) VALUES 
('Austria', 350000, 0.190, 3.6),
('Belgio', 1000000, 0.220, 4.2),
('Bulgaria', 350000, 0.130, 6.0),
('Cipro', 60000, 0.250, 4.8),
('Croazia', 150000, 0.180, 5.8),
('Danimarca', 200000, 0.140, 1.8),
('Estonia', 80000, 0.150, 2.2),
('Finlandia', 250000, 0.110, 2.0),
('Francia', 3100000, 0.180, 4.5),
('Germania', 3200000, 0.210, 3.8),
('Grecia', 700000, 0.230, 6.2),
('Irlanda', 250000, 0.240, 2.8),
('Italia', 4300000, 0.260, 6.8),
('Lettonia', 100000, 0.170, 3.0),
('Lituania', 200000, 0.190, 2.7),
('Lussemburgo', 40000, 0.160, 3.2),
('Malta', 30000, 0.210, 4.5),
('Paesi Bassi', 1200000, 0.200, 2.6),
('Polonia', 2200000, 0.150, 5.2),
('Portogallo', 900000, 0.150, 5.0),
('Repubblica Ceca', 1000000, 0.170, 4.0),
('Romania', 500000, 0.170, 5.5),
('Slovacchia', 400000, 0.160, 4.6),
('Slovenia', 130000, 0.180, 4.2),
('Spagna', 2900000, 0.160, 4.8),
('Svezia', 1100000, 0.090, 2.1),
('Ungheria', 600000, 0.180, 5.4);

-- POPOLAMENTO TABELLE (Incentivi e Strategie per la Top 3)
INSERT INTO incentivi_locali (id_incentivo, id_paese, nome_paese, nome_programma, tipo_beneficio) VALUES
-- GERMANIA (ID 10)
(1, 10, 'Germania', 'ZIM - Programma Innovazione PMI', 'Fondo perduto per R&D fino al 45%'),
(2, 10, 'Germania', 'KfW Energieeffizienz', 'Finanziamento a tasso agevolato per efficienza energetica'),

-- ITALIA (ID 13)
(3, 13, 'Italia', 'Piano Transizione 5.0', 'Credito d''imposta fino al 45% per investimenti green/digitali'),
(4, 13, 'Italia', 'Bando Nuova Sabatini', 'Contributo in conto impianti per beni strumentali'),

-- FRANCIA (ID 9)
(5, 9, 'Francia', 'Crédit d''Impôt Recherche (CIR)', 'Sgravio fiscale del 30% sulle spese di ricerca'),
(6, 9, 'Francia', 'BPI France Innov''Up', 'Sovvenzione fino a 500.000€ per sviluppo prototipi');

INSERT INTO strategie_marketing (id_paese, nome_paese, messaggio_chiave, canale_prioritario, valore_differenziante) VALUES
-- GERMANIA
(10, 'Germania', 'Soluzioni per l''Industria 4.0: massima efficienza e integrazione rapida.', 'Fiere di settore (es. Hannover Messe) e LinkedIn Ads', 'Standard qualitativi elevati e conformità alle normative DIN.'),

-- ITALIA
(13, 'Italia', 'Abbattimento dei costi operativi e semplificazione della gestione quotidiana.', 'Associazioni di categoria (Confindustria/CNA) e Webinar', 'Supporto locale incluso e assistenza per l''accesso ai bandi statali.'),

-- FRANCIA
(9, 'Francia', 'Tecnologia all''avanguardia per scalare il tuo business nel mercato europeo.', 'Hub tecnologici (es. Station F) e Digital PR', 'Interfaccia intuitiva e piattaforma altamente personalizzabile.');
